Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263912C08D2
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751627994; cv=none; b=JhsltBBJcdoOemJNdYROSxOCU+4o5Yz5W30YNkvl9YAVnFpHf3EbRSjq1BVh7b3MbyzaRWe5AVHPSz4Pcxq1IGFplqz6LGkYktlWrbF85UEeA2iTJXPcMZ3rdBSTYm3zx7WNgeuBbDeGlAcF14IvBE2i0RBgvQ6yAnp4dolSk8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751627994; c=relaxed/simple;
	bh=OvcsvxqnT5K1pYVW6BJMLB0L5z7MG1+aW1pr72SaYW8=;
	h=To:Subject:From:Message-Id:Date; b=rnUnxEu8DJpBN2yukaZjP92jQOeztyF7A1JMei2aHqpND4lnNfvdmhBmxcoiQDgF1pVPqkhdxCzijQrc982Z98gbEbPHqiTcjzTB9C8nHJoF0NCvXCWZUH725sdpZ21nSrQ+J13FrsYQRN7CvomTy+hFjIQFj9f9lJNFr7OWJwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJJhojwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJJhojwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA5EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751627993;
	bh=OvcsvxqnT5K1pYVW6BJMLB0L5z7MG1+aW1pr72SaYW8=;
	h=To:Subject:From:Date:From;
	b=IJJhojwpT0nY2rzMzOU93apTuaeU0x27WDQKVSN/vaTleu34tdrv/sVmnlJHMDkKt
	 TqPiwBtv2k44BSEdRHNq8GEXGrTiPF1H+mhhJaPqNGCp4hxYvyJ8kmZ/3oz3g1Ex7+
	 drcADBD91hTCMPXA4Lwzkvikd/Ri+trS8SivvxCdhrmJHO7PvTCD0G+by6RoiGhha8
	 DrUVjcylzwCjWJuQJwX9iFTTBX4hR4ZWL1Fsuj1fqFrgKWCnFYpEVlu4rjuo3zJDFB
	 i92NXKztaHx2yRbuF0z2p7HrmSh6L0rBzqi3qUxdcmUudXsRBDwqChXbls3aPA84vk
	 Li8C0ZRlno2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFA0C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162799357.19260.17184529966221693423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da3bc932a407337bb20da2b7e52a2cd3fd4800315992664fba357e68ca6ac54
Date: Fri, 04 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751627993
