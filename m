Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42837327BFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784902834; cv=none; b=qEwc4wOZn5r0yN0GqZTF3c60Kf+VyMpAHLluGJ7VFv3W8cV0Ja5EXDp0VTxw/nQZD50Sihk8DO7Ar9I8czfFaf9R7fJ1xnq/PVAhtnu3GDwBhOAyAQeeCSvizV31R+OecFfEsRGmUuanwTOyitCx/oy7Lxaw4FNbmae0VNdOiUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784902834; c=relaxed/simple;
	bh=ZUC0purjER59hr01suWaT7FGKAGlUwF01ubMf/0z5AA=;
	h=To:Subject:From:Message-Id:Date; b=WW0r1M9eMb9rBpsuCP3Y89tNQlNt5bjWrINrg/TMcXhyD7unbfVK1VcEOCexHfe3FMI4AMaQCNzD6tnfGov4RJCf0yL79303j4CNlqHXPvA1r1/OKkloit7cRVf5pzQ6JzrkxchNodFwm1LPV33lJVD+gKvxmYQB1KpfW6LJIP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACR4B4qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACR4B4qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB434C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784902833;
	bh=ZUC0purjER59hr01suWaT7FGKAGlUwF01ubMf/0z5AA=;
	h=To:Subject:From:Date:From;
	b=ACR4B4qsHVHFH6E5wCCfQi7q6weduwH2sQrTMo5s0XarvBS8m1G+FbtitdA8ibo7A
	 UzlDb6yjVewOHuWUF9UIIQoEyo+LqxxSXhe2XnSZm7Szgrr7ZLULuEUIXQKpb5sBD2
	 DjP7vg76BeWE/unK1PN/9QCDU1HXC5OMYVJnEx8ggmw0maqlohRkMuXX185AHW+7Mm
	 lD6O3ijcDymx1hPfy/uzEuPdgS3d7LPhFoTjyuwSqb2/6zzbLd705DxbfMEZOI48kI
	 SWxJ1gvPSQya5oKL2W+OD27FAHFJFsLHlhDXmB2uao1e6Y1JXnBoO1AVwro4RkcmUT
	 XdmudkGSM8iFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FF4C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490283368.23696.11557131849127897707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb7cf4cb160f204592a61c5862fe57de34ea97c6d94c07090b884bea92592ec
Date: Fri, 24 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784902833
