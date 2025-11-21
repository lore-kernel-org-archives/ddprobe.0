Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A6F2BE05F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763754714; cv=none; b=Fi0/IpzJAMj9ih+ebAfqewia1zOF5HC1Fhq1H48wE27t+UZX59XS6vIqqVpqnweZ/Eh1QBxCEolZyksywsfagxudNr8dU4vf+FBrEDucnpYOBS2/7vWUzzjzKR1wJR2WJ+6GHMGvIUljxs/QzCV9m17I+IU153gz1F+mwt1RuJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763754714; c=relaxed/simple;
	bh=1cyu2s0g8NDQ+Q1pFuCAyV7z3vJ24/Qt+rfo81N/1IE=;
	h=To:Subject:From:Message-Id:Date; b=MMLwAY+en6CGpGzSRmGTOtnTSvcRzW4H3vJltSgiZpQ42Qq90kDZ5TvQE271MIe9FSXOUI+UCs+ZAi0O80cVTubhD514ee/cc7+w/pokBUKreYXJDiwlF+DjLwvO6xFtxESA/j7heHvnkPb1z+oxt+6uO0GY3d8zqEJhoeOOyu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sssndtpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sssndtpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763754713;
	bh=1cyu2s0g8NDQ+Q1pFuCAyV7z3vJ24/Qt+rfo81N/1IE=;
	h=To:Subject:From:Date:From;
	b=Sssndtpd6VB8cL3n3PHDRlAFDAF9rnCsutFA0u1MVripyRTuloZqq7tLRfUszUL8H
	 bwLqfX2fGwH6S2QVlgBzKfj3G8BapaP8CMC4BoNxBbIWqdv0XXqRhGADOCYaljk6am
	 kGo53OA0CIxnsGEFV6RtILxXnUCb1F3BxM9onEW20ylv6h7zYmdzhY7+D4WqWzEdo+
	 gOGcXS25x/WNWoWYAHLhjVCF1GhIcOtYOD2Lyh80p2pObVcD7CT3M58Kc/u+2CHL7w
	 fSl3dUTqLpD/0cloRD48LaruzpT2Pm0l6XAlgO3d87r6iS8VpXQWC3MXPVY7n1B9B0
	 Qcgg1MdmRrDbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE5CFC29F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375471359.10785.2972438432668015534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f247cd19a74a54711adeaf6ae24e8086753a5f60483a9cc16bce08d8e3f90ffa
Date: Fri, 21 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763754713
