Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544CC224AF9
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779633754; cv=none; b=r2vgAdaKnpyh4/p25COukhcnwGNb/UXJpNan00rUvxzGIRdqKXwuUYUlfCK38xx8UTSWLXvuWSHwwM/VKC/HvX2rMi2tNvjFNA+qM7HeL4dUBO/vU2iL2dsCgh9VL6XYNfeh9laohdb/B7hOo2ROKyS6DGF+rQYRm9uy2udGgs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779633754; c=relaxed/simple;
	bh=DeGjzawtGhbo46CIpmJIZ3wgPSfcsqW3hrq+Nj8kIJI=;
	h=To:Subject:From:Message-Id:Date; b=P58HUkZX3rvsDkc+8NWDRuTwO0rcs7u2+49nCC8KYr1zJ7GVLqNAG5uYHmyUOEiOwQ4imWOEr5Yw7WwcXivlFmhJ8Zy/qqsfYCRdlfcq3lRVgLyNJ0V6JlEkXCbwVAnv1o8qZbqlcaXgpooCEOi+EZAJ1gpYJEwjbKMvnIBcvKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ton+xfkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ton+xfkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCCEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779633753;
	bh=DeGjzawtGhbo46CIpmJIZ3wgPSfcsqW3hrq+Nj8kIJI=;
	h=To:Subject:From:Date:From;
	b=Ton+xfkNcAbtN7iVXCJNaQECNZWwBoprfIUTsxSCOehxXvseCI5hsLUQpmHxBd+9P
	 m86MGeOTcGpVGkl5yPEH6ZbreLcl7LN0CSAX2yeIvzUGz6yekAIKwVNPDdJBlQHO83
	 FDcvYXOV9rOAjmOAuoTDiDtd+42iqENdVUE0kdcX1qmTWsZ/lNZJdHePh8NPFh9nIG
	 KS3i7pOdnodQQTJ+AtkFFO93xPXz92da+nJSO50EoGyknj+bpVsFU3Uh2UFLG2vNI9
	 qJysP0EBFLArjsg0CSQ+WWq9QoNNppZRca8+gZAjx2dw/iYTesmu7E9ULNw6PMJ0VM
	 va/IynXDapoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC37CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963375368.30978.9675113762634441510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd0c04888b908bb9c0808ebbc90fa0116f038036eda95ed164fab983a48987d
Date: Sun, 24 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779633753
