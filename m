Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC28F54
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749370194; cv=none; b=LZcLx/cnUN/QmpkGaUiDxmkeKbW81SRmwKcAECqp0TMPgf3SIujoaH2oRCUj+Logv+Q2Ispujq8Eh2yXmuMcFx7/DUA06OcRIVhxd72nud6YHl57xfbJithni6DDbwGpUfaGudt1FlYOLHVLIuTSSQPSG7ca/g+fM95g3SeAmGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749370194; c=relaxed/simple;
	bh=oR9v+kOdL4fnZ286mQ9hjJ4LhXtHFXaAazUV2QbWRSc=;
	h=To:Subject:From:Message-Id:Date; b=JHId5e6YgHJ6kP69KSAgTTCoOPHqWP5ka1KfACHYDoPGRP11EQ47bWTGoI4LPF3hs+1hrx5ahK2BUzWAI+a6s6OgYDLUenr2frO0Qfikpz0CtJDiqPe2DyQTB7icpGHZ/48zcehZO0/dIYU0levI/1j6fKnWT9eKxD7RID8yEBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHHQAbeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHHQAbeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC97C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749370193;
	bh=oR9v+kOdL4fnZ286mQ9hjJ4LhXtHFXaAazUV2QbWRSc=;
	h=To:Subject:From:Date:From;
	b=GHHQAbeukZdxr95jY5JOAHFxr/mTyiasIT2EnYSdJIaVYEDZ2VOVOf0CLb76uadDv
	 11SKdARlGeb/0TAzNYcwocB+1VCKLp4Bq4+aCvs4Mpre4q/an2uGeofYBTLwWCKHC+
	 DKk6lw6WTitZHa9WsuSw4Eq8rggshsBFz8FklDLA4sRs/eJnvjRY1Q245Iw5Z/cziq
	 TUhLJhXDhOEoZpw/czaCIDdbV8xng4UPmhvh7o38rW+VBNwOl0y287GS7uYlK8QE+M
	 PHeD7xISiSk5PFGQx0iBRC4p/3g+tV5cKfYt95oSqgZAEwa1aatK7YPahxOX3nrCnF
	 VJXadAtwkSEWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B068C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937019359.29074.13470528587645841890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa57a9d01d0fc923f480700eea88bff73cb00f0a8678dac36677ddbaa106ae8
Date: Sun, 08 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749370193
