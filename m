Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F10317D9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705457898; cv=none; b=dMGlD6VzvKeq58P6C/egR9x2z+hpqz2ygHQufTVfD3ih6bB8MsGY1A0ln+ojnAcHgND+3d0PNbVznHPPKBDKapW81vc/OM9bvzQ8yR3G0dcYeMqpNepk+ww4918UDWd7DmSP5amrNSuRLpMRZm3MCihJCiwkW9iXCya9owlIcFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705457898; c=relaxed/simple;
	bh=+Kmel5Uy/0CHj+FmmeA/nKT6EmOP0kVa6vuQhA8TQ+g=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Ha1iT+tPml25bG0KGasT7pqJyhpSsPtM50L5B3+15mDuyL4raeK0ue9EiLbzPeTt4pIOTkVZXS0a5XO3ArAhzmC1PsgaTEiHFVl7bBHRxNnCU9XmLt8EOKFlbLMc1eNZmWH9sEOkZvhssbj4CfqFPLY/22izQZWlBynoWHkPXxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcVDZJm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcVDZJm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AABEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705457896;
	bh=+Kmel5Uy/0CHj+FmmeA/nKT6EmOP0kVa6vuQhA8TQ+g=;
	h=To:Subject:From:Date:From;
	b=JcVDZJm/DExZKS3oAqOQFWPjFRvtuSYuCYOIrfmDXeU5jE2/oEBpKmk27OfbIgq80
	 KYKKDC7hdNO17LHIb569RtQbYXEtsHU8oq5nNHN+3RHA/AYfujgTUtQT0hib/D++b3
	 yntyE/t72rZhfftmsD0SlU8Z+d91VnPm+DiJCtkzBjX9MER8yoGV8ChTRywaS/Zcy/
	 hqs1sdG30HNby9v11knbDRzsZ3nHBPAemCaxEQX1DfJc+NdH90oDGBefCBKzbUH4mQ
	 2BQO/+sSnpnFKCKUeb9/t90NB2Z7vVKOTR0BScpMr4N2jadk2BHwaN6slaVPDC7mwl
	 pFUE7j1MxMC0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6F7C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545789636.7467.12333549794399060155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a91da208d192de2bccd413bfb74473b8010ab0d131a7a11c7d1e398e8ebc3ab
Date: Wed, 17 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705457896
