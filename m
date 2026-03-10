Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B5F3AD50A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773166494; cv=none; b=Ep528/8BYoV4ZfHmV6sNpEuzKBRcxmMyoZt+hDbOjN9UFj9s6So47svW1QyfN3qNF0RUTDcjywK+/WZ01verOHffrTrBexIiq0mruT5tTCAokDkdjlr42aTvZRbMyqHtb7a76g2reD6lXmEyhqKOFwiaDNknYqXGu5m7vHw6NtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773166494; c=relaxed/simple;
	bh=8K5bN9whErL8dDbG2m4tU27000kKBLduECtTAEDraLI=;
	h=To:Subject:From:Message-Id:Date; b=LEuvWIHYxO5eLgnEK3TUHjZ5n9Gg6u+dSlLXqiN2AvdsKFhzasw2IKXju+Lbn/j+sLoUvZTWEB8PTObETsjsm55msWEXLcQ50sX0AMasFYavopPYYxt3VtYQwZUwfSlV/1dNBSccbjM8JO1h9CEfbMCN2+gXJ5LnESjTO9NOkZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtKxa41n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtKxa41n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A84C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773166493;
	bh=8K5bN9whErL8dDbG2m4tU27000kKBLduECtTAEDraLI=;
	h=To:Subject:From:Date:From;
	b=MtKxa41nl7/DX3jXDucjyM4jqeVKMhH+TUJHw8vlHCzC1CXb9mHQKgED9gygSZQQw
	 weZhjWrMHx4KzrZF6K47QVvBQciBSxnyiRItsmVLQPdTdhYQoou7vH+iFW2xEyz4Wc
	 SRrUq+7TpjDmEawzW/wyuomgrTRWokEUM9gpy+oRg8DkthT0BwMEc6VExHVOf8Yd1v
	 nd+dIPkbH92Jd4a5Ww43rneSwNnYXV9ybWz2wpJp4e6+pPzJ+5G7Qijd7vo8FtlfgX
	 B7c/DHXoeG6rglgl2+t33tnVZ3qBrTRjlFgpl2cI40iBAjgqS/3ApsUJKJ3mXKDyNf
	 eOxCa07MKOACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A0FFD4F17
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316649358.16153.14361488016535863288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3993a222b116be09c72bf5d168c62f11c06827e70f5f8850db7c2a7574b26a
Date: Tue, 10 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773166493
