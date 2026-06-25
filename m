Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBF83E9C33
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782404854; cv=none; b=icZTjY9rfV4D+40qGB1N4clV5cMM9W6+i9Nzvvn0mPyXx74mV7VinFIl4qnnX/LS3tPYfOdqcQHES8YKoF1yUNcxH1lNL+vMXiTBnPE4Y1f7ve5kQv8QqfGNEazDMqPvkAhR57LSsWBBAawZwwqg4rn74ORl/t6hY1uXHUId4a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782404854; c=relaxed/simple;
	bh=xrTFjQC2vkSksD3V9C+3lot9vXBWruXP0oxXD1rpzD0=;
	h=To:Subject:From:Message-Id:Date; b=WaMotShv1iZ0CJ6ZqopXQuZMOhZ0mHgDysvezwwn+Jh6EiN9Q6JYoFORm3DXuiJNHco51ZKn2EHQmL+nG8AJUCkevqm6ZQhku3DYGDueFcBLeTL7/I/KDQL6T/gukypp9PIVTLFT/rhUWLs4yarC0NSFURWTNN8ruwHq5VBL5XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDIpM+9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDIpM+9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB792C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782404853;
	bh=xrTFjQC2vkSksD3V9C+3lot9vXBWruXP0oxXD1rpzD0=;
	h=To:Subject:From:Date:From;
	b=FDIpM+9F8HVLBx5DFnPIowbd4OhinQrPrtOCTOjj2vwZNINYk7HNXYpGUpODBfOiw
	 M0whOt3B+jSLbaaK+5Jl3G0jMe9PPppJvRBQuZxQEE7yQ07DghQu5bl5gogMtGpOxR
	 Gg7QyYF1CvPhUcXJVK8KeTXTYALkPLAViX2CGf+hXJ48JjQzbx9cz1xkkpu8KF+rgO
	 +4pIv/nf/j1T00nzcDwsHUOBJhe/GPqIPEwteECQtHgJDpcmJx1XA1qwXchD7dbK0r
	 DB9JAJeY2SQH+Th/MVhZba+6GbJULBwepF7hwo5Bx/eVXBl4FMbc08wy2/Nk9agpAX
	 ZIsVPmC1xsgGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD557CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240485370.10381.8825732348448393005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43924ed7c2eb4e04fdf2b80ca01e98397861fef71dc27af39cf63137544ad43
Date: Thu, 25 Jun 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782404853
