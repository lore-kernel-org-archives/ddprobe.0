Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C151FA8D3
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735921554; cv=none; b=LXG7N4g2+NmSYiY7dkXW2GZxp+eEfnT2Bp2BS34wJ91UMSbyb25+XlhQPUTbKvxSewQ401lKB5GkTQUq3vGfn/rbjZFUOfbod8SuWwHqZTf97yoqKscNfHs0Z79Lag+RB+saPiCBsNgJSYF4WCKM3Ce6BcKCmy8hk/SXFF8sSDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735921554; c=relaxed/simple;
	bh=jNDMEluCIj6rT+HImiCvKIi78w/RMgwStdzQMUjDL9M=;
	h=To:Subject:From:Message-Id:Date; b=QGv/qtnSKigbTED1DNuFrMccnc8mxxKgMwqNyfXyEId6Z0QUJTVcr1GkUK/RESEtDimtB+CmHuhXRtPs67HmyPCytP6JuVQgp0uDsTZf3kFivXjppI//01RSMFYZbcQHkADj0ERXNUMwv6J4wGWBPT0vrTV28azH2T5yjwDNRcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP2wQDTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP2wQDTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B33C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735921553;
	bh=jNDMEluCIj6rT+HImiCvKIi78w/RMgwStdzQMUjDL9M=;
	h=To:Subject:From:Date:From;
	b=oP2wQDTKHf2eifL9bcRPUfN+imq/EFenDbDjuWRbB/R91tvZxbNWPMOpa05LzzMAn
	 NVMIdwjx0Zm5+hMblTdj9qfucpPTJbkurJIlQsfBxss3IaBhYITShXtV3jWNT3h0xq
	 7i4+r2L00/q6OdfHMMi6AZ32cIXdCcnajHUOVl3CxpkP29rdRT6/v+0++ZebP9e2S3
	 xV45yLlALZ4GB5BcYjNEjcWwIseNcQSImOBqehXFBnGugfrNHnQH1GYoqnklQkgss4
	 NqeLmCRmBZcBxph8NGlIJRui83epBFVF8yZtcHfXhrJEVKOLlDN8188HddCBCFfRQn
	 7AIaOoh+js+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70FE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592155357.32718.17483689331044898981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7476ff6ade4ba36829f367ffbebc125cdb5e750d8b97de409f6d106047d310f
Date: Fri, 03 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735921553
