Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D41E12B94
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743751794; cv=none; b=I9C1yD4IakYT5CBNvd4g5HHeDTEin16EB06dTjUpUtec7KqmFgu4KD/u1q1xwGOm9TcsfUum+++0NPykzIoNoNf+cfJh0xCKiPHEa8Nei5LK7FDasTeHLx+K8NVkgbOwxN2l8Dxm1IDrMKALdw5pG36pFVlCpdOcEtjHcgGzu7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743751794; c=relaxed/simple;
	bh=TP45YZUR4ZO42HsPDvW/V43vcpVKIW9XQ0GroiRzOHU=;
	h=To:Subject:From:Message-Id:Date; b=EJFMnbouyA91lI+U0DT7OCvyVHTAR/6Zvsyi7BPOODPGNg18qSSuZCNo06DuNMgIPYfxl6ayUjbxSZ9/lOv7d/RYKTsUj6mfRLJAMqinbdU/ozASRjd7ra6xpjJqRW5fNcweYx0NK5F4z6AakmQGNaBgt00iOsE7nXGA6Vbvu4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUs53Z9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUs53Z9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A8C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743751793;
	bh=TP45YZUR4ZO42HsPDvW/V43vcpVKIW9XQ0GroiRzOHU=;
	h=To:Subject:From:Date:From;
	b=nUs53Z9VNknVAp2f/9sPM7WsZw9c0xvJn91CJXwZMkeZg5QLR7/uA6+D9LVdnmVOL
	 PM8oOcZNFigfw/Yl0BLs67nPkghElMQBnc/lFF7cy5T6qHbVAv2glhjttyRctjI/gn
	 yk58sY9K8bi123Ho7g8Bl+uCrsut7nTibSzLRy2EMeUMRI2UbIrm2dXd5JfltWRt36
	 lZ+1yucif50g4bVC84BkChyhXBZf/RRpyMUQtn8Umd64X+/N5IXt0MTc6IQVCry8/G
	 xfrUI2mFucxqJNrofLbl9XQDPLYEoYDNNCVu8w5ObxCRy4xxuviNdWkuP+P/i6zLyG
	 vUwkNIqVLBfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF93C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375179358.22831.10388769159625839017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ad5294ce08a3d0310a268ae2f42363b393b22e6f292e419702e03e2698ea7f
Date: Fri, 04 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743751793
