Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175668825
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729649754; cv=none; b=k6KmYVts3HLxpQ7ryxVBzTzHPA+3Cm0u1Ukr6L3svThgZYZvodGS1ADHcsGsJQ2Ib+IXPJKY52QFEn9xBNo20WQqNU+X/8oHw/grjQ8LOO8bFYH+e68/YlyoCggOR7jJH2OAH4Wi8HHXKqR9byvP0IXQUiOIMevGLX/6iU6b1tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729649754; c=relaxed/simple;
	bh=fjPQDAJeg6KQC8BIRtHO1svhSSdQgcmBQfK3UGJ0gLE=;
	h=To:Subject:From:Message-Id:Date; b=QGW16oUDhFE5tnUJRgldF+Tsp7QCKxd1Utcrqg6fqdBKda9csbcXLU4TNmOU5GBf95x3a1R7PUI0QuSA4nxQKqHVe2Q1GH4iTa4/kSrV+6tG25bpXtVP6fMnk8t5Y8wy2hEbb+HJ/KSt4hyZyWrtBsM5kV82I+GF+WpLIxYRFDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaCCFon+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaCCFon+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9915C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729649753;
	bh=fjPQDAJeg6KQC8BIRtHO1svhSSdQgcmBQfK3UGJ0gLE=;
	h=To:Subject:From:Date:From;
	b=BaCCFon+hL4frUjdbZY3/Auo8QuHuqgwCJ5sJMCM6fyAmW67B9MWdVb1MSHmJG5qQ
	 PGcOSSBenT+ajhILTy+MRz7F+F3t9NhCJhW0v7UALRbUsO4jnCk/NKLzan1CrCspY/
	 BxNpSESIReaNq/SrjxRwm1AHu2sSi9E+vMo2Ed/m74goRvDx1nlhUUwOi/vnI5XZSG
	 rgnoCSpDp1S/J+2X9Jw06p2nCgMZuPPsKycZhNhGc77qv9PtELrxYc+0f2gHswA+ug
	 VDiNHHZHAVdW4y2Q3oy3588tUn1FENZ3TylaIz6l0Tx3IBoUyvArJYXz7K0GU/VohP
	 V9eIl4f+btU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96288D2E009
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172964975360.10395.8284543654837598878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b580cd687037187da4ed325e066fbfed5644203dcf92019b720d20830196ec23
Date: Wed, 23 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729649753
