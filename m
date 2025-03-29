Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6275B3D3B3
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743275395; cv=none; b=omQQ3qTBO6VR67Yfd73XBBBwfGzLMgFG3eOvsv8dek09mcVh9sw09ATipGcnytt93zLMpAI+WoEaP68/cG3tFg8bkj80HHR6EjsahDOdHm4THldSnTy38UK85+LiNJpFTQfsv6fEfK9NUx0fYZ56DT9PGwxMa16hV/cru97HdIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743275395; c=relaxed/simple;
	bh=DXGHQUo/50Wfdz9uCOhtudcmRzk/d+yKoZDSAWHcpZQ=;
	h=To:Subject:From:Message-Id:Date; b=IYUg9I5tatVXW9epEhMyX/chu+JuvyF9Zwa+/EGNCfLrsBvZ6Vq5lxW8CLf3v55X8Dyw/EjVjUfrbAGIgvOHFekhoDTilq9Ezs26cFSZALB/FZdqk19aUlKikN4toLoZufrk9pWGDvSQRgwuYiedVQLwH+BmwkDcDcd/HCPOv2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suhCBP/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suhCBP/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CFAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743275394;
	bh=DXGHQUo/50Wfdz9uCOhtudcmRzk/d+yKoZDSAWHcpZQ=;
	h=To:Subject:From:Date:From;
	b=suhCBP/rXIUkkexY/AkhRKQou+fyy/LDV5qqkduAqIHlGi774w6eEykZ0XH3gDUgb
	 elQsbs6yKfFxmslqW1qUiUKOWq/yYxcFrr83m39+hK/P3PIw5Yx5oErUBUfbJYAazw
	 7FJeMWn4N4zxnjBwn2jn4VPMuEfM4HQNl44uXgV5guaS94+K9O3DQQppfgLMLvjh0K
	 BcSk4ubIGypyDtqmAwTUrchlTpVV2ALqSANPB6VDqz3e6c9T0l5Ul1AEfVKlTHe2r1
	 fIZnj/15mpd3az+fOfGK3WaY1Ygr76y1u2nyHb14RMGhD24V5VspzCniZWRGtC27qi
	 oUMBXOj5mtYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3934C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327539365.32138.10971465515632975767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027fd70b99228153afcabcdda972fbc7e06fde789299cbbf29c34ffd39fa0c2e
Date: Sat, 29 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743275393
