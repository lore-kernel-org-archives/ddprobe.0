Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B08366DBB
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772454294; cv=none; b=Y10fvN+3VQp/VAaMg/PMIJqN1sqqWtWrzXUk8UzmRpJ+CrKDrNw9rztki1WeHImTKkfGPd/WtBc5BTRtrqP9dxK5ITCFWOJLirDwOhzOVPhEbgh6qL51ATV4Ue1Tcp6P9koP2SoHPAOcRAunYpa9RH5jBjVAvLRLEAZUp6cgnes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772454294; c=relaxed/simple;
	bh=uc+ICmbmVynMLJ0yUoHKuAmP4JP/nGQgN+GvahVbpDg=;
	h=To:Subject:From:Message-Id:Date; b=IB64QiweG+MMgFbsGwg9u2NH9FZhN4+TYvNUXEYHsMw1rg7yHLvdqW6qnqopo6g3E5hFD1pbe0Qxlqf7AsNtSJv5WiZGESwz/lZBZHxBv2/F7Q4pZWQwHVrdXAaNE34rKou/N4FCIInDls8aoDPhzXvFBxbAOS4iCzH9zJ4E8rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rmj3pQMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rmj3pQMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB69C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772454293;
	bh=uc+ICmbmVynMLJ0yUoHKuAmP4JP/nGQgN+GvahVbpDg=;
	h=To:Subject:From:Date:From;
	b=Rmj3pQMPBIbPZZ7UUrYCwDGqKx32aiO/8kRKJ1UPqe7o2vIp17x4Rv8lR4gGwwlPO
	 0CwpWaWzHmUO4GGOadU8NKYVkREqWqGBAwX4NwY/Cvq0E+w2kiEHugTr4wYcWmeykN
	 XKLG1u4CCGa3Skz8DI2Z534JKzY+i1uUsyCMPfHIoQJHKurx+Vmen8SR3WJS0NXM4L
	 +MAYaSKmIk2eEBifBzZZurvbKeQ7fXHkdmp8Xm263iOnwgMMipf95mPoivrcXxHtUs
	 haSHscm5Oks21/L/oWCmc2eMp48HXyM1fHi0wpDUnHrVS6c3hFohaBeTULgbAn9UnN
	 g18G3rlELUTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E9EE9B36D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245429370.1702.12192956966731512213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab7648453d4c0b75041ab1b1d8527c1e0fa4d6ecc9d5161505f02fd490ba9a5
Date: Mon, 02 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772454293
