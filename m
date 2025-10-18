Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447EC3595C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760758194; cv=none; b=Nmsml5fyvbE/mbgcq5Emt2rg9tupdNVeZSzCVbNkcsPipkcmLyQndzXNIR09g/jj8NxdG5KKZH+IAmrDv46zE1wWoIu/aTdiDSMwR/lYdFxejBMK5XlVMvb18681nJc2WOZnk//+xhlgUI71eDi24Hf4ByU5iUMT8MmJj28sjFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760758194; c=relaxed/simple;
	bh=1cEKd19Lv2+Na5VPytpdcN4W1WQf82xAcTd3P//hB7g=;
	h=To:Subject:From:Message-Id:Date; b=rnOQ0oW2tjIxcxxN9K1Amsnd0ZM+PmjgcocxeJ+iQB7vofyR3xidfCGZZdd0Gb10syWUWufFMGnKuVTmdMP1Gl+e859jJe8X5nErfbO6b/32hcrP9B71oL8obfaFHvvvFjoEVqyYAjX6jaU/FaZpiwoM1bjduvitNSKJq1AWve4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWga0lka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWga0lka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB048C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760758193;
	bh=1cEKd19Lv2+Na5VPytpdcN4W1WQf82xAcTd3P//hB7g=;
	h=To:Subject:From:Date:From;
	b=RWga0lkaS+a+PY5VOTXWvU7bqrKvQRNptq2qANRX5jjfnlYA5RtaKNzTZE7HN9qB4
	 xR/is2xoVhtVgBugdp3vUhrFLNwngqB3QnTTHuOcTU2+N9BLn1mh4fD1pu32wO4KqA
	 jt+cd/TkGX8k3Bi4yiXT4udQ5607JeS1clE0xNOdZv5MivhRdtKr0GG6qFMocz+ht1
	 plm0GmrZmfslw/TZ50PGrrghWh/JQ0hrVMgJVawlHgDbNHZWZAppgBjMYeMSVZI7ui
	 NQMWf8BjhD2oT8VrAiaYW3SyHtzSixjxh0U8JBRZpfgenLVRrdQ2rgtaOWye9KLvnK
	 EBt8fUsKg7JNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992E0CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075819359.9287.2744188581697732402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4317b5d55c6427ceeb98d0624f3b88a177375cdde0257d90b2258bd9a16ccb5
Date: Sat, 18 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760758193
