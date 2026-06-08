Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D55FC15C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780892074; cv=none; b=fiwKgw2BJcWgSd0bSJT29W3ZGNTCgQAw87SgF5VxpOp+VjzoOJyAC8OIzQybJSXFv/RIDlXajgGgKvHzeegabFpbcPMw+UDmFJpvu3sXT5Q69HYZlTTrgbfXrDiKKBkO+OSqBW1qnsKBarZgkDPgX8bJdUjyMHTqMJx4tX4BL4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780892074; c=relaxed/simple;
	bh=5fHgH1RUPttvmIWQdQIkmDuYI3HF2znz9H/8+bECmDE=;
	h=To:Subject:From:Message-Id:Date; b=s3SMffUyhbiiT7GL7fPl5fVHftQ0nh5R+KcfuWKMCFDQKSm9DamCQm6myPXBTBIurqDfsNZbzVEoyoLhkkf5E3bO1qDoayam0lXLB6TzSLvhTL73mFQOFY54QnKR8Rq13VzOA4ZqE2QluSHGsCiJjIP06VLaDHglpAG1HrXdktU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E47cy1/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E47cy1/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BE6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780892073;
	bh=5fHgH1RUPttvmIWQdQIkmDuYI3HF2znz9H/8+bECmDE=;
	h=To:Subject:From:Date:From;
	b=E47cy1/2gRvo6o+PVotCqP9fgfxq2oUYMNzcdjmuc5hZworIlklM82Pnd5zye4Z6i
	 jjyTuPQvcegTR+amPUnZ5qoSVdM9UqQEsBybAP76eJIS8RoANCiGcZsttIeSomir+z
	 aZvsqKcbbEQuiln67vmBlba2gu+70309tkx9hllcvPxUeYh+lelYGOSinRq3gsGmoY
	 OGXPE1ipMsZwOmCCa1Iyr9z9CeDlWgb5VmAz9Idyablg06CnAHfy5zH3RzQVmDt8WP
	 woanQTmOh+3FGuEGWQId8RXA5xxbgFhi+u1D2j5UCGJAGrkj25PHDpC762R6fqahJQ
	 CAPVODn9GbOww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA8CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089207369.10587.11746000785694655561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501cf3fcaf523843b911d249d2c4f8e5701542884a341c7614477f5493693d9e
Date: Mon, 08 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780892073
