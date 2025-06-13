Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417A72E11B5
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749832794; cv=none; b=Nd58kchvmrNIglpeGTDUZApCThOKHUig4xh7kVaPPW3sSOHhG5hJFpzUjjiYHHq1MMBAN+0R2+aUyYTPsSgPWlc8E3PTUMXTXtZFrZUjshjvJdxry5Prbg47C+iDHypb9ImHn5ocbu97a0162bPmrZkPUNaletMH76jkcJcSVuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749832794; c=relaxed/simple;
	bh=lEcpIm6E5Lzvq6oQ3F543lm/41EnMerBBVmDAE21CUk=;
	h=To:Subject:From:Message-Id:Date; b=efmbBPHXrQ5vmSvz9bTKqc2FyzgowgIEKtfsYUqGPPzC7t24s1irPhiFuEITtD4iX9NZ7/SQp15QgIES41uM3eMGUQ4ybYdvbzu3pUE0F4a7RXxOTScqAMMSzJHzzMC5upZzc0z2Qf1PdC/PQkri8vB9B9Z+6obxG5kF4w1uwH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh8A7VQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh8A7VQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AFFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749832793;
	bh=lEcpIm6E5Lzvq6oQ3F543lm/41EnMerBBVmDAE21CUk=;
	h=To:Subject:From:Date:From;
	b=Sh8A7VQagPbITE7gi8MSQF83YIaWFSYfN5TNF5DED3dN+MnE8lMj0tYHJzdCqbACC
	 YT2oBHFpUTveGbZZu/Pc3tY0Bb1+JykkA2HWvbClr3uBDA7KMNKNVuRb8kRD3IcEkq
	 aqySmy7wMJHuBfvGm8c6+eIMStsqUpJeuc7l8DJ4N7kwJbxc55zuxLxAZmx5XqT637
	 9DjchlosJF7bCKvDdqSTyc/DPrLhN6ZeTrJt5nbEAz0BsxFljMAmNxKx3YAcvMNitn
	 7ni22le5tN0EkZoXp7aEknxSh38b49ji4FFADb07w3IvLJMiqV8Vkcaw54inBahEci
	 ra0PuN+R3sbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93964C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983279359.21056.4594609858527508987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279a1aaa3cde8a3fa7c7715b98992650ef74c264b0819a03de07a770a1c06f15
Date: Fri, 13 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749832793
