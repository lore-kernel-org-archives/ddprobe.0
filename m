Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418443BBC2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721084123; cv=none; b=TFMn+bJoloeaMh2lMw7viXpSnsGvc6FtyLtsHEC1czyncxdof/iPROqTuV/h5TimHVbWy5T4aP6Q7xbwhdZDIV9ibia394mzk00tXSwS+gdO4kjWIQB1Tii4Et48nI6XkV9Dw8k1HwCfW/10QFzqPQU/O/RNXjJruIJxsiEpg+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721084123; c=relaxed/simple;
	bh=euq5/Tgq88YpIDtgv0PQiGTMtpe/XyZFWct/FI0mV58=;
	h=To:Subject:From:Message-Id:Date; b=qejG7tgYEcG9WimnYiT595UnBh+XVVVs2QOdNkQu0RcihQgkU5etIqNQRmEqwvuig6TF/MU6MzchSQLilmh/tH7VNVqA3Y5lTIvPg4g73qd2tOH0kgomQXVLCBFEG7AJLxzBm25vD+pVV0qftu1VyvM9eZADUeonZ4pyPBLhCwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lkb8MIjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lkb8MIjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADCFC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721084122;
	bh=euq5/Tgq88YpIDtgv0PQiGTMtpe/XyZFWct/FI0mV58=;
	h=To:Subject:From:Date:From;
	b=Lkb8MIjSiXoNa1WOniBXdOZyjzSukoZelKxr6j4HEzLEKSriNjZjTc26zQKL18DFr
	 Q6W5fcWFJ9HMq0SAYkmrEa2+uqQIncCK6EydUo/6YA1weKx/+SWH90qQ97EZXH7won
	 FKSPMuolLFbkhBX4XpNe2dX6mY9R+v+prVVogEmSzjpzMuOWokRRoa1P5t5yFHi6kY
	 H76OnCnJfuDxfzXXiLyjKat2zl0l3wIasV6lCo1nUxTjr7d2phgXY8Hg4KEq4Awlji
	 /3y6aubGWYGtLwX/WFRYP6X2r8/J67YMf68zhdOZ9byvWGMo1YbYPHnYPqUPLdoZgG
	 jncwyrOTsaZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DC7C3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172108412278.4697.156526829776123293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5cb14c1d4773a51fd27050686b78f471c51479afbab6706cb3db8a526fa4df4
Date: Mon, 15 Jul 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721084122
