Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3BFCA5A
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760158194; cv=none; b=srLOglcwF6XBJiZx7Uh/W3ONB+OgKj/1Od47zORhO9A5Uok0GyVJm3Y5byMqkycw2dDk0FPWnE8ekjLySgJ1E0igk2aZOBu4RVmUg0u72IliA+mLadcqc84jQqCoQRJx8GQXFhq4O7Oz9kBx4Ut+77Nq1FpLPE3dvJOn9+FlfkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760158194; c=relaxed/simple;
	bh=hm/bvdYUu4zz3iDc7VuKfk+WPXc5Y0Ga/XosoOMRCvk=;
	h=To:Subject:From:Message-Id:Date; b=TrCt2u4k2agxCdwiZh5NKRKG6x5ht/luQ1585SQwovWL7IiIsoXCAYYsCGvvGN4YOT5RN37c5+nLZorsC1qLaNPXiBs8OoX8CvFLipzlz7GfheLSfSnNjykkDZ1AxeFE+9DX3G+XmCNuB78LHCEvFupPUUw9hxG7GiDxL9OzIkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rY0Qduw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rY0Qduw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CCBC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760158193;
	bh=hm/bvdYUu4zz3iDc7VuKfk+WPXc5Y0Ga/XosoOMRCvk=;
	h=To:Subject:From:Date:From;
	b=rY0Qduw2cI+S1eLYm36YzEvAn9PQYe8PcSvmoEWKvhzlf8ATfStpfBlGTY4RrYyFr
	 2E9FcSvzBARuC2fEp/CTrG9Qu2ptehAwyoOaQGnGslh1o6FJ6MMbpcOvPUwuHRXLY+
	 rsTQluPfpGEHSfK0ZwIzul9QjiymKbMjpShO5qQ/Imh1pSBB/3RpZ5CEzy7O0g8ooU
	 M/TTeJq4jIX3WUAiiNP2wYLXu7ycEOOQFjYMS2I2a1VTV1f3AOan6zyaAFQRv7WIgo
	 zH2lbrRs7RyLPQRxlhcQijmIdF6/7rhqmAKiQLCyTyNPtxPAV8SwloP9xu26NDvH/R
	 wFAqttFX0fYmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A8CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015819357.18089.7054527942573854961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7da5c7666c48ef2a3b84e24ec1c54b583d93322607f9cc7734c05d6a87107b
Date: Sat, 11 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760158193
