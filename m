Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1AD134AC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747041593; cv=none; b=jB42+SkOrDT4B55egXx4wlTe7MvAPegKlXOXA7K3T+fh2LEGITpF0hsae7n3o5szoPvNvLZdOSlqQYHx3zb72p9M5M8LMExcbihgc3daxfPdCj9B1nyiqISbcZ1TvTUoNuxu6WHgXYyPP+eJnKAAIuRdHFmua2OBUdff3REgAl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747041593; c=relaxed/simple;
	bh=fLNvRCazVS0vg5xJx+vOLRVyK+L9PSTLm/T9vt3o6gQ=;
	h=To:Subject:From:Message-Id:Date; b=I2tMpYrqBD7tJZ5aio2Z9PWMixU/mKwnjpA7EULF04CRyvMtxqqry37qaXpiyRN/NsOocsg0nE2QeL/wQbKgSd3Zxwc9c2a8CwY0y+id61O9q0bL58pt154V2GzsCmsY713k6OJn4VrHmcnixg4YmuThvYpLsBt2MeXnF+Gt2/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwY4FCt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwY4FCt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A09C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747041593;
	bh=fLNvRCazVS0vg5xJx+vOLRVyK+L9PSTLm/T9vt3o6gQ=;
	h=To:Subject:From:Date:From;
	b=GwY4FCt+p2YzZBBHHH8BNV0OfqAAOTAaZO+Q2g8vN4eVYxqZ6p2bbmuWSMm6BIhw/
	 wuz6R9TtzDoeFLdftb5nTEWRd+YP+ggWFza3oUcbxndY/OQAidvpgVXcRrgwldu2ZJ
	 +031pqRHpPrAOIEK90fPpa5icjSs56PddMX+waTpogrCPXS62KdoxRscgCtVHrltZo
	 daBVPeEgfJbzR+jkogNYHP795Pr7W/aznqCQVXpJrMAyaOCLosviLoCCkVge0sJU0E
	 RQ6bgCtKRddT3FnmAv/uxdf7jf84pTlPMiVvJO/N1uWZo3eyOp2k5Hr5Cfhft78Jv0
	 GBDJWq3ojn4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94034C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704159359.26386.13382320644210985897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5724ecfcee8845740124357c1f183c437d6cfd8ef8203962798c2595ef7e0c8
Date: Mon, 12 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747041593
