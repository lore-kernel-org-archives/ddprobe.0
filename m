Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5214337AA74
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779923554; cv=none; b=V2iSVE7LIUK9GjSF85iXN2E6pKwGgjcxVCUbJSacNUHnknRPK2lJkU8fZAjzBLpEHQlgjgR/X5g2cob56YhIJAX5ZHsqz70BXt8yMmcyRBdElj8u9UO80rULrjehgh8By4zPcQ8uYWOBxgZyBwtfbgs/d3d+APvrpwNB38lyLW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779923554; c=relaxed/simple;
	bh=Tis7gaNXoLo2ojp8EvW3a+4qUVc4l31syeX99/vVeFA=;
	h=To:Subject:From:Message-Id:Date; b=IW7H2F9Q849JwrNaHugoPACiKtGCRvTVFNGlCc97MnhdqCfiw0TGI5Zs7DzmFGWPCYIFhC5sONoed2hmgZszx3S+OVz0T5vd+PCZPNvnviIuZdIQVHagyTzB2ZX+PDaQU1QCzthhaQaDkfYmxaXq3chIGwmUbTySE+Wt+CAPK14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjVxowrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjVxowrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E5DC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779923553;
	bh=Tis7gaNXoLo2ojp8EvW3a+4qUVc4l31syeX99/vVeFA=;
	h=To:Subject:From:Date:From;
	b=VjVxowrN37bIMkoI/YuA3EEH7SNUJ0KmYFz9JZ4SoT1IiSs94I6QaPpt67SvkWo8B
	 8tURoRhf+l2r/bLLOfZs2Pf3OyKmhJzbqVXrzz2cb6MbgVQroIGZnd99eVKC0SvHyp
	 /AqVW4EWah81a2yhLJIK68xg7xw2FTF0EVYMZiiMNdAlBjOH5+hixEJs3qSHSY4J9U
	 y2uc7UA8k55xqa6am4gRGbatW/YWKAQrVOjMiZbGm1WhPn9rpQ1s1F7LoJdYCrN+1S
	 gfMEDC0opwl31lRB9Q4o2U+VUt1A6O6ENky72y2t6xcz73ErqstwUzwjfAbs6m7kUH
	 kT6+f5HfWqPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFDACD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992355372.11961.6633153881009279104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af14d19419eb655f605c14f8bc4b6dcf482e83fe35bec7a4db0c6acf38bef063
Date: Wed, 27 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779923553
