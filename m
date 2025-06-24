Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4344324C669
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750803594; cv=none; b=Q97455ASH5nO5OwCMY0Ysfs92nwGrwFf7xEr4/hZNtmmAsIRkDTXMVgUZbHVfcwLGrOhMCL5s+VNabwkJZNgVBvl29CITDWtj4dXhuDMnGx2ZVm8XiY9Gv9RXSRNr29eeNtpvRXD+n+yqeUy4G4Gp9B3C10QGiBDGezoGS7M92A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750803594; c=relaxed/simple;
	bh=/cpz4LdoW0RH/2qFyhSPK5aVDU9NEjwWH+uJHQj32uI=;
	h=To:Subject:From:Message-Id:Date; b=Bq4rUkq984XcQP84ZlMIosZ26YIePpI8Sy3WM+DKj8fu9SS46pdY1M4beCBPQlTbtoYavT6jfDwhp8Acrpgs7NXLVTKDajLV5daIUyS8qh7nWlChSaeOn+cvjQSyf7/cKjHjelLnTIbdL0xX47faRp5qXbngVy9E6PvskMHE7BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoqyGSv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoqyGSv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1877C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750803593;
	bh=/cpz4LdoW0RH/2qFyhSPK5aVDU9NEjwWH+uJHQj32uI=;
	h=To:Subject:From:Date:From;
	b=aoqyGSv7x3b0quMzVhQI2QTdktgzFR3SjMVs4UR7uMs7o4uYGmcgsjdZSXWn5QZih
	 JGA02KXhWAqRwBEmhqO0605PI76CYob4ME+eXJ/2qpWNbnX7VSk5lmVDF2Ep0S/3qV
	 1He/isYRDAffjd4469t/lgjKBhgSFh2ZO2mzdHfkmJk01IiLbuuI3pQMBJxiyjHtmX
	 b9dXAy0WSH9rGARljjtmgwHOT/Y7CuO3QKX2+Fz5kqvHZXcezUFv68EwD8UCROqAvR
	 yWiGDXJg8pRtrBjnbPDuE3uqIsc2R8gAfwuy5fjaGhgI4kci0I8RFUXxdUdrbUDvod
	 fVrDcnau5Sfig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ECC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080359357.21180.10126332585014611783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203f0206d251a5606e8b59735bb1f35368d234020d9bbf23aa0a6c8b967b530a
Date: Tue, 24 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750803593
