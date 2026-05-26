Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0E4A0C
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779754354; cv=none; b=bKW7DBX54yqPAzwvIIwV2paGQJNlZrs1WWY17muxEIUQnXYg2z+JxmIE09MJzpJ9NofWlc1l40cWiQImzpWO4tV3IbO5NbRjeYgF8N7zo49bGsyAjp1B/lQFbyYg3mSqiF4QVhaQukHBoKn3fwTcqSWZ55pk/xs8Sl50urvSShc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779754354; c=relaxed/simple;
	bh=3/MV6+eeJD8VlIdr2haXOoU42yu2vCi66UyHjckwpSo=;
	h=To:Subject:From:Message-Id:Date; b=czKrUQY6ia7OGhuNVM5/M9xScE1y2/Z3lZ5QsSzQpUiqWsA0COC0H5K6LF3q70DvMxbaSsUn6r/xPrL27y+k40YpsiblZF8CVeiqINup2whjokXEirTTAteiZjRrl0MkxC9t/Q6sgV2/P3NrRl6qmEiT6zrJaUUTUVe6CjhdGa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdIvd8fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdIvd8fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C0DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779754353;
	bh=3/MV6+eeJD8VlIdr2haXOoU42yu2vCi66UyHjckwpSo=;
	h=To:Subject:From:Date:From;
	b=QdIvd8fyaRiZHOL2B4nuHQwQIrgS+ijZZ+jvOn3ONjrotBxZGu3YHmgxvR3p6DwpH
	 tinEq4sKan2LluK8XhofoGfvZ+gQ87AF5gn5MHLZq/q2wnG6R9HWjiqzyx7Te4hZHT
	 Yc7ML3leXdLUzppcHOb2CUJDTReRQVBWh/NtVBStkGLmSrqtbW2DPDZ7Vrpn2UJ/c6
	 RCXplxJT7oM4B9ur03tYf2GyiGU9Un8JWE7qx/1YUBTVsgztU/FDfmwsUcp0+mLRXQ
	 IK92Fbxq1ic+yQ+aElUcLu9kA0UkdbDu1YfwkAK/7FBneyfjO3vNaRqKEQF3AMf+Su
	 q89BegLRf4M7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAD9CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975435368.26244.4449781915173645126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec5b03cdeb17bd18f567c9061ebae97e1ac27645666f712d8122e4a1bba0e34
Date: Tue, 26 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779754353
