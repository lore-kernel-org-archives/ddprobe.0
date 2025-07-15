Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BB32E7F3B
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752586794; cv=none; b=jt6D/4d56hRa5HrI8OU5j49KXoPKfAwLqKXZyqBXnCENQO372HCD7AYtMA9iuuJTUy5RbIITZe5ZkzvdkITBPC/RxAAphyx3YSpIftys2M2idyj4ScaSoRH3LX47El8xh9WWo1Xx1Ha999CNYC9ElpSZvxjvo6aQtf1smbA8sxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752586794; c=relaxed/simple;
	bh=NHHOSaontE9HuLtPfjq99Dvt+pTVWeBQogxGEGGCbYQ=;
	h=To:Subject:From:Message-Id:Date; b=tsH7Hi3h6xGfQW2mTNHYfK3OQ/WLgtSDigctGxAvJiVVOQwMEO9RLKNyi7GQwY5ttDBDkZHEVfi58i+zkhKuMx+Yj/K8WqESEFi/9+1Qpuy6oQgSJAbx8ern3rkYpspj9dk11Of6z62iXiEGeoE1LYSmX/4PTxDrvazueXgqVnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGIx2XFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGIx2XFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6646C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752586793;
	bh=NHHOSaontE9HuLtPfjq99Dvt+pTVWeBQogxGEGGCbYQ=;
	h=To:Subject:From:Date:From;
	b=VGIx2XFJsfGVSM3czq7F+eJStxNV1L4kuDQ+/OIq5Rfr43Vw8xdr+gZyQPfyaYI06
	 f3UxtDaaChmVopNUZkXXv341JNQ6AbU9Hs2frKrDsd0+fdb/JABb/VmlZNnSftwghX
	 oIwbpmVeSEM6InrUGfWocZGw/L0g4MdX9rncjLbP0Ig9eA/OlgREYk2hW2znRSZUlm
	 98VMFQ5Zg9yUbhM1EGe/V+z9nAlk0MJj8HUb99sLKtsjXYrrD2bfRwnGI9H2KwcCOs
	 JgavyFPbLMK7GRV2qOOaVyJgehc309fG4b+qqakLBxZqkpGdSakUsdmpNAMzY2u+Ac
	 XR4ch9lOagUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646CC83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258679360.16378.13691231925649548730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d90ee481cd2942044d62823417e4d18323b76dc869fa04b1ef7fa6ed95de596
Date: Tue, 15 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752586793
