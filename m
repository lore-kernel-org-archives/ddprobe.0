Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8481C5D7D
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760057993; cv=none; b=YOfApshuarHg4wu+TTzij8FeaPLPiB2d1HYWh1AEbbBeUuaJIvTX7lGjM3ZbHntUcH9+LqY2sqX9jifvJQWhvYXELNCQnOtvHo5oyozYVB8Ij5uDgni/lsgLkxZ9MU6uHBEBB2LP27QJUsAC4h7ogjU/RpaBxe9GLgoF5hixumY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760057993; c=relaxed/simple;
	bh=JTC035f07en36cOprEUH+orGy4UCJjK56WSBVFVH2v4=;
	h=To:Subject:From:Message-Id:Date; b=AM9/e+tJIt+7RWHUNRPTQm/ESeQ0OqPixA21MTdwvZDwMuC0CAxIcWinmcZDK2m7xzytBx25pNhlOiJBfwLx3SOJK5UcHk+MMZmeFxh4GzqsB+HFPYT4cLZWn0gaHzbKlYf0MpHzvykUUsEgFuWQpQ6VRZh0HxgnACDmgheT/6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UanRlrzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UanRlrzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95D0C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760057993;
	bh=JTC035f07en36cOprEUH+orGy4UCJjK56WSBVFVH2v4=;
	h=To:Subject:From:Date:From;
	b=UanRlrzU93MR3Xc5ZlqXAI1Q+Wuw3J3dvar+fffl0LtoSv2jnCfQtffPxmdlAp9Ri
	 2uKDayKDcT5oIrGwe4Ik8th378PXJaXME4K1Pgtn+VNLouS2lkjKBmGDt/HIMylToE
	 doAV0yraKw2hGF97oOlNmwGB5yzVyCHiWEmPwafaDa62G6Zz2e+lvfIp8MPGjaY3LI
	 P1UuV3tfKml0pIukGFDOcSD9d+GjXlNIJNx7sKrJtCDKtrSckidOVWNqKPjLxazF5H
	 WWP9ThdgPeDmIBMMABD7lDrAxvG44PAQncObrMnh9C8bawtw059ArAxIIqKQt8qcn8
	 BokG5YL1YxFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E5CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005799358.27515.7067151100592741839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298cd8613a66dddd34a193c0de66ad16b7066af7c6c1cb80ebaa7fc710a3a25e
Date: Fri, 10 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760057993
