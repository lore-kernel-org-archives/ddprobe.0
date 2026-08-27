Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E85415F39
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787847034; cv=none; b=Lf19+74yz2b+zmjmZyg/cnmF+XLGtHqtjh5TmthWqcEOEgquNciXjbP9NBnY31RgTiFHseND7jdGJzp3u4gWQTY1geshwHM/nZ716r5t3ouZw9vvqXbzw3dqY5GfWVx7BXWF29OkzTofnBvGWLnKmHStWPtbiaK4hMd0k5nf/fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787847034; c=relaxed/simple;
	bh=wCFcgqnvFzcCtnEuzBQeu6WstWmPXxGIFYTjEqvA2Fc=;
	h=To:Subject:From:Message-Id:Date; b=SL6anit9u+ZkcpzdwbP9OCO19zm28HRrdXoL4SJ/quqS/hiXYSZmW0CNVN4oYUUodiCxlgO0BiGLDtCLpyr4hLpdqF1mA4kxF5FgfikbSmJfhekP+hr/HF5/C9EdSAnrh2OBj43V0GwjTfmk4vrMPjWe1c+YHtV3dTlounjCf7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOGrAv8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOGrAv8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D066AC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787847033;
	bh=wCFcgqnvFzcCtnEuzBQeu6WstWmPXxGIFYTjEqvA2Fc=;
	h=To:Subject:From:Date:From;
	b=fOGrAv8lt6HseVSPHknsXnCisRtkG+aFk1tBx9IhODIMaRj3hdWICZ/bqedAtlOHH
	 CaUoAhN6mntw+cgJ1+t4DHGlRUtsG6TxeAAQ68Z8UqwJyhgTn744b6oQDEkquMiOM4
	 38m2Mn1r+SK/iU+9MgKb/UHPkiUCwmsLBB/cekjW05yvVkBRjOtC+zUzL7plNP2IkX
	 3QrhNu0Y754P/qh0bxWY1d4kdOzuEIPKzsDiHAis/A9dhjmICPCQrLCl/kASZ/JPQY
	 7+YJbLrf6Nd6f4qH9uFSrVu4DVcAK6GtyCfjmMI44tz45wijsi4z9bYpZWheSP9io+
	 ptK1FGPh7rrcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A4C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784703368.685.3018031855008299765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f57be07507f6d8332932aeafae5e6a5d9043dcc0b29a22dd99e9421296731f
Date: Thu, 27 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787847033
