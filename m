Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1933232
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736727354; cv=none; b=mAyvPNi3sTGgiSdFU9LI9fUVzNywoORKoJja+O8PVTFwBM4gjNSJGK2vKfPOYpq5VC0phXrpOf/1XZwzC2JQ3Y/OgbbzojNIGQn3/vmIQEIi75fRXOXqBSvTkPnaJz7Ef1LoGFNfKYUaiZubBvW1XwfXFpmm/wvH+7cps6im0jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736727354; c=relaxed/simple;
	bh=yey+fFcuO/As263rER+8rdpymybtPzcV6vH71NkSFNQ=;
	h=To:Subject:From:Message-Id:Date; b=fwX/knCculuwEE6M3/MRQ91l3/LQ6g6H8qlmJuMBZ2SPiUpmQ5wPXLdVPZ3vru0goKP57m6tm3wF1mAbiad/O4LhOVwStdUmY9ZADg4v8+ZLLP5qTRnloBNCYEYARrTZAkDp3Da7GHMhL5AQGPCTNVyhZkIn4NoUUhk00zkiWyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHZgiB+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHZgiB+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB654C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736727354;
	bh=yey+fFcuO/As263rER+8rdpymybtPzcV6vH71NkSFNQ=;
	h=To:Subject:From:Date:From;
	b=kHZgiB+cWAz2VsFXb/6wcuioJTSnjp/MMAancdUmt9zmRrRljV/fVdgoHYSstWYyJ
	 V1BrqDaoO6zhyfHTamWnN4BHn9PpVE9GHk7LeFrol/R7WQSpsA6GGFq38mJ7Av3r3e
	 mjE4FhyU64dxqFEM2z5Qqo28CUfl3/GtGFuCAVLN656zZ3naoy+DwhroVZeCLty88H
	 SnQRsBUKtqmGkvRFxA5H7y1xz2UtXd4vV9m2Xw3+/gLS3t4BphQrtrB0HLnEKXpqXD
	 aW4XYxhbhzQj27pgn31B1l/CAzZ6bbsyOI/f8ygCHiJle2wALzVSd857UFZ8g+KT4+
	 3MWAo5qJLwteg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14B0C02181
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672735364.18778.5578761958666818360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826c45185568cdf3455f716e8207b621928b22b0955cbaeb02b3f23499fa4f9f
Date: Mon, 13 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736727353
