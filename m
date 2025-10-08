Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7B82B9B9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759944594; cv=none; b=fY3yfstXJJx8q2GB7n7vWmpEu+ff3C61EIkeIYcnUUa0NUIpLAXvdU3yZOVRe9Lx8rFuPaawifkkjFZhsZmZGE0kJ1Ftu+5LMrMF4p3O79VQLr+e3awuhkDItuhcw2/crAD0i6NYXPjbdGwM4CQ4CvSgmSjFZNxOWToaAeRG/rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759944594; c=relaxed/simple;
	bh=cCaGCshEpUuwEl5/XWXqvBL9LpN8gYaOXk8qcNlGJIs=;
	h=To:Subject:From:Message-Id:Date; b=KcWpdnYMruGtuspKDP9Ic1OqKW0cv01zDsdn99cG6d8WaOkZtFVQ3SQgh6Byrn4hIaOPmeK7GteFmYORB2bXyTICDG21dodELCTPGINAaXwVPgxaCQQlfSS+02sCvTt1UJ1X9+IcOOLLCHJo/2U3VSyOhVkDK1CYDg9AzGipkgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYHDaM3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYHDaM3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A09C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759944593;
	bh=cCaGCshEpUuwEl5/XWXqvBL9LpN8gYaOXk8qcNlGJIs=;
	h=To:Subject:From:Date:From;
	b=MYHDaM3WwYRm9YgM/5NuXe7uz0rJXRU5mPkDj7m75RE8uubCsdVpFxOOXnb7xT1tY
	 J+dVW/Do1SrFdfnJdmJ/eWyLYnsjSG10dYQ3Tf/pIH8XXgtY1NGUsPNutH1XTgKrIh
	 bjM/lSqmEcCQUcSBBM6h7PcxFlfgj5Gq6/OPfUqWE7R3DVMngjy4jNIY/aMuSldQM0
	 nqBBsNAno2vHnApMX8tASyE5Qbv0E2aVUnNHDq/LEmqflQJLZDzkMKvbb4+N1h0/b+
	 ycIDzFvg4HPIHHwhFcWMCAjUaezCOpKbyssQT93XAGWNqw+od4oPQGcIXMW0dawaI0
	 mMJB+835Bqs+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA6CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994459358.8491.6221486357142065339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957e4be08c840a769124c919d1fe034c95d8efac156cdd7713df92095fd6da2b
Date: Wed, 08 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759944593
