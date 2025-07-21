Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEEA1AA7BF
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753139394; cv=none; b=ljY2cKhvjFif4oBNbSYkPlciyKEC3j4mSZ+XwFxOIzqnq/aDJn+nLTk+4nHM5zj1AHIxoI43HNmGLPjr33WQ046QLqk3QPJkrXjbmgOscvjINS94Pa7geWATDGB5P61vaGrA+r1lO1qCD5YILP/UFCRiSkracEN1Z+43U9YudNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753139394; c=relaxed/simple;
	bh=Q91PBbbaLWW9mjYxzjQ8bnwX8q7qbjF3nhwDcUxrY2w=;
	h=To:Subject:From:Message-Id:Date; b=Cg9NlaO8yxC+XR0Jahd3LAK+okTXYcTavWaSO2DsQS32BwkLXbSHM1kTISs0kXCuoXeBDPHoQVRHf47irCGV9mXzEcDx2QAi++VZ8Y8IAP19KkH+ljq5xM88NcMMssHIQQLK/TeRdzlwtufIZ3tP3z0sl+6U7SktERQwvklybQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fauno0he; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fauno0he"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E429C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753139393;
	bh=Q91PBbbaLWW9mjYxzjQ8bnwX8q7qbjF3nhwDcUxrY2w=;
	h=To:Subject:From:Date:From;
	b=fauno0he3cjf216uGTjJnwmhA4btKqmnM1em+N6v73BsKpy7EIgmt460Pm6Cu+eVP
	 ABpUklbMcceUdddI6IjrvE7cHHJQUhxNab8bumj7CzDN4qk1lfFR6pYhyWfmd7tpx7
	 ewovZTAsoAqKFpgLdfqoGk5ghtAKCzqEMkdO6LlBBn4ty15ldkxcmWfdtdcpu/S/oi
	 ODbG7pSqZXWVzM6uRUwgog/3uT+tYisuE4wf+BiaWmOY6nCDjHiO2wq/9jinw890fg
	 T4gsKbGRasYEQeT79Zn9MYxxcmvKYxe8g5PnWvBmujY4N1/thvpAIjGq7NXjsBNfcn
	 YLgY+GFqdPkiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B5C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313939357.26826.13902319086170221230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d2308b7730c2226cbf8101f61aadcfe67e38f8d365544c976d889cfb432f90
Date: Mon, 21 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753139393
