Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CFF20DE7
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716680663; cv=none; b=cBxz1gPo6+ThlYPuq5L4xEoUA5pZ/Jc5u6ondB9CPfcssyCfnubuzRk4ei8JOaCjKBrKPCDqRatNJFKAaRez5LeC8G7rs+alooNoR8yK+R14Hqvg7qliMTIYKe4dUGuSNfuzfJRY0MdDfPhuodi/Gg68+5p2HbdL0a/1/F05mLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716680663; c=relaxed/simple;
	bh=MfrjYu7tbGOBFn5dvPdNtQmO+x3PDRvsE9BZp/9h7/8=;
	h=To:Subject:From:Message-Id:Date; b=oOmLgIH7PmwKJ+DLjVjxLyaDMxzOBehLbVhnKeTBmruPKAVuww0za6AAXePnaHlpa+eE9VIjQvlAJ0KbYmcvWLqrVuiC3mLncqNQIGJs+D6JTVVdFMtFoyULa7RhUyNYHQBOMjINfne2lNCv7lERNwS/wCGHWF5FnPwJTpTr2EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJvFSpF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJvFSpF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DBFC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716680662;
	bh=MfrjYu7tbGOBFn5dvPdNtQmO+x3PDRvsE9BZp/9h7/8=;
	h=To:Subject:From:Date:From;
	b=nJvFSpF4/Eg6M/vsTBW6RGdZRbliIyrfh7xtT4EYmmZ8cb5lFZJETA4ztgZvyDZ83
	 J0eJgWMgUl3Hv1UG8IPagjmVZac3oSuI5zeSgPRlc+LCxVZ9jAWbjtkdKzo0nuAQQh
	 e6WKWZv+qj4YRLVdk0l9li5++xp4ylfaI9Gw9owZUGY8iTs4r4Rv1CLmz72O4QI9TY
	 TELi7zTa9hLa41BsK/+lwuab5fLvU+04Qo5PmUq+Z6a/vuoHuhAdtk2v2vTLMh/JdB
	 5ZuZFUl0me6TURvKTDAlk9uZAOBrweexLnKeBIQYEVV3vq1SnAgnWrYtl9N92wjqEO
	 hfHSd8shpZ43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9120C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668066280.15174.5794226093000691917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9ae9b735b7f0c2ef86145f172196fe6c78dfeff59ed9b3e625b7c3c94e41b9
Date: Sat, 25 May 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716680662
