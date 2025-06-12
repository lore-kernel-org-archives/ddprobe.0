Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8516610E5
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749703194; cv=none; b=nnCHx7+RJXDH90kU8u6oRv6+shseU1WE6XtL3dks3lraxVE4kyKBAa2Zpe3VdmshmBqF6GAMi5bPDf+ts3jSBzleE0rtQ2m524CJ4YewNN5ZpXXYHTalVzHMKRVBXsz3i45laf9yDKcVeij1Qe9corPqZtk0HjhR+hDgZ1rfaQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749703194; c=relaxed/simple;
	bh=ALqh69dhkxRXgwjNAaMU5sMs3xMNl949DNHQ1HsJRJ8=;
	h=To:Subject:From:Message-Id:Date; b=ZQMyhpwJyFtetrZ4CCsOLS1vsOQQE4jPt3IoTl+Ja8aoDW2PlZDbYW/sO4YXvgURRvwPTGJgjDXNQcaljBDfzP/dnWwEYO2h5ESxsDytotQlTeA/CwJtY2Xf1HMJAWNip2J+cMh9jPytYqotgL6wA43K8kRYKPQYb6oz5e2r9rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hplEZJCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hplEZJCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EB9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749703193;
	bh=ALqh69dhkxRXgwjNAaMU5sMs3xMNl949DNHQ1HsJRJ8=;
	h=To:Subject:From:Date:From;
	b=hplEZJCvcjy8r/GvHKYownP/39X0+3ZpqyjXoByNltjKK5VNZQaXOzQBTGahIVHLH
	 fimXMfCLiVQv24op/LCI1wzblV9tRddhtV/5aLPqzMGAjcR5iLYTGRaNbcnnKojqqL
	 tTlXUAvc/+oYUiLFOOn1fUH/Ux6pP9XeIZELKJKAyUaDoWf01anmdQM7dn7ZVcsaOI
	 DihO+e3ptmObrIMXFzrOs1+CamwmDL3jRRpx2gmg97r5BCDEWuIa0L52QoP/nT0UFL
	 BKcd82NW7FH5HnhJO0vyt4wFvOFNbzIRkG3CI1XaWK0mrQUuOIFxvG7aXk19WTPTIM
	 Asp93OYrnrv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EB3C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970319364.7229.7256619076809030160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ed17c321f1aef6aa21ada7482606bd84d27e2fb2bd85a2326f481466adc3e9
Date: Thu, 12 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749703193
