Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CF51EFF8D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759946394; cv=none; b=SO7ILz7xGCqL+A7EbgdC4xZ+aO/qCCUifNEl2Z5t/92BcnPck/XLJ0ULXTmu5VgBNLzct46Inpt9hUJJ+1m0ZEOZrGf7umjH46vK/CidPuDY0qLzVSJolMpjQdSFztaJrgYF990iIA5OL2fq3IEeM+Q+79h5aQztZWEK76ICY/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759946394; c=relaxed/simple;
	bh=FmkUX4HL1AaB80G8VKzvMzqbuZqQFCs5yeySIyV2Bqg=;
	h=To:Subject:From:Message-Id:Date; b=CT+vQY/JtxhTw3veoo/KDvoapNRVwH4/RZFurvUQPEpWJ0O5wp8S5QiT/EM+bd4/zMas3H5QpDnG57zoXBEgFG49wkPYeHT1kzZOcokMEqXDSbCypKoGFGZBFSfjl7IB0iXIVD/ERwEsPQ0+XLUlhZ+iPMgQXTLBLLmDlvmehH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0TzO2b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0TzO2b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA1BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759946393;
	bh=FmkUX4HL1AaB80G8VKzvMzqbuZqQFCs5yeySIyV2Bqg=;
	h=To:Subject:From:Date:From;
	b=q0TzO2b+GWYoTK8EAOpOTWGDlluXFRslZ94q27ZOqEAaThrgZkOuk9k4CUc54wt7r
	 /wqG5UGCtWBVlOA4OdKqarR+8GOip5NkxyDBO770sIg8g8cHsAyVrXv4OBvkaQbi0b
	 duO4DAlQFtHHyolQhjDKnA/a5uQOBjb0oYjFnz4iFTxOXCJNiB6/wCdkw5vYwLaIAN
	 GdRuQfcYCObOnZoqviuNH+F7Dy/qociAM1pfIf0gczDOpMYRl218oueBdNN3tYYF5x
	 nay3gIRVfu7CshU135+fbHM4wPXS9dt18NU7G7AdLDPG/b3shoz/LL2R82h0UmLF0U
	 HkDIdQff7V37g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B1CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994639357.29614.2218416347641666212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23514e6138cb29e13f4eb2febf7d05ddc79220c173d690658fb16ab53d752d1
Date: Wed, 08 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759946393
