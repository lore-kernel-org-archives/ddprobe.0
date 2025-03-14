Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D26428DB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741964934; cv=none; b=T9sSZblLplWgJP1YjDZosqURqxth2ubVBOlb0oXfyMzUop7pavOZnRkbvr5EWlTfecSN9pcM/m1ZX4EowCh1MoHLdhG5Wnu4qTLTM7YG8+hCy/9JW6XrAeDIBp0ss+uSzv6UER1tD0BwnugOgXyYW/h7qr/TkzNtCZYAwQhz6PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741964934; c=relaxed/simple;
	bh=deWRV/QCkqJIjzpRm6xqd/1E2UHt/+NMOeC8CLY2ZQI=;
	h=To:Subject:From:Message-Id:Date; b=SXncRPWO69y46v1NfAVtrZPIc5IIzAJTPAcW1Vq1X5ANvesIoSmGwIffBG1Ncz4v14LsCiGcCTZaPHl+SX3YNPO3bJFse1Ygu8/+epNjnc+7TExgOWG5g+beqcjVsiaqHDna0YlcShasGW/nY6UmHFQbRDhfh7lOJJjG/IM+j4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuczINSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuczINSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A986EC4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741964933;
	bh=deWRV/QCkqJIjzpRm6xqd/1E2UHt/+NMOeC8CLY2ZQI=;
	h=To:Subject:From:Date:From;
	b=cuczINSLrLp56hGO6kcZNHf0sOR5o+tL9uDA/p2Fj2Li4cP1dGHEy2SIyWz1PX+K3
	 +CvToaswhRUpkVxMBc7MVZohjFHnzKhI2hpLkPtFl+CL4YvjgD1WM3iOn9+rXRpkZs
	 5hNvWmQHEO/jh/uSgLtRvnsM7SEnauWa7O2Tl/M81lh3nA8YJAk1fYVXRCV5dfa58I
	 0hk3F3sW59GNP2FGpZAJux0RMsb17cOrmFSaFy3tpsuKO+JumEtrpH2/y7/d2EDh+3
	 C/vn7hWz+Jwwn6YB9evUdUWAV5nIpFb0Ldmi7C/J/qYlnxhD8BCq2XdeKyRgtZBtC9
	 s2q3xUHDedong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D28C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196493359.16608.8210501888830229838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930977f48ad87a60f20704b7f0040e3ebd3e5eb4b83904d204e30b2104b11f77
Date: Fri, 14 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741964933
