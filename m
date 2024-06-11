Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F024502B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718149703; cv=none; b=g8Lrc3rVeaL3Oub7pIEMChApo2oFITGXFHSFQj4jdOuwgtRzZ7iToZ669GAHBKWa5R38RrODEp+YYdCFLN7KhuB2NCKCaS+rPYGrmMyshY35kEen0QvxkjpRQzOqLauQGiXishhe8F3j4j4/z0uENi878We6CCZO7TNeIr/Wfwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718149703; c=relaxed/simple;
	bh=vrmZDCJB0U01BIATAMBRsf6RX0Ins7XBR0RegpVcQ3k=;
	h=To:Subject:From:Message-Id:Date; b=ZhETCAKj7g+3YyYxgR76+o43j/De7S/4vFx1DKJN8pXaXB583pCRPVHx6ab59UX+CExYOEHH19XECngi8MEH+SbFAl+rI5iNgIjFbzR70TuJx6SzIImjr13M2W9rNpQ2NJSP3SBsAb9YcsYv6rG3nWA68tPmdTyDaWhKZBx0XhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu29ZkKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu29ZkKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 110BAC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718149703;
	bh=vrmZDCJB0U01BIATAMBRsf6RX0Ins7XBR0RegpVcQ3k=;
	h=To:Subject:From:Date:From;
	b=Tu29ZkKEdplxlSqSiYHOHYP+s3YnQI8t7Uyp9eViCqHlWQIj9ckp96fK83r4gNrfp
	 0ssROusrhMhtPpYV8NSvJHBvruruyUMJHe4FcUeWSQ8AYz3nM501pNC/G1kMgQkweD
	 nisuDragu9f7oVaH3vQovnauyfgQbV7d1dhFoxrw7uEaIt9K7R6LiRHCQCY322bNXL
	 Hm9Zcin09sxGhzHrncFphQsIc723W/aglAIixKs6tvDtVSVgtFK5quNVFFllDqOpsL
	 QvMclIrpLqLMidjVhgioiPiw6yvMxBkgUJkDA8M6UBgKSrs8qGfYHDsC+ySK0Xa3uE
	 /eZ2Z/+gQI+HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E577BC27C79
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814970287.28416.5491240946026773803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5007032c98658854b00d723fd4d5166e96785f1266efef73ace86f3268af788
Date: Tue, 11 Jun 2024 23:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718149702
