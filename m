Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331F121A458
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759889394; cv=none; b=qOXWG3C+PeFONOOnsbdWbeWgNkZlR+A+t3/vYkKPTiT9j6VwyGYhvPv5Gc0sREBedOmjv28HljvkC4yDI2PXdM/CZ2yNIXw6aSCE8x5et/UmZJCypWhzs5g3z4/o75Tl1RjBtLItZT+gbJ5FHxZGSKXfDjJg8M2Cg4pNMPw8NWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759889394; c=relaxed/simple;
	bh=c6LqH1sq74JjY+UomS6lAhcjq14xW/vErQbL2J2hlZU=;
	h=To:Subject:From:Message-Id:Date; b=e8zp6CvqGDwg2S3E2Hxoc2lO/HUXTGdfNBgNWJyHsN4tH5Yr7gl+t6ClfoCPXS0saa1Hmdw3pfLDvQCjioU3qFMKEh1MXkPpo0igL4fJ50OTgx4lYs/aIur/jQvhTXVDgLnQ1KVoxXOVnD6HR5gvQ7Ep/GW+JqfLuKD5MvKXAMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFy9O+Gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFy9O+Gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD4BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759889393;
	bh=c6LqH1sq74JjY+UomS6lAhcjq14xW/vErQbL2J2hlZU=;
	h=To:Subject:From:Date:From;
	b=MFy9O+GzczK0rb8ii6v3+DB9Xxp62Y0BF0QM5Hm34sBNZF8WKdcxIJmLZse8sO2WX
	 6wQyFRSqREAdA/Vh5NVLAuL2hacQ3eQodyvmiWAocfqyM1v6dy6jxRRgzgS/8Prcfj
	 5ZlRrGPb9ea05IKMB1UzMd/cvCp0NP0VyFxaAaDAC6wT4kmildFWZSb5ARMJvr5mcD
	 yWmkBg8C0R7/vhLZPQ4F0FQo0DN/EBZ/oRm7eIuyFLV7TDIDTjZsh8MSh3ARpq3bSD
	 IcmEmgQjMshFOAqyMz6LFxqqYRwiReAMwO875fKD1g1MHAekyCvrPsokRinG6QwDVP
	 BgczB8fWnDalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C20CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988939359.9698.16664601542150835126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7553e9dcbf72e0951ce7a29c5b3fe14e04bf3f5ed8963c1efd4044f5928526d6
Date: Wed, 08 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759889393
