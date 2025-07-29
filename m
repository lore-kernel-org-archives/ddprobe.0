Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F2D1D5154
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753830594; cv=none; b=A0JqYHLnZYZntdiqXGdpesnpAF55H9XGvh77ZuS57o+YC8LAkpmaYE5UUwKUmyBVYJRReRRkQ1F5UHJoU9anJEZP1o3ifaK7doWVnwUZzbYNT8U/2wVVmjjZ3CAjnJ0QmQiVhtzOQ0OptHR72sdJSi1vxWZXUVKdnnNXROu6eVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753830594; c=relaxed/simple;
	bh=VRVkGguw45Xo3P3Bai2gFwQOj/BYhZcLmCm8GEPseG4=;
	h=To:Subject:From:Message-Id:Date; b=U4eqIL2djyaMPj0eVEw0VoOuWUp0VIl/0UY57sK4Ei4jmonPGIWG554tY/NJ3akgqeiSF5VuckFxvhDwkHRDhVwVydkB++K2arNdug7z8EFQ4HtgRqSLq7HUX4WeBv7+jRvNBhRJWtyWTjVNcRPA7DB8S4YMvq7ddaYMLMmJ11w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCSL19QI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCSL19QI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0679C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753830593;
	bh=VRVkGguw45Xo3P3Bai2gFwQOj/BYhZcLmCm8GEPseG4=;
	h=To:Subject:From:Date:From;
	b=TCSL19QIEa1hqsRc/4TpNdRlV/Ejt43WEmWy6rjD7GxmTKFRLj/CISasfVGnPmhmN
	 mzpaDZwP65fY94M6tKcSYN+HtA0CMfY2cnLpFe2B44d0Iz8zMkl9CgHNJw9VhA6OuO
	 C1cvn7LOh/iNmHzEFGcmz8yfJIODMaTYfmZTNFVJ3IEv72eMPkldL9XybyTPD5eeud
	 TFY9se+dUm4WeeT5ZKXpHfI4rLwKvXl5x3XiEKLzrrM4pV9mtjy/JdSxvJt9LziLCw
	 U8cQHWiLcLsh/4BghG4ZwIZjDkZH+guZ7hauwaQMEo/xovwfR2ld+OQj8ERwxAJby7
	 pQ92ym9i47mjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DFC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383059357.28463.11273087039408018578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1111012957d46af4ca175076a216a102f624c0b675ead4aec1129458709faa3b
Date: Tue, 29 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753830593
