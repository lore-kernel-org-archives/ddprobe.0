Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCF1145FE0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780430674; cv=none; b=Jz4s2doPeVfA58cX9Yz6uheURnc13uHsX34XUzzagR/kXQnIP7cQvnfUXJPq9+LYivXzwtxVngwUAxBVlDvSLT+BEETjlxNojr+CMLVAYsWuo/kwszRqnpGoDPyz1j13aij26/Nd12GlskDGUnb9VwNFSQZMFisoxlfp4wP6zpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780430674; c=relaxed/simple;
	bh=5DOSEEdDgeu+CAUfleqfmNak7UA6pRS9VCEgsz2AjwE=;
	h=To:Subject:From:Message-Id:Date; b=Ubi+UmsIXi+JflokZDhejH4Nap0QDPXLNLUgVjLPZEkKS/vWeF3iuKhxf9brGx3Lk6X+zZEMPJ2K/4TB9lXyM16p1GtGInay03iZbEWFKcVBQFe92Lt6n2vEykjFRD2yqJvHnKSilPxqyNLBH7bKZ1mOcEi8oCS4/6FD6A8JtAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgtWzkTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgtWzkTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D180FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780430673;
	bh=5DOSEEdDgeu+CAUfleqfmNak7UA6pRS9VCEgsz2AjwE=;
	h=To:Subject:From:Date:From;
	b=PgtWzkTXZQOFD5KPwSWnNb7Zg1b+gbAhJHE5wqHx+1EnlHRZ/qcGcz1bZ05RZ2W44
	 3xHEzSiaLNoecw7U/qpPMUal7J9Ahj01vrU7+1gzgP93rgpIR+TiK9WXZ+tiD2oWFP
	 qv3tKPd1vYAQTBMttz1fOgtTEL2VoY0kygWS2jwaWa4EfOhOqoMmGtvO6Ft+E1Tdx9
	 nETdWNchg29kOCMUcrdDDRAt35mGZEveMyl/4HN77Z2HfeQfKRPXDe1+oFMUsQ/YIl
	 dIiOo/Nl0WGSwZb6aQMZoBXUg2QVBJnm9rd4RSx1WcEJ5ZxhQJC0tTXqcwowY9z1U3
	 Ohjg1ojIHMERw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E16CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043067371.8768.8323183286847412933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429ec88079cde70eb1aa6fbe5b7eb626353a0b5ab19d967b1860ea466bcd72d3
Date: Tue, 02 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780430673
