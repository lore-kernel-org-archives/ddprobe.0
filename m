Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4526A1862
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728003954; cv=none; b=pSeUHHnPy9Csk6vpJrOnhtMruK9Jvbuz7fuaZEawsdrhUocQZ+zTMuoVLXJjfAvsU4D9C2Z7bJtMatAf3s+WLHqlciU30zwOfC/dVOAP0BQJkcBRqZj/3QNRWuFDm3nhrfwAdw93bSsyq3Ub3Pp5bB13Rbfn8ILWUrALgYSfUKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728003954; c=relaxed/simple;
	bh=rWhcboFV/GleMzenUtI5QcTG3mS2rztMCTGt8hfnQCQ=;
	h=To:Subject:From:Message-Id:Date; b=lCTTYRGRdiSFEcQp/We049FvAEea3XfI9loysQcEdIBbrmlSVQLsBtgYWRcJ7lohCvSATxfXDmtr/YHDEfyKB7LWPWfEJ11AA/zzE38jgwXxnV93n0cOyqnWLqmJ85CxL4pVWBksjpw7wZ5zBLmEIbn/aZ+sOjHlGTQtOdzzi1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSQUWMBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSQUWMBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2841C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728003953;
	bh=rWhcboFV/GleMzenUtI5QcTG3mS2rztMCTGt8hfnQCQ=;
	h=To:Subject:From:Date:From;
	b=YSQUWMBvmhPWJyV4kuDaWi6Ty1KircUHPSlddM7ptc+5zuJ7HwHnRjhc4Hm3C8dhh
	 HbP9aIPbTXHwsKGP6e0Ak5Cr9tfSU0qWodK5hacg1pOM8oTHsGq2F78rFxm2HG8zrq
	 gQgVh3yrTqhmnGqmsnph2CBxXFYSc8m1yEo2fuGPvbs4oAGbetrp3ap6tBmoWFKC7O
	 QrY/6y4VH7VZhxM7GF3oGvK2SZkuMKDsT8Mm20M4aPv/N1rwpK8q3Rwh6xa1HbPICA
	 JPys77O0xNuMsXnHuLE2etPN3BZ62WoJb30gLT/yL4GUJ2AE3Sx05FcM02LtVSD77r
	 9QIoZxopWBdwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E770CF34DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800395363.19179.294179933800728226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d093b60373c3b752821a9a960c85f7a2b093372625d356fa627bf8ac7beb58
Date: Fri, 04 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728003953
