Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4916A341ADD
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786260034; cv=none; b=aylPvXyFV5gkoARfJHMR0TI6/UK5371kIZLsWHqkCZ9qMiqZS1N3l0Ho2b2lUFue0IQ1PRU5OTzrKTog3P3+FIqdvxToigbZ3gPcvqXCWeVPjfvYSFgMSB7FSdycdTMSNGgYc/8weht9KhkuZHesYlmxmH2ByHdxDCatcZGgg24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786260034; c=relaxed/simple;
	bh=sfz8Rs/t3NYfZ0jaIa5kFQmEgp22kUmjA7Xt1rqkn90=;
	h=To:Subject:From:Message-Id:Date; b=F2dH79KagI+j1ZjsFSD5yKhcE7aFB53Gte9AaYwUkvm1Mh4Bq3ZVMjXQEHzdMhBxjNmAxmtJWo0df+jztWQDvgOgoZsxzjFmEME4mvQAcK8VPZC8xl5b30Xe1gBjOdQBHvZhXzdYR/lpw1cTrZf9wMvJV0FMVjSp81R8MqiPe/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtxT0CYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtxT0CYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA20C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786260033;
	bh=sfz8Rs/t3NYfZ0jaIa5kFQmEgp22kUmjA7Xt1rqkn90=;
	h=To:Subject:From:Date:From;
	b=RtxT0CYBLtYet0VbabRB5+lwk40J+flT25+11Oe2CpZGQCajAMsaZrVaG0JUmma7Q
	 gHXF657q3/Hf+qKSlwk8+/OOIMRA1ITVu+57RQj8k/sIzK2J2orNsPklgddL8oztyg
	 R64qcl3oJd916zlkEubmy4jxPFH2BHT5vuMB7O93DqZIEAvqgggvIFr3jUcZ3brDL8
	 IP2LGoYeLtt8UehKpEinpr478Y4SXBFS6pvGZ3nRvFtGg+O1WFov2d/Cqyp5q5qZBT
	 OdtJsy3R7PEhhx4ctSPDWYAZxyc8JcDty6v3Gr2ZM/nl+OhTlpfdWYaqs2ORB35c9c
	 X+qqQu92LVcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA848C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626003368.26992.3442819697066018284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2ef4319e54f80c690e76ae46169b290d3a90e471ed3f309c32614bafba4f9c
Date: Sun, 09 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786260033
