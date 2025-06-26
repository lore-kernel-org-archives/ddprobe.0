Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D4A482FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750908594; cv=none; b=rMukcsvV8AFth6dWsmA2g/6xaOc43+ZY7k4sbtXNEBCPnrGnfJ+zOjQdumKyonoZtXfxU4TmrsJrbQqb1NLSTXHx+WtN+EMsm6/Yn4yaBuNPqv34w8FGYgibioRfS0O/7/jILceVfIDjsQ3i3NkunPG+zM7G0LMDLWhu8gg+9DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750908594; c=relaxed/simple;
	bh=csSKUhhdjNvqSVmbbm2acu1PkD9J/mXFXtEybFgQOj8=;
	h=To:Subject:From:Message-Id:Date; b=MdAG2h72GxfSMvsWaFcGWYkalnOFBtyimhIQikTHEiH4lqS0ApFPlMppkc95e3bnzwa6ikupcf/dGUcqngY9KA7WIC7j0wAxEVouyBCQrAODHftj2UfK8vYHsx2foGfV02LwVY538hmqNrsA9Xw952zKmD/LjLUsekiBqtwkGWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WONeNT0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WONeNT0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8200C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750908593;
	bh=csSKUhhdjNvqSVmbbm2acu1PkD9J/mXFXtEybFgQOj8=;
	h=To:Subject:From:Date:From;
	b=WONeNT0tMfYK+jVQde1TFqHnsSHhoudODyONSFBw4TJQXXVgez6gjoBbPnfH0ObuV
	 vbMicpoYhzCcFfwcLsa+9ywZ0yw+7/VMK/aVX2z7vktOj5hndBsV1ma+2F34/aI/1R
	 OmxLXiM9CEIMhc7XRvofEgk6GPb5lnuSSAIho9go7q/6EoW11aFcLFGOFJRyPz7vh9
	 RQ5BoDgwXsBUD2N4Jk62mb11/zoTRbrxxca/KZ6qj06hgXdTpxNaVdckERR1WwYklW
	 dAGbBXEl7xNbqPSRE3i8EVT+Sru7klNRZX+gyyzHGcnzJO2HeiOG42cYbEKajmN+KW
	 EQ0o9EyfeaIUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315DC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090859358.22735.14265393004972001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e494a6b8cf20ab0052e012e44ce7873d14c691155c745c8c5f8ead10975a5d83
Date: Thu, 26 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750908593
