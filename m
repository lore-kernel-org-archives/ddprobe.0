Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545E262BE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751074794; cv=none; b=AZXYJRHMAVivdxBIS+ptINzq9vjuKziWXBIbhN7LpF24VUBDfrciRO1QPLO33moXrqbfjzAH14K+Aoh+7V0Jw50NJC5QYxa6M/M8CX93uJNQ4S4ms4DUnP2InkRONfVTNvK2j2ZxmRBtStNoJDvNqV4ODnDgpUUpvDn6a8ahq/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751074794; c=relaxed/simple;
	bh=ThUYynjcbvL+OoTu/1YXO4U1N2W3bifxoEkXoFCxn4c=;
	h=To:Subject:From:Message-Id:Date; b=CMlhaT8baDGirvuliEwAHX+XzlLwyHIeZMmNSI/03J4gMH5XbmVnLn3G5q2ThBYXDKIO088HjpPjWgkNq6NVYFp929lx+oX3vHHutZ8xGwVioVw+gicmjrMDSYf3GHHjOg8oXG/H47HuHJ4Ejx0XWGdFL02+JR+mh8pWB5EhyIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbgBSqHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbgBSqHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751074793;
	bh=ThUYynjcbvL+OoTu/1YXO4U1N2W3bifxoEkXoFCxn4c=;
	h=To:Subject:From:Date:From;
	b=cbgBSqHx0gMwPlHhMMu/Bd2IvESP+n2giAsbzAODuJkd22IHyCaqbMG9qVCfBd3mx
	 nNVsCvZXer0Jxgn7n0/FfvlV6og4iGS/FWvf8DSosjpkdxCXIe10ZLGRITcnDDd59C
	 GY0B7D4Lcv+hzT41zxwYY5TIPOFqL+4ZEvsS0pEk/+/NPjMjOK/ThRUM7ta7a6RJIE
	 Dz39LoQDDSCT8CDAWgrOfGdukqeaTn2PYiNimX5PpKHpdak28/+pSA7gw+H5m9wsSF
	 rH58/SUh9O+WKQxQjfzaSAvF259/qN8XAVsdkshePYg6zBK+gGOR/R58dSn7zJb/rl
	 i1EEM1oqcJ96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F36C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107479359.30263.2141152241316086253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dad63c4b711c2ca63fe84b193802d0cc3e7a1dbb7f43da38a55db28f6e90bf4
Date: Sat, 28 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751074793
