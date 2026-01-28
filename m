Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195AC344DAA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769592834; cv=none; b=dVSftxrzwswgoPnY88nSGCeN0MMcICBIul7VZkuaciEtMeMOzI4trdeIqxiZs6QtbMVqQR/ESAJGXBdH7PryDUxqREjNjajyEcxXwixEXEjY+07jSZvuwR5eZMCwuwOKjN7+Y2uMDqfOS0ITeoMUHk4YBaOQmUTDUYeWhFxS10o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769592834; c=relaxed/simple;
	bh=aO6xtWDMeFfW+vaNKOy9BWPZKEaCZhRPGIVlvO5MNvg=;
	h=To:Subject:From:Message-Id:Date; b=qp2Nf5Ud/DE3a8842rY6unadUTNXxAuyZ9jV+TquZJHJAkSQA3voidxxawQF9b4sM0njyJTVEOLHoh7KlCPXrejyfjI+6ucY/ip9SDZLM/fg+v0nK8gZxIG+DEkujLg1GRKpeJvchTWuH26pb1Bwwq2Kwe+0PqbV2tCSk0sNdk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZncTFIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZncTFIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8A2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769592833;
	bh=aO6xtWDMeFfW+vaNKOy9BWPZKEaCZhRPGIVlvO5MNvg=;
	h=To:Subject:From:Date:From;
	b=fZncTFIQLIcWuImAcH0DoLOdV28XMN/OxmEqAGkPDqGpbn63/mv6wrwLSB5hxPQHu
	 ECVm/RccELUT0bdEnUv1c/oNLML3xdBY1fykAitrQgyoin7Mm1Xox8z4+am9SC4T9j
	 ot9qMCqpp6iJS3ONcbJ1yDGsWxT5Gb8fzOrRP5NDctNhQrXX9EMKqSnZ1aBbGvJJ07
	 o4v7zbaKREy1XfPAmj4lSEbBkjIvpuFPBv1Hvw8S2Flp/L5/7GCsRV59ckB+RpGjcw
	 OD2iRIWBeNlyS6d2Q3VqIBpXKwl5xtXrZQ2i38Ux0JBIpn5MY1i32LweXIu7IN7pCd
	 w3cjilApi3Isg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CED35690
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959283357.12792.14637474343041713912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc9738543b57f4fbb6f4aa152ec036da16ced2e769eaf5229b4bdff7febc4b8
Date: Wed, 28 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769592833
