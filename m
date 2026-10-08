Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423D53A48E4
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791438034; cv=none; b=OXHm9XlrL3K6SdoXV78je1ycN1Uf+Rz49vpJRJ2cxjms8HjN28mUiBnXIMHESgdG1bICk9+gahNACtLxoN5RZREk6agMd7siFZUAsF6nXLsxhBkEp95yR72pYEPnoqP0pCa6wpzKehbkDJgMvCrZ6pWt6H3R643OSQB5jlRhfWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791438034; c=relaxed/simple;
	bh=KCuAtfBVpMDNqPrQ+pZSGA/MpedUBpQacqktJ4kixKI=;
	h=To:Subject:From:Message-Id:Date; b=e+gqIMALHsoyJyfBSoefmSJbmIIH8FqvSD/svi6K/JHIOTo7cs1LrqjX5ALtr2doCs+7Yc7RymP6xmrGtkqHRLadDDzwZbYWxMWd3Kdn1roMHg/12EDiGQBK9x9AlA6soHL6TerXzMuGWE/9vQw/wJgEUyN5CO8+xIN6az9eF2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gj/yZk5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gj/yZk5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE73C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791438033;
	bh=KCuAtfBVpMDNqPrQ+pZSGA/MpedUBpQacqktJ4kixKI=;
	h=To:Subject:From:Date:From;
	b=Gj/yZk5V7FyrCfSJMnSfZkWBOU+rSEtXjMju6PmbRHnsc/boLu/oI3TssHRvHCUEj
	 JSZgBBMpx/4i3U9n31YVLDYP+HLYr3bKmLG8Q6biUCrMuq0QAtjN+aXd5gMOxqUD2p
	 9N6A8hofCy3GEHnDIKeGG7dpW26LY9umECUjTTLsLhYYyF2jJ64dYKCVkuTPfux3lK
	 GMIvE/6S1jPKbkE6GMrJrvvVN9o84lrpKU+/UAK1bb6iBx8SHBcCimoSwEmWCUi5z5
	 UwJMcmxG/shcW9dlc4MiZzps3VeQSMCVY+yw5eDRhrOKi5q5x8qr0KRAPJOZUKhLtE
	 1/dKBdjfhvOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB9CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143803368.19868.864200339264250990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9378c0f6d3fbfb7fe3aac5469a0d377c76700793e104931d4a9a249b08c5d807
Date: Thu, 08 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791438033
