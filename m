Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AF717625C
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717079663; cv=none; b=ZJvRjCqTMaXS4FTDGsLGapGcVpz2KLdV0ZdHlkK7M3rwxMn8a3F3jQteOpU5et8Om3TYw0B/QaAnQAMXVmn7FAu44UQGoFzMpz+2Ean/FNmOM+5anJX1yNAtSEmbfC5hQePlD/8fVjEIls4Y1lbvSwJSJDwg2csNMTq9s835fjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717079663; c=relaxed/simple;
	bh=EgrPbE1714AwKPFBFekK7idkWSy3hOhx/hJq3JCbbDo=;
	h=To:Subject:From:Message-Id:Date; b=o/kvlApK1gHeayejJNPLYZCYUPrtCIK++4SvEw5srmWNgUJPmRHL1iF/Bysb8Mpt4sxBcQ8ZobYVNpUjhjUGwYrtNv5e57DhuqmaPj7/2uE3LTCm7YbqJT8bhNVYzmnyEzIt8t9BWqF8e8Ffo4YnCGzR1a1JcVNkImCEzA65D6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boFudKE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boFudKE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7370C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717079662;
	bh=EgrPbE1714AwKPFBFekK7idkWSy3hOhx/hJq3JCbbDo=;
	h=To:Subject:From:Date:From;
	b=boFudKE5ntOpAKJMJLPpuX1Ja6qEkAuSjquv4+woz7SLV1+GBXIHxgjO3ZOj6HxTT
	 z4iPCGj4j8FCvsJDt8Ye+vUBnDhVOpamx3Yct2CDhympJWwoMXqch1eG2zabqIN8si
	 S/x4w6PrXPLLu8jnyzkLB7l/jXhwaErA2/dOu3j6obsIBirXz++eYGetYJ7JU5hfzN
	 ZfCbIOX9QHN0vy1S/Sn9qauncNia+kgzvW88Xh6F8E1M+RBZXphVe9xY4sZ4N9NLHH
	 U3N/+tholP8jKMuAdlHu607luxKfEwfYZRZQULsjsvGGRp+5OnBrj34QS/09d1IVX/
	 D32ZOAubVGUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FB6C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707966278.439.13319948825153100997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35eaf2568a894c315f88723d6b31463024c111c652302d4b9d368b4a412ff94a
Date: Thu, 30 May 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717079662
