Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F5925E45B
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746820794; cv=none; b=OZX/rH2+ci+vgZ+iV1O1FaRxhs8mWpFFsy+ShEq/tOckHdB37NtGmDKZumPIsPndeXtSha133W0sXdIx+nCEpp79icRTblnrPwhoRISmcr0MyI2cRT+VNHtEDq/uzVJ6CE/BonW9/uqzTi/cAu/UHR7bnQGF3CC51GEANUcAFUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746820794; c=relaxed/simple;
	bh=/l4bwL1o2UlMrK6/pEre7e+Z1hk6o0BI7Cc17xlI4ak=;
	h=To:Subject:From:Message-Id:Date; b=ATKH/l/IpEFFS4NNiOd7vHqw4AcLoV+mruPwYDeGpOC8XwwkpQsuTORbReDJyIgFQ5RbevJCWTCckeZ5vm0lOe7FNLxTLb6SynFlekOiSenm64VDMkK2iQzFOrAJBJyJdpgyHTLbHvUSfcTp7IUhLaLR90j6jSwgL+FmenQM0zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2poYxNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2poYxNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80D2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746820793;
	bh=/l4bwL1o2UlMrK6/pEre7e+Z1hk6o0BI7Cc17xlI4ak=;
	h=To:Subject:From:Date:From;
	b=Z2poYxNA3H8+6KAhROidkC3jsyMbdHlPP3Nymv6+AiOP/41nM7qB+Rccs8u2w4OP3
	 XUjUVTGAgtHzUQwqyy2c3mTXUv77n4jD2rnCvSWHmGwBcQaj9qLXRyOY+QJUNEQ1HJ
	 Cl5g8f4HEKaXbVHRBuId7TRsZKo3SayvhX6VRs8VHF+mmuJZXgMxlD3jClf92KF/Vg
	 /qSSa5f8bEwkVB8XuTCQ8Ic6SuA7whGTws8d5RrJGsLB/DtNbPJxktEEr2CAChG4nG
	 uf2m+IJ2C2Yd+vX7eBM5q0GY8MHlNwiPZc/fE8EkjxSwMn3JFbbJJDJr0LSOSA8DgW
	 cRwvJG5UTfFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9454EC3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682079357.10105.11535234487687089120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f3bdf9735b339644616dd8bc56345d912f5266aabb5e5e8b77faef73e17dcc
Date: Fri, 09 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746820793
