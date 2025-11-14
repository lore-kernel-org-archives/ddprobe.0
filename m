Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2622D190C
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763159393; cv=none; b=kWzyhUlIHFdR3PRY/YS6MlGUC2WOzfaCiDtk6aV+MggQa+ddPlKdjq/BC0J9V4vSpza6d0rtUXha2ypi5d/VDiQIvKOkULCe0nSNcZhuj1NHigu0dHhfqH2NnnWCf07QiRQl2DNzl6xk9I9Ydl3dLEOzxGA4EaS5BHP/EO7CQnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763159393; c=relaxed/simple;
	bh=45koGxVBR8051TOO4uhYrV9ucJ1huoNbSzhsHtlC6k0=;
	h=To:Subject:From:Message-Id:Date; b=Z85ZEgFeZW4b0b8OIGYr/D6fTv6xhw6EuPlaEn62G6VMUxxBiIdlNfLBruSlEPPqwdhmaWLe218tbQ1xQfvGzJIVKmKEHH3dn0aSXi5EVf2NSE7YH9dw+cTXaS0NhPpTxGi9mzPjYXHiag458nGxxS3mh5A1wwGJEAA0r/GzagI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOHNwtCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOHNwtCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D28C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763159393;
	bh=45koGxVBR8051TOO4uhYrV9ucJ1huoNbSzhsHtlC6k0=;
	h=To:Subject:From:Date:From;
	b=DOHNwtCfVxnkOazydZk3yzPOuTH/8o8ifMZ4NMQmOUn5idT1tmt5kVb3PsQrbOPOQ
	 veujRaYJz1y6WVI/HERDidavz2qVO56++/PmAykB8VemY82WS2uYQHyW0I5iHhQZCf
	 0d8Z2PQPPxq4MloV9IUgv/MKkApatk4ISESjHjENKTXq1sdUKjEQFz3eXfD/+JEIzF
	 P7xZaCRV1W6jIDpAilKDsOKxhtpgnlMwmwM4UPA9AuRg2itC8d4NbzEIikelSylI0P
	 8LKA9kwlbWBor6F4Qfl5nOD++ufNo5EQ9lMwKAe5lW3rsfmzKsCh/52pcALIBPejAi
	 a5NQb3S/vA1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A99CEACD2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315939358.17610.5011297140884018510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d219c38bb8d5b891a5a0596b77115861a20b4c727ce12c4ffda74976770ba1dd
Date: Fri, 14 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763159393
