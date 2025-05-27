Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E4C136347
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748320794; cv=none; b=fFsyzg/qKqAiSg9VVTQbH6qM8NrF3A6hKszNDqW0LkErc23KiMlmQCuwgSVLfDRtHGclSjzc8AzeXgScQsXgsZXv9XAPuK3+ZRIQIvbnBIDUrOwIl3PZ956kCKY3hIikJF2IrXDgt2V3oMimzbHn1HnaMX03SVwc1KCH76MDwPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748320794; c=relaxed/simple;
	bh=9Y53UhBpNfCrm10dDKYEf8KMX6v06o80qT59gaYu5TQ=;
	h=To:Subject:From:Message-Id:Date; b=MkIaIaEut2iZsKEtoqWhF0rmzCPC/W17GzDcNWF2B9suJGmFCdErsKAkJ80FAAhtnESSCf4bGIqE1SY0bNsD/PHyefQRID4cj5qwAm9punbgR4TO0PB0nN2J3Mi+LIf9iKpYfdipc7LdXJD6U6UAkYO1lWAYqybzgK2Cyt0E5Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGNhiu56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGNhiu56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCBC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748320793;
	bh=9Y53UhBpNfCrm10dDKYEf8KMX6v06o80qT59gaYu5TQ=;
	h=To:Subject:From:Date:From;
	b=IGNhiu56bRzeLzJECM59Qr2RrFobi7GKxqs+pG/v9DFpSRdptEMbGIcEmY99wY6ga
	 JZDgXKGGShGyPYH18YUkmsIx6EF1y5nV3hQfLX+wzApO+6Fq4sM3Tj2CY1GruEkAoV
	 BsDA1udDdhSg34kJphMPqxUDGpTbn9AwBWf7kq8Nxc2r0+2Qo1u/ZCiRRQB0EQY97X
	 rODCPvVTV51rPEy6VA0+GjLARuMtmBs78M6bXKykl1m1VTIfbF7P20Oiyxskk3crYL
	 xxnPdcARDHEZSsK6YfRM8l7UlqcdAg103rI0iRUUOKujEriPxNvKjllmiOirOQLPSe
	 86qtA0OXivaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D45C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832079357.6354.16056001065357093433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a009d80aaa42189bb2e72527c12850817ae9259ff0caad59e6224f1f6413939a
Date: Tue, 27 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748320793
