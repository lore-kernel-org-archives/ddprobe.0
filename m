Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE67360
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726472753; cv=none; b=RcHmRVG5cDXQ+2iLem2wn5xzykV3mqELgqVsJyqrY6x/OP/u8X1KsZ4Pvg3PnLmQVGL1tU2W3tUfyeToCh8X0bwcVTMESjYxi8Bi+YeGuiq+Zg0iT1i5wCtVKHIItbDfU86rcnVb6ZH0MBa3l/KPtqFzVzasNyh6r0A+ejxQB2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726472753; c=relaxed/simple;
	bh=8EP69ITutlyqrGoA6WaLMcWBn0BCgCwzLowjKW15y94=;
	h=To:Subject:From:Message-Id:Date; b=RNGpT+OUD+G8a9Qi3T3D3lTrDApFuQ68GoFWCgW43N2joHlL2bTjSY259S/IKsAe1jWOu6gvBrjthIsympn8SAvHO4nRQneDzDxwBJctZFlNCeZEhIxCGMYyT9OfhIpzixo0GMMg0Fb/59KHC+eA+GQCnz7vuiGCCPox9s6ZwH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMhHdPlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMhHdPlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8326C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726472753;
	bh=8EP69ITutlyqrGoA6WaLMcWBn0BCgCwzLowjKW15y94=;
	h=To:Subject:From:Date:From;
	b=dMhHdPlmsxEMaiWO80Z1Az+1q9NyV97RRCuU3h+FwzawrOzjeFXjHdiO2A9NDVzja
	 aMwdtVmfQdtdAf7/pjD4Qn90ws43jFRiUSMEx2ZOlnb2TOQc9az7rtMCcHABDHrl53
	 h6sQzX1hWCBTml36iJx5e93tWUbN3yr8E1OgN8Wz0pBwirE/y+qL0938wGH5gEQyWL
	 l58TKftxZXhD4tzRUTFRhvvDkv2EFPZnxADhIUYqndI4RQmGGFLc/5zQczmLR20Ttr
	 cVjmI6WZ4eHlN/FhxScrMdNTPKhGXg09EcWQKgidykZzvvXpfoXWucUdKNC+HTjs1g
	 Q7hOKE/EKp2nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BADC3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172647275361.23099.9249524268502476918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57aff8debcba5e18f7128716b223dd7532d0533c1792be62ff3ad7384a6e1fd
Date: Mon, 16 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726472753
