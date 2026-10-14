Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61465569F21
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792003834; cv=none; b=cXrJcPad6AR5P1tq564u7qckOZcFyZLnmyRpCEAk2ThBivZ9y4soNo+s2N5+mp3P7MNa/o+det5H2scKgxY5wyeB0q1Q9MqQ7tD/DzrUrhwc1tUTQ/54wSp7x9CFIoGCLAlqvPK5O9xNuPIoGJjC3+T1546mDAhhapZV6ka/6Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792003834; c=relaxed/simple;
	bh=65POC3slRRVkzZfYPX7r0aHQAGX20GRX0oRS6uS1tfs=;
	h=To:Subject:From:Message-Id:Date; b=qttiIlSSWXEir12eOsSbZw55NM9RldVuzZbKWrOdv4DqeWnbosOfwwHX2TIwAUkbK4ADFdAi7Zd/XW529RsdT5KUxy1jQq+XbylV3rXmnhxi0FL8vDqH01BPJICKwN5IOAAh5nCpUG1bfPdrViJcArNnda31yZEBg8eLmNDNqjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtbFzKsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtbFzKsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF84C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792003833;
	bh=65POC3slRRVkzZfYPX7r0aHQAGX20GRX0oRS6uS1tfs=;
	h=To:Subject:From:Date:From;
	b=ZtbFzKsujYt/TAwK9DUQZ4paKXwAmvclDcJ3x9lJFtxdC9UIf5i9OhbYxDr5dHfAQ
	 aEMK/vVLKAXly+NQ1DajDYAObej9SjHfUgwv/TeC3lULlEkr9pc7XXM7Q2U29M1gUQ
	 eMnjOA7hlrz00XTQY/ASyN2ouwP4xP1yV2a3AuSflNqqeUneELOet/Jq+qDC/sb6Ry
	 TtOrqbrgXWdGldjDwLyyMXFYQ4+oLTgLOsvevFd8Oycpy+UR4ckngwKTMDH5n1pZhr
	 +7jz0WTl/MQRqUtAkLDJlONZ2b6MINWSfzK80+loMTRzhLgBy89IBXbg1dMDVlZoCB
	 zbVKkBE1X5VqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8CCCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200383369.16845.1809207755630478421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf57df15e7456ee11031e964c231fcd2984d472ef026f75487a178aab79b0f0
Date: Wed, 14 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792003833
