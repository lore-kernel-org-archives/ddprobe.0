Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E758AD24
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765594974; cv=none; b=tlyKRsyq1R9PdHFJBUnr3PD0FKCheqbNydON3p0l+n45XLgyEYUzQwngbj0pgvEsDNpzeSseTqgHsOIms2Nw3445fOZplhKxvSac0YPAHr1TgRoeQXDSztNOcGxfNgSALN75S2cx49aeimguhMSjwoVMHwaIVCKTv+FTTmSECxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765594974; c=relaxed/simple;
	bh=87gsM0zGFkkKpT77fOppBbM2WCzw5DjbNKnhV31A3m0=;
	h=To:Subject:From:Message-Id:Date; b=IEoZ5IrlJD8SC8LOA4enY2ZKlloOGwLjW4akGXQ5Ug4DzoIh0UKb9ciwEIJvQzUmaxwA638kUXv9Cy1X48h0LpqDTkElicgRDl3b4+6MWgdz6SY5ZGIyzo+SwWOHJ9d1SvreQP9/z27p3SrFMKXmlVpwDO4XwWgRpZUbpustudw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDg8qGk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDg8qGk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F5BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765594973;
	bh=87gsM0zGFkkKpT77fOppBbM2WCzw5DjbNKnhV31A3m0=;
	h=To:Subject:From:Date:From;
	b=eDg8qGk77wldKuTsLTAdb9bBds4dFOcdhdDTZWkKPsOn9tNwPS1OcnI58y7Xl2msa
	 4I9zYdv/IuEe5i64aKK61fhEPI/1ihTx82clptE1/SI+SWJwTiQSwCs9kcZOZnel/s
	 wrvufG9Na4LrYU+YuzVLtEJmi4ZospSp+7FiLV1Bpn5fNrdJUiOhxyLWOt5X6Q+TSd
	 AmTiamDHTmcULCt1wOl3tSZmh44+HRT9z0hanz3vIacoJEUAG91Gy1vFz7M7dLeoMi
	 oiVg0NvJS/9/Pf4GvCtH9URuVBhp9CzXLS8X+xpaoIDEc4r67ubqHudJobqNj+4Hk9
	 U3DOA+qqR74Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFDD59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559497358.12185.1715860406823491242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db13d0feed06288cd5d57c383520fa3d4c78460a7716b1f6eb9b856659e5b8bf
Date: Sat, 13 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765594973
