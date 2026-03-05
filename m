Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150A9BA3D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772702694; cv=none; b=h4181Z0B8bKuCPPyRyKzX9FAOSnfSB/xWvE2VvMYE/ma7W4NTYVOoq2wLidHBbEiwzS0tAGpB4Zf+DFo6P+IrEFMt2xZS6mZxCAQNM0XC3PtdwblGz2+6gwh7Q2a6ciq/3DjKehFqHX1cfbUkF2P6xJcsIacXTy/qF0oKmCjaRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772702694; c=relaxed/simple;
	bh=6iA3rhPsW6pZF7Iht6FTCwdXg7pqaG30csOnWz7crLs=;
	h=To:Subject:From:Message-Id:Date; b=PG+tsSedoaCHQnQCZDYxoroD9fUeMx7XXtwKr5btL9FQSwCLfEVT+oexYZKHm7DQ7haSbikyZsYVd7Mzd47Xn+nAHiiFT9+Lbd69kQhNN7G+im4nYHh1MMGBJox2RjsQW5Q3fZpi++2IwpJKvk/gcun0KSIZfcJd92gRRFoIlwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJPrMpT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJPrMpT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F24C19425
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772702693;
	bh=6iA3rhPsW6pZF7Iht6FTCwdXg7pqaG30csOnWz7crLs=;
	h=To:Subject:From:Date:From;
	b=mJPrMpT9/EQTK9FySaepoVv+NpcYkTSewCG7KnQa06czGwPvicVlKHd1bMljK1Qys
	 OwaDyI3cmM6CKVtG/+LAPTlSkSaxix9G4ikN4IOEbLhVmnz+WmjIqebpdOEUTfXeSR
	 kcokSfEzUavEQ4e8iib2Z3L5GRRB6pIu/frsMBqklGEawiVSzroJKTKabLH4lXI5S/
	 L8+OR2R7HOMSbcxR38JKm2xsczIr/C3RdTol/vKFrohxjz64hqOazpx1AVGjMBd3dG
	 RNwdXoOu0rSPpl8KucNRUchly8M6+qeAie425pFnZeLudnDDiffOLcgpPRwuGnujIA
	 KmIwNJUK8XV+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FDF30920
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270269358.571.12351256210542910721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99b3c93ac41b5630cfc6f4d82352edfe5b6be416611b2ca443b7c7ceb081f9b
Date: Thu, 05 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772702693
