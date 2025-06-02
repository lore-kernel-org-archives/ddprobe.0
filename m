Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391922C3254
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748843395; cv=none; b=sREAa3RW/AhLQM7BB8O0R1WNzy/RT0UAEIQmIvICD2OwfnFY4ovtpaTY7esuqScso9ad+LHDT1cCs1a2lS5JXuzXXUIGnMJg11nVcDw3JeSrueR/MCpPAGenDs0YXS7lkObtSNniMuJmPiB+Bkh75vjoVL4Nfjkho48mS2GraHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748843395; c=relaxed/simple;
	bh=vqRK5tBFjN/bhugMtYNW/PYdmSdumYodbGqc5COr+Ss=;
	h=To:Subject:From:Message-Id:Date; b=G1u/Bvi/kDQzVa2pNMmD1xJpVDhANnaO9y5O1LxWGiYllFX9fXqXsrfCT3SW8SPZinxIpV4RRTE8bGnjMSAuyGtA/ifuKu8rDim0YJK/YfzQa274MdW4XBOEgTlNlYfCcviqLoU0IPh1WiLVX76/pcJQLHtV2ZCY8YTn6r1O+y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qzp+r8Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qzp+r8Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A402EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748843393;
	bh=vqRK5tBFjN/bhugMtYNW/PYdmSdumYodbGqc5COr+Ss=;
	h=To:Subject:From:Date:From;
	b=Qzp+r8JdORxj3ZVbtV26NrWypWVcQAmFEXc5LJHoR3WEOJNFnH2kbOie9fXT8it2D
	 VFkqqt9ffmeYIph1N433n1vEkKh0C6qhnFNtT2uZ7KVGOH4SG5XwWOZ8ADImOX0EWA
	 cWaOJpNfTNzLKTbouPDQr+gdOL6tjRsKQYS9g9QxJ07T3/pU1g8v+V3nQugiPuezus
	 hY00oVxUU/DPY/EI3W1BWMBCUQ2lYvaxUZWANmVSHlD2PsHg0cyO9HjoY4cjlaTUYP
	 qLU7xOej/LI9ffRrFkRYQjoygPuZnb/SROLzlACYl0T4OmeCb9wIFsq/uUCAET+k7Q
	 k2efcorgVVMmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD4C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884339358.11543.3327659374536198285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71114d3b873cb9c4353d2532a2d8e9f12fca4e8480a3611d49bfc01fb4eef257
Date: Mon, 02 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748843393
