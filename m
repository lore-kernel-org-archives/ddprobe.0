Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3426D363
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709857697; cv=none; b=Ie5bpIy4Msa1h24wwfwYCynXo1Y3C6+dIV+zI+BIBRjpabsHpMn9hd7S2Hwa2iNdgx5SDTN1dO98Qpmp+knaEPlmQpAYytGruQtLxM409b0q8LoE3UHDrBb2HJnU0j0WqDaVGWLiPOoZfd/NP9qyEFA1gvi/+6qr0EFFjcLK1pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709857697; c=relaxed/simple;
	bh=VXpcanU2nkD5J7VPNrinS9r+AkV4HPvaRHAJhC8cmE4=;
	h=To:Subject:From:Message-Id:Date; b=U7rp5UaNEwR9Il2iNcL9o+ms2D0aqCzIQGPVN9gGERS1Jo20VeKSSEjHbypAvQkvkX3bfHVltw76+fPTo+4g4EBuEqqRMrW+Dzks2IZ9sNJbINAB8T3VCxp5BwTZ1fTqnRJSSNhKMValAyCuqSLAs819m7zO7vrfs4AER2aMEoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Puyy1bp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Puyy1bp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B262C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709857696;
	bh=VXpcanU2nkD5J7VPNrinS9r+AkV4HPvaRHAJhC8cmE4=;
	h=To:Subject:From:Date:From;
	b=Puyy1bp6uLKLFnOJufZ3BnWDFC/ZPMvUA68R4diRqXVGrU3oiqOn6Dm6qk8uwNkhB
	 u0Xi9vx80EEDHZOf3k0tfNo9cOR8wJkUtciapzJpd2q0motCPruyX1L+KbVQD1K+QN
	 aLc7AadMhkbLEqD371NraOjXcImAwpBSP+C3XRXO3L8MT6KMBMDfHaeU9AthClhIUW
	 ksIUAS3xyCGGUgNXlNvckj2G9LuOJkUBZekQUw/FYkkns2ljRZEiBROcZoRs6nqPAy
	 TBRDzCPFziq9Rjw2B2G2VTCXkXKHD5Dyc3cBZJ6eAcA4SZbo44Enq10pC6W0AZ/QWC
	 WJzpNW4W5jEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612E6C54798
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170985769637.16847.4116835987549215923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b25e813e79a1e41d6ad2567630c73911db421391f7adc3f92f96984ab112da
Date: Fri, 08 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709857696
