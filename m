Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F91295535
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746043794; cv=none; b=pQjes+T8hGrzn2M3K/RHmFVTqe3qzRdCUWge6ZA4gB80d9mMqq2PEwVVrJ1G75Tx26NcUsbBSpAbellKGsc3HHvzexWCe04KaiHXqACRI52dtJgzOPHB0ssJ8VMj5ep97G8iawj5cjv9uXv9Exg3qeGcIyTdBRcBIra9DPzb2l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746043794; c=relaxed/simple;
	bh=YQS4gBk2pVmpQNnSt/cQTeaNWMnWhdzb02Yz9TuufZY=;
	h=To:Subject:From:Message-Id:Date; b=TKca/II9Sacn4II4TD3hcE386lgvCCUoMA9ssU+soP+enoeIr4yml2prSwy5AMf6tBrkV+oekl+fx5YZAHByr/i6QeLltpjx+hcatjFY2sQDTWsTyEOidy2qGlF1HJ+k1aRtV48LHX+wxqsrRQ4AyRr65jCcSRSfIgga3UOPIk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au3Rfwpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au3Rfwpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA44C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746043793;
	bh=YQS4gBk2pVmpQNnSt/cQTeaNWMnWhdzb02Yz9TuufZY=;
	h=To:Subject:From:Date:From;
	b=au3RfwppldMAEdjvFWFDxFich2NVErn+jGa23sdwZcNm48OFXfe2gZtfbz37rjHJ8
	 HOG+CmWYdv24mzLHjRLT43O2ZoUuMT455hxn2r8Rc43R8iaaf77QGfhJBwyD4i4W7Y
	 fWK9sXeRZ6wtE5hygZfohaqnhf1GjP3jrNaTh1ORPLu9ouTare4Vd0NOqhLhdwCb5d
	 5VXuxvS6Iq2N6wMbfYAF+1mLoTuotV/AGPWH8Izt0AMf0QlqbqIQN1UVQDvDjAr+Qy
	 dsuddrFeLI5fSo5699z85sy0d1Er2oLrkZrVPE+Rq49egaroaLj8WtndseI9P+51fe
	 +Zv32v41KuuJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5ECC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604379357.5414.2721780268156357904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7766a115b38cbed5fb6b313f3c7b1c4a0ada7bfa132ae098d8f69e2d3bab6772
Date: Wed, 30 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746043793
