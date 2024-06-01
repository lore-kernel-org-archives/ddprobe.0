Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517791DFF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717260263; cv=none; b=SOEyFg1ocTjy/b8mkoIINY8hNdrOm8zvDpKxq6fRBsbxiY1JREkh65HgliZbPeOdjI7XNgqmu9/zMBUqH/CuuNmfDCqpxt0uItOrCoxWVFirK8nGUBlSA66NOSPb/2WhmzlHIWWPNPeLfOVasl2QqFNE/chyQJRIQCwUPUTy34c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717260263; c=relaxed/simple;
	bh=FomrMewEGMRJXZov8iojZ1tFU6voHFSN6hnZkd/pj4o=;
	h=To:Subject:From:Message-Id:Date; b=rYsHJG/RSi/FlcOCEA4zFukFYigmrx+kdJnKptxgm5psugNGkuLMSjYpXGgjfYonulmqbPoguaURDU8xyC9aj3ILyieryCixFydnMaCImhvaO53kMRs+Xw9NHPEE1phet77+vcr2ByM0kzOb+ujSjA7C9W+czQhvE+/PKkp0pao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bm2wmuZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bm2wmuZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEC4C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717260262;
	bh=FomrMewEGMRJXZov8iojZ1tFU6voHFSN6hnZkd/pj4o=;
	h=To:Subject:From:Date:From;
	b=bm2wmuZvPk2ZdRMDL7eNGyUQJ861VVPCIt/uqFl+wcMDMo4u6VCDubybgdpHdu6sP
	 8fHnkaxhfQF81bZLhWaTmRS82d225hq6t3beV/sgxCNXSExXoIM4ncjcof12ajhK58
	 g15q0bgNAHrJD13vayia9uHf7zagk1zuFv3yUgwcOESkChnCYRJ6ge0CKZuLIcmPvf
	 fkFlmIrvdScv6rFHB4YDoFjr0dqYb/tad1bpMUIbO7/xoxTQ9awye7UCbwS5qS8qYg
	 m67Wqp8n8DVFlJOMw+GwAlXntnlfozMnGXUcuiBMAgQ0QSbMfLfG5pkeal/gffMDjb
	 IdudohPjhkyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFB4C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726026279.30405.7170735232481622457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e02d9097a2a5aedc40d3ec05222d16745e4eeb8461637f3719a951c48fdbcc1
Date: Sat, 01 Jun 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717260262
