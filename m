Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328662BE630
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783315114; cv=none; b=Df/YlWa15M/FhpsEoxlHMcHOeNyF5fY2m7ho0fzzJQs36ge99/cxZLKnuYcB+0DY/NLCWKVu6E1n+N5GEcnTAXNNwtJWMZXYO9xbOoctoGzeZwmGLMhw9UCiwCvTvdX0r5zBoj+fdVVjBWLm/f35PZK/7YiKHrHLH+Bzpdni/XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783315114; c=relaxed/simple;
	bh=Gl7EJodNK6sCpzzr54+p8kVvVIIbWXdT22qVOS7n1d8=;
	h=To:Subject:From:Message-Id:Date; b=hol9JBWIPeYFJTxVA586Gevx6w9ANq3P9z6rnqsVS57T1KjAGLV3tobWOM53XuDgtgEHNQ+19UkapNT+l/Ix3ePXWFGPdWdysiJT4vlTFG96DwcfoGgoLfWDPaGgA/WRK5CcJYA2/zT819/w6p6BoumFNnHOYoilHLLRbGvePGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoY8WpuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoY8WpuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7DEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783315113;
	bh=Gl7EJodNK6sCpzzr54+p8kVvVIIbWXdT22qVOS7n1d8=;
	h=To:Subject:From:Date:From;
	b=PoY8WpuJZb0dzu9T4ofSVid6ntEGb6ApOIhPwW4aSb5VD2+PO9MlClOBju8P5D8YA
	 ZQdaMep9sCXZU/U2FV03aN69Yg3L25+Ytc8GlnaQeVgt5x4RTOOIgFkwDDjIVbRMIj
	 bYp1NErL1Vvolv8rC1NeDaH7K4zfOVXDGpavLtPHxlSe0eBqCxmBf+K0UNveU2bkyq
	 N7Lb38KRYPDLcOkl5uJn/fOHN9yYcMmZM38SJH8eBOvsJ4sGgirOoyYqJ7NVOEA7Mh
	 G1QMLB41aisO8dETcaXr2TUIaisS7gNM/EMpCf6TjmUe8MTRGpKRE/dqew/3sU0sVw
	 JHmwzBjnlPsDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F64C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331511368.10913.11999671444105395005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff3ef9e9f42ed8a997103e7cff55f13092e15707558d87f78c501b2ce0c1c4b
Date: Mon, 06 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783315113
