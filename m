Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9E118E756
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718716163; cv=none; b=RaA/MhlynG+qeN1OueMLxSY7iooKgoCV3kjk9h53d9wmOvVdg+thrJ9PtOjsn36/D5teD5HTftzv/xzTFlRW3bYPTMyOL9dN2J4rTF9Sl9ZpzHdhTx5H3k+mnMPufkPwuiiIf06MvJEE0ahVG4UTS2sYkHYZVDFZSOgVlIlscE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718716163; c=relaxed/simple;
	bh=GIKesbtl5j8ynqxXAZykpGAlJ9pAF8ZU2CIpcn2/8qw=;
	h=To:Subject:From:Message-Id:Date; b=Z82bV4fmqqfXEfn2ECDiAZ4KUg7j5/TbXeFofrEHjrdLBz7z2v6B66gLJsvV73npncUtg2keuSODVPpVYWO7ZCFXxB1NykE3ED7ck26o44eJZUwwvet2jy724JnfgFSrdPLok16rpKIvNLv5sCkd56QHtr+fbp6/4Aq9FF10jGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5oEdmOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5oEdmOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1072C4AF4D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718716162;
	bh=GIKesbtl5j8ynqxXAZykpGAlJ9pAF8ZU2CIpcn2/8qw=;
	h=To:Subject:From:Date:From;
	b=O5oEdmOYqPi5lyCe9FQr0IMxTmigeHgQbNEy4cKF01/nWD4cnWVPyhwyVQmoXQesT
	 OInUg0LCyGupHUq/hfrk5l+QW20lRiTTOs23OdMRu8TXvkLnPG7QAbpuJThE37j4zd
	 wjm3mTP3sMU7M8lMJsCxSirMrvGIwxbH7C4Lsknz3UjQ4VfXee7KeH2cpCyZO+RG/x
	 e77wnsnXKCq+DKunPr/VlviJss50jhNzLl/xk3l7yn+1oNENJSo+42o6ElP0wkfjij
	 knxwn97+2QR/X74C+1bptFwli9bIoonjJ7X9xsWJWIZae0HMt+JdTlUoTNYEEzizfZ
	 o2sbiNg+XBgtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE69DC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871616276.15906.7517292664598198248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd3d0da85f5592f38de0ddc5358c803a8634aee0c9c9a4b722278f684f96aba
Date: Tue, 18 Jun 2024 13:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718716162
