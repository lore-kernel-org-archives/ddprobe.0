Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F8221770B
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764667974; cv=none; b=Cgxbb9ThMty3GZxtTcDnqrmPY8ffhh7lu6h0aiAqc9NxWIxR5EBpJf3m4R5Jf7CXvB/2plK0WLmwXk+H3HFwlbfcr63b66rzbA38jcKmPQj+hXoXdS1fSyp7bjPzHceDlpAdw8DuYlgX/i19l7yI4qrvL6VvYGis5U4R4bSxjWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764667974; c=relaxed/simple;
	bh=m3OBDTmkvkRwqnKqCa1qNk7nCf7agzmtWo67UPimmYs=;
	h=To:Subject:From:Message-Id:Date; b=tBK1k03YJpqXamsMBksJNTQcCZxpe5nM9sBrx/VazOKOf758eNgzopKQMBoskFSyfWK+At7QuRxPFqx5c/Q0/2knZA/oPXZkn1JQ0GDtH8zhrCjG7s611G9924RD1gSVKurxXL1V8q1kuEsY5uslX9nq0mvgXpQXOeg0Jwlw4xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjpH5bm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjpH5bm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F570C19421
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764667973;
	bh=m3OBDTmkvkRwqnKqCa1qNk7nCf7agzmtWo67UPimmYs=;
	h=To:Subject:From:Date:From;
	b=CjpH5bm90XBu/mmTZ+s7aflYZ2A0XZ03sdZwQu2bdAoy8lDk37A4DKe74kAE5e4Mf
	 f0TrXX3nZj5AC1eymzYBGYLfkBVbVC3qjSGQAvCkFjK9UeMSIY71osHVUx6ldsZT3N
	 o7R96r2WPyeUPLB+WreedxP1ebtA4pH+0fD6AOBCDX5jwJAYdN0zTiHeoy5AvcBnvj
	 c7k1EIBvf7cAiZvgdDWF6d3RlmfC/JWk2fT0Ulv8gWfqm+f4ZhKPYmaK/dhRQSGdx+
	 HlZbAdvRkUFJWHCPqsEjt8vetOvO4OFIaTDQiRPcFXnPRMJt9WqWiNpEru7A8bxuMr
	 vJD8tqNE8hvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90395CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466797358.13572.2451155400510654293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62711db5ef217be27c894a1a8ea6294e96fadd8a40116e49668926e7dea3a069
Date: Tue, 02 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764667973
