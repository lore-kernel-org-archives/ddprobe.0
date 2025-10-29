Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA951C2BD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761747594; cv=none; b=a2igsaV2iNST4hKw48ndLy4aXKlXoOuPd9spvq1PFLTc5zPmL7HnGgxrQX9kKAdU5z1u3mzU+hxpQZXEMZEEKQWD88aI2Pj8dCVRVIZUUEe3iX3Ua81utQBauoHCDws3x1ZdcaduIBQkDv5gEovO9dkZ4rQ+NbgygTuQuS/GRRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761747594; c=relaxed/simple;
	bh=wxr/Si6oMe1tVKP8U/HVTk8DBVerzkRJcIA1WWUlSRE=;
	h=To:Subject:From:Message-Id:Date; b=Yi/Kt57iWasNo2A1rBGSMT/0D433BuOWzKmNLQibMUR9TqExKv1xW74OfARPhpLdatxXfQqaHFX3z5J88XshnPwTk3XWlv99opUQKt90TlYEOcHV5gAMKro7JHkvxaTg9tNPmYTvJ33LXIH2wcDVTPbSJrPiuUb0/l795ak9du8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUMltOms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUMltOms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A547CC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761747593;
	bh=wxr/Si6oMe1tVKP8U/HVTk8DBVerzkRJcIA1WWUlSRE=;
	h=To:Subject:From:Date:From;
	b=HUMltOmsyQUUN9fBA3ngI1xsWxeHn9K32Zq8JxedX0aSp7QH2G+/YR8TtNwHwcgdr
	 hZr37/3GJBhY5zJNAbBl9izWx8FTyBHgzkntL6JLHq2kvJEuOw3JbVt3rnGR4+hkcf
	 z6Aya2H48ecaisfLPm9EN5rw7bcErRz1QftmVe66rYOKepxhgtyOe1clSj9/k2vK8v
	 dLp6o0dlliQi8laVyImekKrAlChFbS08rLDW3yWTY7gM64tUIrK5esGFaX0dHS07Qi
	 mPUCoTYRFy+CUU/fDmtbHTzIsBgxVfBbRJlDKE/DTwL/KsrHwoCTTx3xcW0P7eAxZo
	 EgjeU8hAILU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260BCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174759359.4460.5896130542289958197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba900d7c628936e5214033b29773457371c79050267e797fe32e2fef735c9b6
Date: Wed, 29 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761747593
