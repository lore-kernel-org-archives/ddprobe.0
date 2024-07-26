Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387BC36D
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721957754; cv=none; b=LZ/2Zo8DGtytZ9lB1/YnbwGio3egCQayeQus6HxNSGdM286AGcj5mfmQOrCelsNgoHO+WZyKIxajsDU9Eo12YRzBnzxHLHQUPDv1rs3NMrA61kgG+M1VmlhQXYYPBQOff6WzhRrkw8muuh9GHtmpCreS1mHsbFcHhDIKIhLQQRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721957754; c=relaxed/simple;
	bh=34Ym7pj6u9mBeGBGPkI8BpGMa3mtKoJHV83w7Cz4I0g=;
	h=To:Subject:From:Message-Id:Date; b=EIcz3Uhz4IvdmEqSmckDBIKhYuSl23uWV9hsETcDekyRGP4uOABcTusJSgdNbvo1PwUnDxYyYLtf8kvj6POTupkO0ykGx+WvojADjhsRSdBir/m1AfOXxNumCK7a+8UOSLunNuY5h4kCoHY27wn60jFmCpgkPOSTSsn+MwVprG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUX3WVVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUX3WVVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DBFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721957753;
	bh=34Ym7pj6u9mBeGBGPkI8BpGMa3mtKoJHV83w7Cz4I0g=;
	h=To:Subject:From:Date:From;
	b=KUX3WVVG48vRmbFzeXfFhWxJPKCPfROKd8XYRrlS8FcWnb5leNNEafsqOC1/NEIKj
	 ln8SJiz10F/cIlAA3AW2VYrvs1h6ZN27Lz8+qCwqdSb0MotLOx4vDcLlWyTUFTI3kR
	 bbCnPiauqQBs7YL7G5hIekpTkISwEj3LtrqEMV2u3ckRyetVU2k1+AwS4fodWE0TVg
	 NwJhtJz+T9fj5knucLEQXQ1ussK+5Gip9gjToKwII4U6x63J0997P3Sss9AOm3ywQB
	 Y/gjHIsnRzeeGCH50cIyrcfJmss8yIv5zxOTJBG+l23Ogq7ogiARr66OXH/48fqxvv
	 SEdzWQglPgxAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFC5C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195775360.32023.4450877317646592359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82b52eb30cacaa87212dec18d01d941d750b5fd9cb3a48bde263582fea1795a
Date: Fri, 26 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721957753
