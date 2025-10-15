Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD5427E07E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760567994; cv=none; b=YCqQbNIOnWD5TDRLjAe63IQpf7llqAh53ZWTdMoDXiHnmZplDijHK7iBnhz7KuIBmAeoSrmuW+4wMIZB6XE1bR87KCuzEjctFm7Eja1zhxxCL9OEyoX7GN3Pno1z+mnBySMvXD/er2EKNC7jKUAbFL9k9N8TETC+raMripBNgI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760567994; c=relaxed/simple;
	bh=m+fxxRqlNbDrGNbK6/p8Hh9qbu+n2XyVCCZ19UNM248=;
	h=To:Subject:From:Message-Id:Date; b=dfF7I5G41JAXPCix7lwQ3OGQ0dcU5UW2lwo2xqu+B2udbQ8oIh/FOrHc/1oM0sbbU+ulrmnQj8TwNT1qPj5mPrN/AkqlXQLlfiymGGWVXH02qkaBuVD33kovMF9LjK6RB7HIc05k5VcnuhZ5fZHh0riott2BCFbRKjLhoIi/Fdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spou9IK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spou9IK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4563C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760567993;
	bh=m+fxxRqlNbDrGNbK6/p8Hh9qbu+n2XyVCCZ19UNM248=;
	h=To:Subject:From:Date:From;
	b=spou9IK9z4x6bPd3964ra1hcplz1YcKHHoKQj3PoUdkb+ZfAdbGE5240+jqRJGcUb
	 xee9ZoEPrQpDpQYYpapevjYdM7Qh5EgTG5PwP/RQmIs7TOmmi+q24PxNrB8yWQBzzx
	 0XRBUnu2lFNS4UWEcR7IbRtZgFYmdJG6RwutZxt0QeJHF04Hs/02yOmu2n7bU3rSBA
	 rm8zQ9Nlh3W4zn+lRl/DgewATfwDBznzvl4q39iRH32oisjOXDUmrDtEWntHUkJQfz
	 j2H+nfY0+8dfDZe7wDAAoKNd8dLSEkNpvEN88xWQEMtJ5VR5KBCGc6WaXOQpKsjH9Q
	 iFoAlX2xZMC+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ACCCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056799358.13624.10200300259306526956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c093f918741398a0e2ff82d35094b435c3a0c40500a87ba7f02ef49b33caaee
Date: Wed, 15 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760567993
