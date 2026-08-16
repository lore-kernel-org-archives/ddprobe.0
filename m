Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632704B04A8
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786840234; cv=none; b=p8FjDCxskEMglK4wVE/1pQsM7Thkp8ombOen2xaw4zRbmQXDWTNYBWFMdFwXFJBjPfr7xc+/Bc62F05lyvqc2H4AE8N3u/vjV9/jLhabHHQuvAFCL8mr+BeIEZOYbtGUerqDKskCeyyexBT/06mYE0V0vF489/f+g148vziE9UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786840234; c=relaxed/simple;
	bh=enIPr+hUhPm5WPuMfaZotetdkVPXxWbW1VVzr36AYo4=;
	h=To:Subject:From:Message-Id:Date; b=R4B+AOHVGRTxjY4Eby/LHQQc28V77bCBykM4Uusn4D9pGOzMxQWBZKKI7a4XhVIMArEuomlBddDAa9bm785sz71v26xPc6BgnlWzdiI/V+mRsfxAdliWQw2wvZ/npj6VDe8cSzogcIe/eFt3dHNvIBsF+I1frqdZIfUcFrnx7uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWWO80o6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWWO80o6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA464C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786840233;
	bh=enIPr+hUhPm5WPuMfaZotetdkVPXxWbW1VVzr36AYo4=;
	h=To:Subject:From:Date:From;
	b=nWWO80o6XUu9+hO20bJ5Qh9DsOmQQ/MT48fK+c31HIoAZuHLcnBAV9M21jQ8KIXvO
	 GQg1AjpeerAEq6KCfiEq/6nROkefzetKybErB6Hr3HJzCRFQPkK2163p/arXwx2CnN
	 zf2dlKmuWkyUex28/hxS/EdvhVkymNDLdRCrEjENq135mA9DH9vfHdWif/abn/hzsL
	 XdeS3rL6SBsIXHWew1zI2QAqq64n93GGn+K7f5IRyQCfUmD/X/WNQPM74mJjAWUBcp
	 RfprGjPWaQx3a9//SoHpKpStSp7XC/Xs43COgBwDhTemqu8FutKPXwkqD7eTGXLrQG
	 AWYkolbFyfYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE228C5DF67
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684023368.15189.2424438721252890818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d01145645083ae7dc59c7a4db65a8f2e9c00ebc1edfe4ba8427387d66e983d
Date: Sun, 16 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786840233
