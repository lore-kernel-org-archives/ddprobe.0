Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEDA2D3A98
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752550194; cv=none; b=iA1LS4m3lZUq0/NffVzKf5rwItvsXopGIe7P7w7XzrRll/ZLSJEd1u2j2qn5NAzd+NhOxDEfkrF7lzd+/MObcVC+GBnUI5kaVTw6Sie9grfvyCUnrKANMoNYuMSw3Srmcf7lR0wAXSgHzaAeZkITReDKGivf/to60my9TttsqmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752550194; c=relaxed/simple;
	bh=RhQVGjx8wYqtjuF4dxPPw+UHNdwyfx0x0OCdgXBINV8=;
	h=To:Subject:From:Message-Id:Date; b=Tlyf6vM3RCvOzarJjI9N5pQYEEzxuyxzdYviGU60uJ42ju6o3eUSkQmXZsmPxtPT1Zu9+9eiihY5xCBbP8yybOQOuSGExLwUv2lOFW1xlYix5TjmEzEYw7Fhcj0m3ySFXR4hOvVvJgmWXK6TMlnc4fed12C+kJCeTnxoQNpiXE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWocd9iG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWocd9iG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA511C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752550193;
	bh=RhQVGjx8wYqtjuF4dxPPw+UHNdwyfx0x0OCdgXBINV8=;
	h=To:Subject:From:Date:From;
	b=aWocd9iG1hpDd4wYJ6Td37zx3GTT6y2j9Ayn5BvHEMoqC2MHqfaLUCEkwwnbi3N2t
	 QDR+WAXF6oHqSE3tLBOEz2E0lBYMyNANV3xitp3nf4kxumx7dmfx/Tdk70lQsFhTqt
	 ks+ahpAh0Yt2aXNtz9b+kL14f46n5OI8TRz45NAs3qzEix4YDhX2xq1QKhdF7yh14a
	 TQ4rcSGwYkxkwQfCPkEzBiKyxwQu+bbILdWz30smPXoZdvqxjNLaJXBvP5OQ4bpP7f
	 ldA9ZMoq+NgA6a+85AgiPXidARB/8ogUt4c3tZotHfuVQiRp5wNu6l8zX+iYVysMs4
	 NQbLg9qzAAfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDD1C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255019362.9510.15941797259204173521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91414065bdd8800114739833618db9f9db5d45336e27688f6ad497ab955717b
Date: Tue, 15 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752550193
