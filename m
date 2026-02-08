Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB6623BF9F
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770533034; cv=none; b=IilxpuD+owhmK1+R2Q1b4DOguANd6geM/TfCkZaEekOpVanMl/Yire2VTp8GQeNVfvc69EgVR/9xPllhjQI24m6K8kYp6KnxG5nv5/MMq5VobEbJA169tMo/cMXn+wfBTui2nwXD29W+q3p1HmsRqS+SO1ajHlT7+fVWXe0eEcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770533034; c=relaxed/simple;
	bh=Dz2rCDB5BXkUM8uaYCv+uOIXaNJ/nCtV/Rz++mivS9g=;
	h=To:Subject:From:Message-Id:Date; b=taYB7BNVd8iCFHwvlIb9knhXiR7N6p5NhAFI4gSdKPKQvw23GSNKFrw/E2Rcrwhf+8konJ+7jVa801L16VPy+D52APQVSkkU9VLjDRiBuH8L8DRqYrQuEmES4Clj8qEAR5npsQyM0Tf5KaJCiYVh2bQvjIO2y6JmtCRZ+57cnrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwtaPmvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwtaPmvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9486C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770533033;
	bh=Dz2rCDB5BXkUM8uaYCv+uOIXaNJ/nCtV/Rz++mivS9g=;
	h=To:Subject:From:Date:From;
	b=BwtaPmvngpa1mhoU3Z23cxQSfZLwsGbKTbDtKGkscex+EtsBxRDDih07H9Q7/rPXL
	 jl4NT5Ju6yT76zXC2dxIQRvbO9PtGIB8A5Wv/UNz0a++3KYpcnUBS4PJBcw6xqpKUk
	 xOZsjp1T7bElX1Nr8aKd9zHacGCN419OozvxqY/aqWX814sop3IMCXUa26ounjZr6U
	 VQMXmYtNPnUzV3p37AS28U9ZB/ck5F3OECYHp2NDDT0lE2Y2xQm0bUGGkEUEDT03BH
	 ObkdExUq3Zqwk/DsH//7iJH8LyY6qem16XNr7ToGO0X22PhEaWrrTSsUPsRemHNKMM
	 mAa3QdUVpN3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C8DEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053303359.7084.8345447334213608331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69906a32cf2c7f96adb640d9dcd76f87cc6c3a8394eb869c51de39f167ae404
Date: Sun, 08 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770533033
