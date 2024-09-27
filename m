Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B48B184F
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727416554; cv=none; b=kqrbO+zWTtGWHGPVdZqcJrKG6EvetL8WCZayr0rVpP/OrqCtUcbgrrGxR/9OBYbcI9t/K6b8gxDpayf2DbPFP12NtDcS5qQivfOxl6o/it0IkVx83tiqWGuTHEn0L7Ge4V9QOmi7JThOnCEN55fRuuYevOO8if7CazW/u/ZpK5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727416554; c=relaxed/simple;
	bh=AG4lViRti6x9Bs2etDTXVHnoilO3j9gepG8DxExczXM=;
	h=To:Subject:From:Message-Id:Date; b=mbyVFNFLVor9YbM9hLI7NKjN2SqbRsWd3IqVfWURZVE0pl8KsU9rjQ9g1Xtj1d6GWt9bylxjxGAzujpNirjEGKKiOHNL12UXe/Rc9tYKQze0mF6v1Px4waYNyQbkIq0XeDXpjrcCuVDA1wQZos/u8Gygm2M/2rPAwBcETmeFyvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0Yv++Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0Yv++Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D20C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727416553;
	bh=AG4lViRti6x9Bs2etDTXVHnoilO3j9gepG8DxExczXM=;
	h=To:Subject:From:Date:From;
	b=I0Yv++DwRTfhsThRH9cJMfFSHJpRNIp4CTSVHSQl3VPX/zN4ENAb0A+ISir+PjeqN
	 /WkASARSt7ucidRYoZbfiq3OiJz+S3GCgEUms3p3cTNWwRWZjiCN5H1HHGs1tAqMv6
	 J/3611J6eyJI6SVGMw3c8od9qEsBi7Tr2wfnKkZHNo3A8yqVzSGhhhYvpWYQjBClYc
	 jpjQsmO8WS3bd04k9kNXHKs9/uxja7mSO4XQjK9AVIGNRRMlIBLTue/DE2Sr5o6B0j
	 gAFs6r6MQf//A3pbXnhlm5c/Gr/c3kKWwc2LO4NWaZHkmMGBtfOXslmmVAWt09ITgc
	 BsBZfNlIxQ4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9437DCEBF78
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741655359.20485.2232956353931744873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6230a1d3bba507d3be99827cf5d3cf2e79227c8bc378f03eb2d09068067ada
Date: Fri, 27 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727416553
