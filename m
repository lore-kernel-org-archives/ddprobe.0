Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2664B22652D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770340434; cv=none; b=aQXY94/iWKbbPGqzNZDrXf2whRfp2gOww/pMxQ5f6N3+Wld24Pzau5eQ0Bjo2bo4KDUQXx6iFssS1HQ8sgsY4nSNA+OXPX4AwWh983rBYgoCxpwW2TLtWwiVPzSmJb4SvNk7VQC9lr/7EZikZFKT7jjIcuQURQfiOdUKeEP3PuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770340434; c=relaxed/simple;
	bh=swEEIYHQX594bZ/t3UhoTpXCnr5pVFpvlheILkoKOJ8=;
	h=To:Subject:From:Message-Id:Date; b=Im4KKXulJMIJ0tfM+1jj9Oxr0zq2/eshN42UTucMWQxYm7nOgTuOqx++mj+HD2U3IyNVzHrvWc4EM0tLucII2/U1jMKpPHyEMLWeK1mFCXCAnEIYwqCuUyFs2bAHOxTMI0YhL7osbRdShp//eN7gpJp6WhmOtKBwUvemvb0JB4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju/FK4xG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju/FK4xG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770340433;
	bh=swEEIYHQX594bZ/t3UhoTpXCnr5pVFpvlheILkoKOJ8=;
	h=To:Subject:From:Date:From;
	b=ju/FK4xGs8xDuec2KSMCAYD49zSu1+G4ZkzxOkv+A/qghcoD7LQ6gb7mB+ze0B6q3
	 SX+kz/i34dxSk9fq+BogtJPNb6yO0X/AjbweKzdUWQCGdEz0wjsuDWCm1WlnvG+6sB
	 8vla4sEJL83nwmFheFWhOj18oka1fJODPBDIH1lkuPp5jhhq5XfcxFmebJRRZtF2OO
	 16SxuZWR9E8EDLFiODfsW0tIf9tYV12kbAbxFEOAUv2eSk5Q9aFdg4g1rhtdoQz64U
	 MRPA46KwAhXC2CW+kM0M7KkQ+sNcJ0v06PRXtWjHIT3QT26M7eWJjX9w1XAocDGNWA
	 ZeIL675exKJbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92420ECD9B0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034043358.5761.5916686593144396800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26da1702db8dab8d0b78cc5cc3854d2770051ac2d7157c249607e912283c1cee
Date: Fri, 06 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770340433
