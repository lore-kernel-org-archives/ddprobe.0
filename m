Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390E32D77E6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783340914; cv=none; b=bLu65BoSZIKtjPPon3qUbexb6Gu5/bpIA+FQ3X4Pkz52P44N6qUuRFO/w1bt9hdiZWhbNgAbBgJOtoPWAQ2XsXTWt738ZHrsAGRhdGDPcNm4V7c/xanLm7/wTtLkoSK4QxwWab22/lIBwIB5B3wTnEKI10hbzBuLGC6/psFlHuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783340914; c=relaxed/simple;
	bh=PxVsiXgP3asYg68GAf7Ixi3mR49D4aUzg652g0NAar0=;
	h=To:Subject:From:Message-Id:Date; b=P6sJG39wAofTarx7TFxvSw7cwH6h7Z2UvtS4DNrFB68/LUsfMjHfvjiN2wIVRKZI0YUXlfBBsrvgH5cJ0dQHHEIH161/QSD051+prn0nOq1pF0hKsGhFTWC6joAeNPJlOcFgiw2CozW4rcJ3Z5nFmanwOFxjK6ivIJf3h02Ld+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOiReuDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOiReuDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCECFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783340913;
	bh=PxVsiXgP3asYg68GAf7Ixi3mR49D4aUzg652g0NAar0=;
	h=To:Subject:From:Date:From;
	b=rOiReuDLKdNMJjgczUzDr7A/aNndWFULCpIAat36Qu7qoB1ZSKQu6PsPugPBC2+6p
	 iFiB0R9bdc19p5YFYRxPxMyiGTFN7+nMnHeHwXi+gXwA7Vst8jakVljDOSpQMot15t
	 PngHBy5qfSkOvR435VeFzVnh1Le8WJLD9VS6Nfn5iPPKgDETMGs1Q/4z8PIU4GAa4j
	 2XPrLdyduKVywzY2BDCpriSPD/rpOhFZ5vgjL8ZR7QyPi3Z5OI+7m9wMYNidxTBvkD
	 VU5AgnSzFYDwIyte3eV62lYZUUmRCrxt0+41uQC6Kk0QDBP/E954nwo2rnuQedMGRJ
	 a3f5k86hxdJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE4C44500
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334091369.19768.12440153140358348910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7548b2e015e813470a2324f427b2d2f4fa535e898f00b2d194122233bd64d83a
Date: Mon, 06 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783340913
