Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2342798F0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759430393; cv=none; b=dCL52Xt9PN+PonpcVnwLWjP7TMeEJDYn3clzPXheyJ/j5L7kFo+ng9ScEkMCcCs4oc4wFzEodBmtPeSeAA6BDH2OJolqVZ5zducjZfp44E1r6xq+8/F+IvVvW9/UhfKUHBhywkVYxVd5NQcVwAHrPchmkja4FXlMBvJ6hsHpzzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759430393; c=relaxed/simple;
	bh=0JAbwh79uZVUDErUQAZPEHoI8lAN093ClXCm64l2tII=;
	h=To:Subject:From:Message-Id:Date; b=uoz1W0cPa20/9p9BBbdIFXBUV7ltcfX9+eMtCr0SKPnXH7CW1NoGUYffRE1FK3WVkrQaWCKLc/Y3A+a8duauQMPFLYWaOhyyhNAlbnAqVtFraW/IPfMyAf8uqTZvC4MjPP+va9E1yLZmpl78TCUxr+9A2MBMlUnLNrpjQLmtwbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCXBlK0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCXBlK0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759430393;
	bh=0JAbwh79uZVUDErUQAZPEHoI8lAN093ClXCm64l2tII=;
	h=To:Subject:From:Date:From;
	b=cCXBlK0GPtPacQtBfTIts8ra6mLb5WlVCmPWvSqeV6DWPnPdT0cQcy73Z+ulDIXlm
	 5ORHr9X5k944fyiIDmO51C+V+POCA+qJrj2jY7LRN/sVodjjyc0bLu1F2SGu/+3e5K
	 3XT5ewcRFuvXadJVsHlPM7feTelgeqQZeKQVh9BffYCJwMeG5YVyjjmHQFYQADBHxK
	 uO2B3/0hmJ+P9B3XvqO66+mzBJ/KBRNnKIMB5lZWgtV35cIgb9ExpnRiMwk7XgGgR6
	 UOOZDHxCS23piQqSsrp+TSwiDN6AsgTlDFu0sb2c2BbayYelhzt9ETKSTJaF1P3eEg
	 Iix1nMxMsSkDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119ECAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943039358.3468.15301517814734184003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3594155afcf191adb62075d51e6e121982bafd267dd3080d7d1299fa4982b38a
Date: Thu, 02 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759430393
