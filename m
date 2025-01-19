Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71D015350B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737328553; cv=none; b=Onwgr3d4HVlupq6kELLv3Zw0T+xqdewrbtiYCIEeLp522z7EXxUfD77wkI1xC6iQd71BchZJKC25PKdSOgPF/QHwaYbAn81FaWR8REtxn++xl1DDDenXwg4gwIpgFdup/1niAadruN0Wjm8W7NKsesEOE/nke2nrYPHUiCnrD9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737328553; c=relaxed/simple;
	bh=ZJGVQJFFWj5jUUEPrqms4SamQgzlQjaqaPV4P7Go92E=;
	h=To:Subject:From:Message-Id:Date; b=heCYCEpRNIt8xD585vv408MNljyN5Rqqx5v/0QRHNpDB2b+g1AXLiuG65/OP4cvh+UxDxOry/HrKCELnzy/NWSE/bMEcXq6NXLlbLO1RGrW6QoJ86hQurSl18l1RctQuZKRgA6dNEe0wkdUV1aeUKjOhdHwZXEn8Wxh+coqteGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYlTZnYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYlTZnYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF778C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737328553;
	bh=ZJGVQJFFWj5jUUEPrqms4SamQgzlQjaqaPV4P7Go92E=;
	h=To:Subject:From:Date:From;
	b=lYlTZnYo1rhDryhoX4gQmSGcc4AC1mwQZ8SCN9cpU2xU9icg67McuZbnDfm57X4ri
	 OxLSEiqjqxEXoAV/fEz7byh9bn9JcR8ckWS+bYQ22gGHjkOaPrrkOdmMrP8SvYFdMw
	 5OWp+ne8B72kJmUc1VTtWMsHHK32Qxk2h/0+DBnLrZZaEvkszOcg2Fc1Js3Agj+Bqn
	 qWYdyKFWyYeQrSejtoamLd0xBWQfo3zN/IJrtFcXP+dFqADot86Vn6yRyLdKYnWOXC
	 eDFLfboggi2UYQQ1hYSNHtc0feKVDFAPSvcML2m6KjrtWHyG1bbJa0UAto1nyfTtmP
	 WwOGoXGfit1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1E7C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732855360.8748.5310582444465962697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67aecf7a82085ec88b28268f62e838ee661389c44c7fec9eda1cf4269b27509
Date: Sun, 19 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737328553
