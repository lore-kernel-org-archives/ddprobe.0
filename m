Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340111FA5
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726187754; cv=none; b=O4pO8rVChkjQzJgNrsojAtfioJp+v3b4K/psDSBH8rVFa0OQbxQwdtCPiu1+MAQlTIdBnX2Py1oKJwwWMGf8HQ5azqqVxRSpi41RWt2ARCmWgSV70/AcqGJsX8FwkYjg07IEiJIf/8+OtsD+rlSfm+RtY0Wm0P5N/2a2cCkyaME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726187754; c=relaxed/simple;
	bh=v3uhe8vb+IvbuPhJYBqMcmLG5lFLFR2zrHkz9s+4DiM=;
	h=To:Subject:From:Message-Id:Date; b=AWqXdBUE6JFrSMnBN5QPSyBIeHlLebH+EvrLzDV/XIUn+MUY/eYvwPUp0PHYVVVjyYv1Q0X3TGpPP/xa1ThUp32EKbX/Y0WpvdFLkLjWGHUAOvtJ8JcVNpNUSIvjtiF3pfr48BHsAkaajxpnF5FK+iikWR+SM7MPHSFUdafaQ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUoU+H2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUoU+H2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726187753;
	bh=v3uhe8vb+IvbuPhJYBqMcmLG5lFLFR2zrHkz9s+4DiM=;
	h=To:Subject:From:Date:From;
	b=UUoU+H2XLlPqpenOJoxbaYeM7F19Cb6PHjWa1HrXBiyEDm4fMlrzY82No1WUBMdl/
	 Zmmcr2OfQ4J/Q6mDisXsM18ZVw370YJq483WslH2cAs2/qDgbky9fdFFTmg93aH66z
	 ooaX7u30Agaw1hKFELQBztlplZ1/IH40qIobw5uLYViJldaluTIU4p7zN2bNdBPt4L
	 ExPBHhhtr8FM7h8OairwKf3KScPCwhAH6Zm4UZpTAEWqHLXjMRoJW90zmIO//GBmML
	 2D640yWMH61CfrORrFKzcDWIHnuDkFbSe5B8UB0b323sNN01XAm084uZi2EIKsc1lR
	 SVnXpyvIZTllQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92820EED636
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172618775359.15958.16830197412612977491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b47e52b839f87cf8705db337518c2475e9d69d8c2b13f764bd695b07b814a23
Date: Fri, 13 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726187753
