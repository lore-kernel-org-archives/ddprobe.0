Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649C8635C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742795394; cv=none; b=Y4SI4fNxa+7yXRmVQ/qpafn/cXsr8HVuUPGtSnpK/MXIOcqHoN2Q9JSjMFfSsPRMsTMnmuEgJkfNKtbX7NkCCHSBRyeoaBQuAoWrlFIOb1i/+D4zhbRBnaTrSKprQYnlJ4ksqie429nta4eQ6PoU3XnvV6H/dZHyYI3zedLDDh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742795394; c=relaxed/simple;
	bh=JDx5cW5rjCoTYFT1HzN2Fw7AcyfKj47r2GwSPdvkkIY=;
	h=To:Subject:From:Message-Id:Date; b=PdeeJEvYTXfhiRCTPg5IctEIi3dhXufQJVv6vcQFLiVA7MNxQNc0NlE5AjgtaaPQU/kU7AJjq86KgyyH+/FIECBKWWUynhMTR36QaSwW7lD6ugLwmp3rnmCJvk0DghD7POInn957SQs3EMduBMTmoJrwichxvhY1r1zet7zCXaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQsBigWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQsBigWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE23C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742795393;
	bh=JDx5cW5rjCoTYFT1HzN2Fw7AcyfKj47r2GwSPdvkkIY=;
	h=To:Subject:From:Date:From;
	b=GQsBigWrGdhlIdZToFqULu/w3OMMgl1GwsuzHSw3iOGeTZEQnYoWIQSbcn9WJDKM8
	 dz+ORUoFmP2yDhzCu2rOF6+RbZd81zn4Lu/ROJymOi67CM5gxe4vB8xrPIXTXd+y9m
	 0w6w409UZfwjuLVr/P6aLzoYS4wEKTZ1pRvkrrNfdcYC/PxKROyFnpXFEjIGeGRnH0
	 GaQ3lRSovEt3kDOm2qDjRg3cDoH+T63fb7IwdnxDKiqGuvLfiL3YNmMRSViggqwqFi
	 doiuKHhtRERReKuqs7QnGVd3YNGtiWbCV2Unan2gfOJ1VjnNPyIOlilr4sJpP8b+PJ
	 0HSgZ9MffyJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A500C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279539358.23490.6453743771208310263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6864ddc8681190c3e1dfea56603f90c2e89bcf7f1fdbdd7c2d483cb2dd4f3f3
Date: Mon, 24 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742795393
