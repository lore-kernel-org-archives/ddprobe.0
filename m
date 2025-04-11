Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F1C208A9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349994; cv=none; b=ZY1KTGbe61PImSANb7tGlnmrYmKdGAEbJP6lvkXLk083oXBticmc4vlSjPsVVXVXikyBHTyq7fOa8TpwQeJFnhKSiLWawI4V+vZvC/TQLIFWT6rNr/fWXiKQD/OzNIB2i8JLPt+LTmGYIJ83R5Ca5eXcBbhk302Pln7NGdGxO1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349994; c=relaxed/simple;
	bh=WJbrLMbuzbO+Wn0NJHDw9H48SW7XvdMccmAMxr7NK78=;
	h=To:Subject:From:Message-Id:Date; b=t1eWJPU/GCYUKB2R8Tz4mCPyUhLR6uiIOj5jwMhM52J4jeS8DuRFuSlCVMqMeDoq6E/gIfGkeYYLCkOL7zST9hu+A4CJra55os0LvZ7N5gl8jP+aAe5Ba7LZl1FPBhcRtXBtB22QqgmapjaBPN9QIlrGMtNAy1XrL/DiBfmD+io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUg16HgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUg16HgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4BDC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744349993;
	bh=WJbrLMbuzbO+Wn0NJHDw9H48SW7XvdMccmAMxr7NK78=;
	h=To:Subject:From:Date:From;
	b=CUg16HgQhUaNY1fwddUcR3cmMnvnDsPz2Ipw7GA47qD2dcREjy+byYp/rCaRMUTp7
	 T1F27TRRL0lf1Xqr44gxHFSUevbn8RBMhkzq9yGijzInWzv2r8vFLot1HMVj/OT/4V
	 EIFhvL8gInF/HlQinwbbBfeRcx6Uql+Ma7lXbd/xr2Lg3WwfoEpx1KvqYL5Q/HHIUg
	 f3F/A6KKjZ6x2UFdSmWOpjujE0e8Ir2OMlXutJ2FgXyxIXqpew4DYfDFrSxTUQceJt
	 6DvGglM6FC/Q/OuO6+HMMyXUlKBluxbvigx9UMK+/JdkNHKbXBbCVM7h94X1WWHGYo
	 Lfwat5fNs+z2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EFC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434999359.27881.18202104658545255106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa5c9c786a173b6773b93210b86dd2b8a6f27ea2505e0a4250f63416c7282dd
Date: Fri, 11 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744349993
