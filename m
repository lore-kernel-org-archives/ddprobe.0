Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211B13B6C17
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784672915; cv=none; b=FagWXidPHCXd/aDIbtrMzskG1/W3MW1bC/QuuSw6lRh6vsTi0s5yqQxdTqaUmDHHsP3DBB+V8K1O24sN1A1N2h/rm3CqqAtqtgPYwpm53BVKD2jFlxorI1CIFXRr8DeEse+hKNF/ezb7tGrcOAuAVhnarh0Nm3DntgV0AXbojY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784672915; c=relaxed/simple;
	bh=H5GQbzjkJfsSDnKANVZbaVsVCTGwk37bq2f5PI2CUEU=;
	h=To:Subject:From:Message-Id:Date; b=JpguP+9pzdtrG4BeKcD4LJR74gNAC57sRxr40SGKhnvWjeq2HVtRvvjTntZLBXhJMFz6UJU0wDPXw8PwDZC/VTCIAYSCFLYzYN6DxQZpSs3YGy0l2KD25WmCzIJEj31tUiV5RDVlJkdDgFjTzzYMVa/PMfT+Fug3G+/3nmcXEFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ta/G/EBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ta/G/EBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72E6C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784672913;
	bh=H5GQbzjkJfsSDnKANVZbaVsVCTGwk37bq2f5PI2CUEU=;
	h=To:Subject:From:Date:From;
	b=ta/G/EBT5IridRpdMBCHijI6n8K48l7BYH3khXxM882g9Px2CFZKdS2tNZ9PHLbDI
	 DzEIN1kJLUzJgpb0UpKMvWszGRE0QCfvfxUK10QPrTztltblm8Vyw474P/kcJvRTJA
	 nksxmf1XQC2EFHFWwxEtDJycRqfzWohgjF5sPbZkOR8UfoFGWL4bseFAfyyi5TuPtv
	 +vbp7UnEplpMPZkTF3LCpgFbPf5ktm1Bs2MzSdMPGiVCPtwBU/Qn3KJIVM32vI2JTE
	 5XSdmTLhY9PYmUTHFDsSUokz8NtUz8JK+74Fl0Nnjt47LEaCh9/UDfzUUrPzDBPhYe
	 swKFOmvctPClA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3964C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467291369.27829.2783853599374965134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6794ec7b7cee76fb904a503ec5b29e7ca16c2c57629928f3cd55c2b4ae7ee98d
Date: Tue, 21 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784672913
