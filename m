Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3222149C57
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736877953; cv=none; b=YBMpIo9D1FDc+XN8h0EjMUi85BoxATZrtBy10lsf6sx0Y2zhGtkPg2I3TNeSw3AE++ciZlbEqxswxMBzEmvaoCUBg+EnMmo7xBsM54vB30k3TfuksAQ0VcJvLc428VAKp2HCYhU//fHAsG2QuXQMMBpd+mHwn1JtfYrLwwf6Z6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736877953; c=relaxed/simple;
	bh=fDT1aEcBjiubXYNXx3AiChXe3w/ZCcfU8KTEyVVuHMs=;
	h=To:Subject:From:Message-Id:Date; b=khqln7E34I1nCD1DG4+kqtCRGbPsTNAduNn6nfyn3z1VmDSX/nbhSJul6dtpwAmplxvvmC66xVy2oY5sbVtjmDmGMbgMk5tn3aHbB9jUH7EFWvjLrgxEBuwag49iLOBtMaVEI5c7JbwNFYLVNxNAxC+q1JP7h+D6OzmISW+8QeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwPxhauI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwPxhauI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2664C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736877953;
	bh=fDT1aEcBjiubXYNXx3AiChXe3w/ZCcfU8KTEyVVuHMs=;
	h=To:Subject:From:Date:From;
	b=mwPxhauICMOSF226fdr2Q8oStlScRmIsk1UvPN3BY7xxPQC9iYVIJHwrjpFnqC5Uj
	 62rBPjmQuAWo+8p7hWPXn6YXYBcATVt154WNOjwJbyD73PLg4cazKj3nD2Hdm4K76Q
	 bbuf/OC/DZXLQ3j6OTr57d1t/UvK7ODaPTWHlXbyh7oyWeCXvfoZrzgED+yN3mJBGj
	 YryrSN3DG91NkiFWG7tPRoDQHyT+fYF+bmJHgKCN1SDMUDHUig+NKnCihmManGpw4D
	 50NNMUsTl4+aipuF9ZKXnuMcC7Z8r5ldr1pGryZG7i2u2rRNH/He5VT3pU0+Qq89ju
	 yQlPen1v5uz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155DE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687795358.26205.12821692812213771473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732cb5006a7eefb61041a7b28f7cdc8c54c0708a2793f66d3468e36627c63a23
Date: Tue, 14 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736877953
