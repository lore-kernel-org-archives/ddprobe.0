Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303DE338F32
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755805194; cv=none; b=QCdh3iHRDorBEUS7b2gapzoP6J1kt5qkCEejsozfgrAwAuNs/c9+ifIUmNAy5PH5l8N9XZ2KDL84dkgQDFI7uXMNtLVl7zT7DJlEtFEukhx8LDqVbCWc+cke4IDQnBPQ0Q1+ezXgR+NwdUe3L4SgQjis3d7fYgNayzIjZSjKkyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755805194; c=relaxed/simple;
	bh=Bpppq+tQR44oHRydh953mJ4LD3QcC293GPoiQPlz/Dc=;
	h=To:Subject:From:Message-Id:Date; b=Z1pESgsVxbdLk36dSYhS6M4XEFHDvXmGxfNp7YdMKb8kP7VkTq+SNBuBf+uM52uEepEdyTZZhffrm7wfEtEUVMXcWmXQFZssgQMbFAkjpmwcBpOUn4Fss5YCnMm9hWynotnKi/8dBbJ+NSAajT3CKZokH0S2etvxXo6hmmxHZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8Q92hE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8Q92hE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0552C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755805193;
	bh=Bpppq+tQR44oHRydh953mJ4LD3QcC293GPoiQPlz/Dc=;
	h=To:Subject:From:Date:From;
	b=u8Q92hE0pU3GrJ/5WNqbJoi79a+NkmK+X+sGh177yUtlxe4tB0vLwrvg/OatKVXo/
	 LC+TdaP7OKtRvGblZsNKTv1MNyCGIqGlNrOn7H/fJjMzsfBsr+0CEratXY1d8qlHBt
	 hYLWxZVx95NrHEBgeqghe3mh/3UPcyMfAQ0w4rVYg0sNeEc9DJHNzytsMaYmaZBI5n
	 BjXLWhYw9ayDPyZrhxA+Q1LlkS7g3T8ggT0sG8Kcb54Emwnsb+OgzTy48/GkAmehd2
	 RK+Uzo+vaSONwHnSt7XgLb+M0BTPV51C/wPBdD9uX73Ot7cw6Sznytm/98oxaBUMqe
	 QylhHMux9FZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC3CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580519358.24840.8546531922181953035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4263a3dd3e764501d3617ec26966a0ab56a82db277077d0815568bf472a788
Date: Thu, 21 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755805193
