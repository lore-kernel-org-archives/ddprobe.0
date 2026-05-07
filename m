Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFA237AA9C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778182654; cv=none; b=s93Zq1hiwU9Ve96nAAHfulZb0aBPhFEdnOPDKgo3uJUsoj/rx1T0otTYKz/xy3pPsHnyjy8rGtmNRLLArLKPDR7QeqhH9qi8DNoymqH1JPMrXlTcLLofWlXIqUtZf0Y5QoY7ud/hUK9CUfn3zGHRgu28AHuRAzHZJ6DeyTnJi0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778182654; c=relaxed/simple;
	bh=zi0ZXIV6oAmrQbt4gRENPVVMcZ8iE6MEzL+70FYQ2aM=;
	h=To:Subject:From:Message-Id:Date; b=SOWic1cXrv1Ra+MM0HnE/3p+T0uq2Fc7yayZB/EFxF/M9Afpa+Vjfs+aOX3tGSA5OlMuQlZqtIO0s3b9vV0PNXLbBtHwfRfATe8dNsXfaUoZWRWgcMQBEHVmtUOzMCNBB9Vm6h6PyNICDdAvn1T2HnHeHKgr/3c9xjvTZCW9jCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTkz13BW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTkz13BW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD1CC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778182653;
	bh=zi0ZXIV6oAmrQbt4gRENPVVMcZ8iE6MEzL+70FYQ2aM=;
	h=To:Subject:From:Date:From;
	b=dTkz13BWxYJaRmGE02hAZbiJEZYquiivLdLNEWEwhFq5ZBrpTQgOX1zUn26jAE1RL
	 whmwgpnLx/TFMaYs2PxzUV9FgqjNO1ltt126MGBzCTtAGcIw0F0d/xnYC/aUH/RmT2
	 yQqDwqiOjnl+2vqrK0tHlvfK6NB/mlhwDvH0ItE5M7j8KUrHZq+Y2AcI4W48C1ggWN
	 AtwiBHAxLJ+DpP/0sSLIhj6WRUFMQ64W+WULBp/egdEJaZjOdRfTBOf4upUIWqkZXG
	 mM5RlcmhR/MgKn4yT/PLi/rvA8qm4yKANDYyez2G2j6ERGAPXTEbD3kNZ4dBeNurXQ
	 E4h0vtWAdGJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC882CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818265369.15799.4116172590434496708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796987a826dd61325e8ad728a0953eb1736eb5ba1b64e3511aff7b19a320b648
Date: Thu, 07 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778182653
