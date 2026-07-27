Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF013C4B68
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785180634; cv=none; b=s5/lt9PAMl/6epTlu1lhNbCLJt1Qj+BiMMs/qwZckXakmLj2PQiCbs6swDoGwTTOAiPvWu+t0UuQIRIKR8VJjckSsMgpp1V+/WFHkxyglMp9hFQ/HcXBGyuhvzivfIRvue6HinsCn7+NcdAT2oVEpDS0yzl3ZsgahVzCldrV9i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785180634; c=relaxed/simple;
	bh=+mYhJ9nFdBiDOeadiekGXxma3jBriAzg2GWh3sJWSJ8=;
	h=To:Subject:From:Message-Id:Date; b=anJRrBP/99mIAlQFmdnLksZByI1+rqO3939u3X3BnHChBBrwnRc7BpTj8xYIseN89c8OdMDQXTKhQeLdMGZpvosp0n0rVWaDocqKF9yIMD7rJdCZNroAtMPM5ByzMeWN0bfSCaiCTC0+eT0Z6Mr26aBr8/O17ZF9WFbQ1r10OMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLY1SsxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLY1SsxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFDCC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785180633;
	bh=+mYhJ9nFdBiDOeadiekGXxma3jBriAzg2GWh3sJWSJ8=;
	h=To:Subject:From:Date:From;
	b=LLY1SsxSOumkmfxx5/ihf+asQAzOlYYIHRI3DzIfDYEJ6RfLVoh5/eaLP0oLF04eW
	 X8ZW53RxVOENFFh8FP+1w3a5WOK+oHsCfRoCD9F4VdyAFXMfiUz+P3+OvdQtrERqqb
	 KOj1lj4C/WYB2hloTssflPAqv2jI/+fEN+Hx/EYiMvzAvUtRGTaW7zoQSHAbQGwyqz
	 ZLcSbhdrD2n5FqxLgnXTrIRl5E93YGX0hhBdfC+elQSmmGFzjcri7O+bzqvfZYOiOg
	 7pVIEtYxnHJiIxSetteA0Plb+3NdgGCdB2FlUbboM8Jvfbriol69Zf0pToKpOXDQng
	 3W0gcB1Q4aIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A855DC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518063368.29227.12789343998137133201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b8b2cad5f59e15e67706196204bba2826a4b510e5a80e546063b720ac421e4
Date: Mon, 27 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785180633
