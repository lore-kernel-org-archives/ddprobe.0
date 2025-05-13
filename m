Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6C328DF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146594; cv=none; b=eX/ZrAkHiaa20cug+4cxi3/fDmPmVSvCyHjHtIYq9FReLPAqVgTqwp8HL1pTQijof8J/fphk3GcbhrHgtPAME1wQA2Z6HIst3bohl0Ps8urzuGsjaLVjdeDqYbxvxKhvDBZ35iuWyYE9du+6Dld1zmW3IyxRc8YMLwikxdBsfQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146594; c=relaxed/simple;
	bh=qjvwxSDWAg24lnDlqvaRoIFDpe3vDpfE2CtaGD89wt4=;
	h=To:Subject:From:Message-Id:Date; b=EYftL7tDY6e9PZuRD1C6Qd1BZmoBQPqdaUSws/YmnGgM2lTPoiw5iMBFQmB3GywQw+LlkWvJwWmJ/NO5lAFiVTJwCK7PgynZQ/S/Jq/XGQen0n1Ac1CTZHjk7r0Q00MVTeoDfwvSj5EKs7EbtW3KPuVqsgrC3cRkCI0Ta3vVpHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ro7DuKA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ro7DuKA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A73C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747146593;
	bh=qjvwxSDWAg24lnDlqvaRoIFDpe3vDpfE2CtaGD89wt4=;
	h=To:Subject:From:Date:From;
	b=ro7DuKA1OSFSPJud+v6AiCtIYT4QAZL0J0pdIviQ2RwGWUFYYbNsO3LGYYluNTZ7/
	 ub9ssSDaf1MefSUMNln0+dth+rG1Fxe6rA99SM3qEXsKVFYJLj1Ul/rm2IOEL/dJYb
	 E3Yp3cd/e/hy4qNL9iwCyWkS5ThqUYjpPraMnkOma64JsNd0Y7+97QHRJrnQwlyoUw
	 qqRGI03myNuzFwOXRZTZloK+NRHnv3WTadFPz6ghbAS15lcGaHDAi7KXmt3wVCNhuZ
	 EW4NwbtNAcKNGuPvHopBXiNXFVDp26gD2WoIRmPM6i75UZY/P4Eg2EsjNpVm7nnpxU
	 f1KmEO6g7rlSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F657C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714659357.6663.3957437772178400578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e264134b297a993f6892b027b6ae5d67af61e0b60e377f24e8ef27b78c8fb4cc
Date: Tue, 13 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747146593
