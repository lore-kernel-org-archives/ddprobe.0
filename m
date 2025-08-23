Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334911F181F
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755972594; cv=none; b=qTMIyyRxGikPcqIea7EQdtKmOcnniTYevdtdjhmDl04WC3c1kYg8yXu+NO1Fah2OATrtob93MtLrZx1HVDi+GQbZlT7/Yqk+6PvwGy/9M01nP1lDXUo/hGks0wsCpyPLvPOoaGb2opCavrscW1fiW6m291E9JHlWsQGhFpGdCYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755972594; c=relaxed/simple;
	bh=BY9gxAqaOepWyO5Sve9vGCTJp3dYDDpz1vnfG6u73nA=;
	h=To:Subject:From:Message-Id:Date; b=gLJXxbxcbAewSLAD9qONiZUk/3GJxxESQmMGWjaKDRhPs8lyXva6GpDSrYQpuq+CAHmQ2CdqdpdbM5fWjwaRyRuW7rv/8RHU60Ac8mve3i+il0/SIttHeZ5M3AbJJuq0byxxjtVz5FVM99RmLZbLWjkBCC9tFQUGneirO7FM68o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inGLGQL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inGLGQL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C9BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755972593;
	bh=BY9gxAqaOepWyO5Sve9vGCTJp3dYDDpz1vnfG6u73nA=;
	h=To:Subject:From:Date:From;
	b=inGLGQL/qwyi7ZWCUN5TcvydkNRIjOJtgy9JoP+XcBeUIwvdm4gy7uOZBjWLWgSJ7
	 Jr40i+hbo3CNjobxfb2g5d9nCKwzmhhppikfTAREAzshxDSBxKRccrCMm6EwlYUgzW
	 5VIrdBcbNBG99GvDa+89sJUfBcPNaRTjP5cWDj99ElDO91C62406zWeNV4+wMViJg3
	 9RkDJbWUc/BR3UBIMo3e1ehhR9hLci29jZLXdmsdWmTu66aor9dHSgF9Oum/5HVhir
	 Nunc2bDSB/ztyRApP/OfF5OzjbioL1zoSNu4NiGHQAXFuccoHJa4ief6Oz3e1UkR58
	 0BiI4a47z2hJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D2CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597259357.13863.5362586528409774525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970387415034ab7a61245ec021e4f3a62d82d94da32f5f0ebf00e2ae1d944f5c
Date: Sat, 23 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755972593
