Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F62814287
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718133503; cv=none; b=dOuxJVgw1GvUK/RDoRNN8O+4oDl28xJOP6GrXMATKZcclUQ17aXrqj1gO5g2Rz0APXD9NbqKbpm6rK1fB7n98xxdFfv3o2i4ARATvcky4kPaCUlaOJGc7TfSVmlP0enh8jTL2S4fjdf9B1NfOeVnAQD6vknAvFhHUn/cK37k7VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718133503; c=relaxed/simple;
	bh=OxYyx8R+UmnuwUq4+A/qKbkJSc6pVaqPQxYUvZYEL6A=;
	h=To:Subject:From:Message-Id:Date; b=aiVNZGsryXgmMejPtj5aFRuJTgi6iMXchQnwduR7cKYH5hx7xpE5RUogEodG6tElA3Y8LNO1yMzFbHs4rrGQBEsstxw1uGvwfDDhP1tNFqgXsPqNzWINQ5Trwszfclh8/+BoCRbJc3pFISCn6dyKFBkg8EkBrOBsTk5o1gC2l8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPJsnWqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPJsnWqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18B0C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718133502;
	bh=OxYyx8R+UmnuwUq4+A/qKbkJSc6pVaqPQxYUvZYEL6A=;
	h=To:Subject:From:Date:From;
	b=QPJsnWqFK2AXV9bqZcRh+uV4ZcnATRc0Tvy6AAwVQqMcGL4VoP9aYI1L3apwXTvSs
	 a40JLLqnzkPXDJlCRyZezCXqti8gHPPfjx6+dVd+Nv7xagQYW/06kHrUQ/CrNZ4YSI
	 O6X9du5AjYFC+8B/3jPY4fqG9Giw35fq7GTEHvnxEBEButSx59KZ4IHWOCHlenJw1R
	 iniTRwIENOIm6BiHYvxerIwdEBKAN31kK9wyv5xe4Fp/IjaSmL1GcAykrqf8XmakMO
	 L6Ksy5yVmRhNshwkwWXFkY54LbRWrmE1uOR+rLdjSYQRL64qTZ795YSI8YHFyMHqMQ
	 S+4n45EHDG+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0352C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813350277.22038.16501446438881561676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc250ea313f427e569b11ebbb9bc2d7512c754f2ea621ae77f15f2ca6fa243c9
Date: Tue, 11 Jun 2024 19:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718133502
