Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73199EDC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717221863; cv=none; b=Fo9vRl53cpfpWLqnQz1okwyklO3Qj1Dvo1bAKhcvEnSSoZWHUgQwgQbix1rKLY+NAF0ZWRe+yWS+FDPuZHlsFqHQnNHf/Q74BJYNmQ72+889kczWodyESMN/vZvVMsPPBuvy9Fm8vTcd4cQLZ00K0KyMkpsdQXB3qHQ+bHqdISU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717221863; c=relaxed/simple;
	bh=m5pUom0hcYujJHIreYwFTKqkTgUwMsh3Ngbh9BrM2GI=;
	h=To:Subject:From:Message-Id:Date; b=IbotxOt1smX98uDPDCgpsElNAlrG+kAfeuVz+5D1+sqySkLaa9o1Jz4nvNLtUhiH3TtRmPdrS30o9QgmdVIdmM6NUhZlh8+jeiyBkIsB7CpcGkAgSBDcnAGQxqOflQ7OnuRy84xXz/vqgEK6X17bAtT2iv63WANm0+x7ph65jgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6+U67Mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6+U67Mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C7DC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717221862;
	bh=m5pUom0hcYujJHIreYwFTKqkTgUwMsh3Ngbh9BrM2GI=;
	h=To:Subject:From:Date:From;
	b=R6+U67MnqlQ3KKNyI54Gn4SsUQ+9k6841cJs9Mbbe4vpWWO5TKV/dQNIIe7QQVAbh
	 VKW/QH5s/spFlMBdIxGfN2mX5NGGzUJHzzC4EudKzbUGlbQblKAHv4HLD02ZgxAVzD
	 lVw/zdSMu2TNR6tF1qlyDdoPRZwpO4mEnF9FLB9TCouLFr/lz8BBjNdQsc/T8jGICA
	 wNX9sXfHfPm6dqOul0WWRGiUgcCD1ZnFI+T4+4hNVVc3CAelXbV0CePX8ifPOE8UFI
	 LT/7m/CszUqggoAZ0Zk04IaVA7vPoTBikdQZGxtqChV9Usd2PjKRLMTsRhBGN3W6gu
	 9g5CtdHUcETtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA85FC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722186281.7728.12185077078890869477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f8f19645ef0d1b31e63364405921dbb14e67601ccd2942e1abcd05994ec0ac
Date: Sat, 01 Jun 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717221862
