Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3362D73B0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762974594; cv=none; b=RjFq/MeVtJBwyIBw3UZGndaWtzCswPhBei/Sioje1uijoYu3l+W2qR95/kimN5X0PUQ/pve147wn2MoCiIXUzqtXsta7bxm2Sx66v9RgErm/DuS9hYupOekkUzqMMrYJsR4fFgliFR/Bz9LHXEGom7Rpsf23iMj9Z8fszyoRq9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762974594; c=relaxed/simple;
	bh=zVxgtPw9MP0Ex90tZ+pMUrq39JfBWYk+yv/cWbk1Vdw=;
	h=To:Subject:From:Message-Id:Date; b=TB3M2hVmMOra8wePO3wjE66Hl1k5eDtGQ6XTnO81a4Dd/6L5JxC7shV3bbaS+6dHGvgqBpcZ4iMCD6S24c5QWHOrYgopmYFNYu4RsrcBx2mEBHLev4o4P6HvgtmQANe3NRe5mtjw6FlhpAP+efztr5dhj3FlRXuEvDUCyqxuQB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwPuDTEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwPuDTEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762974593;
	bh=zVxgtPw9MP0Ex90tZ+pMUrq39JfBWYk+yv/cWbk1Vdw=;
	h=To:Subject:From:Date:From;
	b=WwPuDTEgSq6T6MwaYhWPHZog7kBai3OnCB1iddy/pPVZJD03PSozblkrNRa8dL/uA
	 5WYiDxf07QNsfrobDSpeypg3/jDF2GoUqlD616ICOZN25Yy8E4YZpqMSjqMZKR8tXI
	 jjpT0eCS3vZO09naQZS/6Qc4pPviT0CWnF/NOKhq+su7OrDMk4bRU4h/ncUFKsx8WW
	 H3YSq0cv+X9syyPtc75K3aUhUUWGYxMGJCZEgrm41VQqHhRorbj/e0lRPMgafLoxby
	 n92wrx8P1tSGmfExrJQoifGSQs/XIGZJ0CpSUXGTgddu6g6OYU3KvXAgFyyEFN/ZLG
	 2vQVk3EGA0DBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D2CD3443
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297459358.15852.1025775167626915792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eda2ba3d4b4fca3091b92684d9c0fad8417002692884b1c959e9e9758fd4376
Date: Wed, 12 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762974593
