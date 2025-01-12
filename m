Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460C21B6539
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736688954; cv=none; b=O32FgG59MBB4I1PVe6oBYK1wDuHCRfjFKaDnWx/Fm+ZTaw7Ebj5J/87nAUhhOuLMZk0bre7T5atix63Ntul63R0coiPiTE6HR8ErTJ2DlZEAFxIwqaHuvWz4Ce2f/FRTjiSUuJgFcGTzqEYinmLWauzpEo2bDRNx0x6vqSe6H/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736688954; c=relaxed/simple;
	bh=LKKQWmOe4Fv0pOoJN7nnQxCPcdtwyNyF/PGQ4MRdFRA=;
	h=To:Subject:From:Message-Id:Date; b=t565QF6iP5CJ1NWF38ZBIDby5gSsZ15QaRzxeo8IOUUvLJ7DMz3fxIfzdhxp89uP3MwXZIclU9qFTHzaVEqUcT8UR+G96h4YJa3L4q6wBCGsQ37SIchKDrh5z6IoJGI4Mc87XxmkvvQnRIkNSFunjDnBmFBPRbCmh5gzJyyNuuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjtjoN5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjtjoN5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B0BC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736688953;
	bh=LKKQWmOe4Fv0pOoJN7nnQxCPcdtwyNyF/PGQ4MRdFRA=;
	h=To:Subject:From:Date:From;
	b=hjtjoN5gXQl6T6xnKoskuYPHkPDopS4ScXbUjRaC4JVX9HPjI+0+eOi5gfI9k/PJK
	 Bp23zhtE5l6WS4QVkUoYZRTSaKUGsC9tNRk81BMQXNumjtVNyAS21u/9q7FA1WEXFd
	 4S4LhqYx4Tbzp3U4s+A3IZ0pm+OwwZHIsXvjW5mXxPMolKFtrc8DxQlOEiZ6IOZwv4
	 g4dyq5uHvgBUtpUvcBrJrIrF8flyLU00DolIMtWLAm/mywkbt0ZsiptXQR2qqVCHSw
	 NJhitL9Bz+iDB+llSlXv//GQHEq7asKR8CVj+tS7V8a9BcYUSXXTrMfttjKNCbDGDG
	 ehgr3sTFDnn2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3168E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668895365.9288.4741433613472288001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e090f7f91aced6de2c86d92f4734aeefac2c470e6731768743380f835098d5e0
Date: Sun, 12 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736688953
