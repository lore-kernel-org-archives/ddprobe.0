Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FA139657B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781385994; cv=none; b=eJU8XMOx5Yg0ackMx7QKTANpyz7iym63GyrOGBJgReLauoTiKo+aTudgFyhliB13bvIdBKH8kB8uepPYv9Ys399JUEF1tT8KGUWgDieFvFzqr3Sux5vXiCkdImYpkOJCeZeyxyEoB8gAY8yBcXgk45Xf9sKGHkV24BzQjkV8tMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781385994; c=relaxed/simple;
	bh=u+QYmViN/1O2fPZyReurOtMi/JfDhvFxSwxC6JFaz1Y=;
	h=To:Subject:From:Message-Id:Date; b=TpLK/TeaXKBvl8/90GfyN17bV628HxTrwPEwsPzDYuu07fEo7fPHHYSW/0Qe0tO3HMzVJSxJuUy/e0Wj8VT2mEHk/Na+VO/trXvO3yThSByYAoHWJBfyf1OyPfopaG6rSaSRMlwkZHTqsaW2/9eNppK+j0jxw+1MC+lnXvtXU4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEU3W72w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEU3W72w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA01EC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781385993;
	bh=u+QYmViN/1O2fPZyReurOtMi/JfDhvFxSwxC6JFaz1Y=;
	h=To:Subject:From:Date:From;
	b=OEU3W72wdUWvIUwjHXFI9UqTJAOOTd1qca4O8jUB9Jbnomoea5i8k6o3a8iGaiw8z
	 zmA9uIBhO/0Q+3Up54p/d0VmnkWQ0mTuqffSaQ57geDZm+W+9c8L7prkqybuQk1GHl
	 zNS0ipf40MqIxEehU2INO1Jq0zquszGVJjdiJSsZTeyZb9a4N68skKgmUnMLxqIVeO
	 14Ar/iZZwXBsk9pkOxoQSa1FTTzH90FAUbDGJ0f50NdJCNyT0cNoc1q8GdvOJdwg/C
	 cYQ4DQokFZ0QUhbYqxmQBjhVOQ2qv5CryBY82RcYPgqeH6hRjavroT5kng4EjqPeKy
	 01cMI4E9YRekA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07A0CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138599370.1411.15583528672516231467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe4e322cfbd8b8ada34b16264c2f827c52d3496f3259ab637fe100c92b90a7e
Date: Sat, 13 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781385993
