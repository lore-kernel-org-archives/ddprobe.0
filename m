Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A9281AA8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761813594; cv=none; b=FwUiGTUp1YSc/w7tpMVwNv0HQ699LSLCPRY/r+DR3+vWGlnUdPHJcfmZhvrDyM/jr/znMfqqzv5F9wCG3ylewOp2HPSCMy3bTBCFYlhrYzlSVR9F3JR8y0hwUP/8yrl5xtM5Vm/PkNs3Gqg6H+xM9NMpNL/hmHkTMpfLz2+3zJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761813594; c=relaxed/simple;
	bh=wBbDVnh4xelE86aDqT55QpZ0WMHn534N/BD8SAQ0EU8=;
	h=To:Subject:From:Message-Id:Date; b=OjbLUAHHhrZcde3B603E3+yYUtacuqduZ2Pwo6bril2qQAjCLz9I69gJ5aR7hPDEXY+9n8TjhadyZZhQy938uhgwVaxB0NQakvqQuB+Tqibvnj+OCzGwqXSfXpiVSFs4hxyxO9LkDtot0AGiyigD3TPCfrmkx1/U3YbjcEwBQLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rle3k+p6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rle3k+p6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3679C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761813593;
	bh=wBbDVnh4xelE86aDqT55QpZ0WMHn534N/BD8SAQ0EU8=;
	h=To:Subject:From:Date:From;
	b=rle3k+p6hnMEMcM19wHyIkeBlrtPpn3lD6pRZbUKheYjZafgcxw0kybBnzotvMkad
	 sD4PIIJLGvBTajkbyB/NcoVL9mRjQBpr4zRIj8fV2T5a6a7jYSErY7rabN5TTHEg9A
	 xzFDlD6MTrYhXo4eRHtUVSlKtVTIFD+hpV+YobUv5hKFsldT7wFCGgOM5Fc8j4NvRc
	 SsUPMCMuXriqVcNVM6fbqnn7ANJgNuuKXW5MVMeW3Cyh1GVa7PElXPonRPQMgzQ0v7
	 QmNjNIFZPq8MpMFTdszdt4+dpEOVxZaCPvi7/xR8n9nrb9N1itiAOpzkOIWgNS2HLo
	 /OWcrn74NfCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079FCCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181359358.23092.6113447784851073366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338b1e9da4e3e8d3cdd2ea98644c3276b28276cdf4d24b4316a69996b6ffa65e
Date: Thu, 30 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761813593
