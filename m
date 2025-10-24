Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7251E0DE8
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761333594; cv=none; b=DHLSzrT1mFlQxeGAyhORq9FB/OYtxwBPqhidgFnN81GPVpU7bP5Eo8ATKhVBDJhmEW6mAOssBNcgA60Wk9GoeS2LCPGD/kLRFkizJ9OT/whWSjgfy9lcYR+ExarhjMuA0ijl0vLcgb3CO0ybiUGZzdv8uCzcP3dkxGaDLm2eTVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761333594; c=relaxed/simple;
	bh=GfiKiF3kW7RtGWg1f4LWY8NS4SOMqkGj30ZmHKZDKA4=;
	h=To:Subject:From:Message-Id:Date; b=XOHNpOD4B02UFGEZfTXwZn038zA16XnKB4tFy/hcJYftL2shDzZ5CSBOVZHJgPQAbsALBYM0f7RJBlSsavwQOB6brthKxQQQchSxht7BMBMk4BWPE3dbgbkQt8QLaoykXES+skrxlTGF87VSwZyXGa/loRPX736mskRSGG+PKo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ng7/nINB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ng7/nINB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1B6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761333593;
	bh=GfiKiF3kW7RtGWg1f4LWY8NS4SOMqkGj30ZmHKZDKA4=;
	h=To:Subject:From:Date:From;
	b=ng7/nINBd1GO6yrfF9ZQP5Pe/3gwj/eztaZ30YkKp9iIa6tUafyC9pUFbiBpXCxPR
	 y75ubAzFeI74xHdZIZ4o1/IvcvTVQg8895ZkofuX4NR76YPrmua6HtTN/0SgqNezVP
	 Ralj2tBm+O05efD0oEdMPAoge6Z6of8phfHHHp/VjRhcr8d/ICsEGBJq1Z7VrGNk5d
	 GfiOWMCAH1r5RfpnqEWiJZb0MG84TyM+mx0VzBgzzA8BEFGVjW1RlVw+pkTv0TB+BC
	 +dXXYyZ3xngSYB6UF8fS0myTJnrAlCKzXfVFY+kdzvCY0OfPEHouwBh636u/N6Jr/X
	 oESLOM/+t7aPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98303CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133359361.8212.10189311190974802526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50979a0610dcb74057b7914426f02b0a55ef14bb3e2e8cb347ffaf2986f313b6
Date: Fri, 24 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761333593
