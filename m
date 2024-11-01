Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D25936B
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730440554; cv=none; b=gk+knbGpbADFX3WNxBSAuXVS2bvlv2G2blQkTiKJm7wME/o/0cTOLN6gKXjcrEOdLejIb5ku1+B+aHRBvRDlp4SkJc1+xRPfDHBVwID2cN+x+ICzannuPSWH9yDBhfNlMAb4vBqRLcuokRmSkrzG9TYLuwqxBD4cJGXDIZfUBDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730440554; c=relaxed/simple;
	bh=AR4dnCcO7JUVo1qJEJvSws5KB42qMI9aBaaZP8U6cfE=;
	h=To:Subject:From:Message-Id:Date; b=UCALpKSNQuguaIWWkd3T6ySHqr2Hi0qKHwmF0oFGNOFN7jD2SAFFbicjeKLt/PODVTLiFf6hB2GaXIuFzaiQlO7a6zz0fTYhKjygHh7RIpzbkIkMP+zOq0KH+bt+V/TetpAxGtvJz4ZSxs3/urw0Zk96ZHEtrsIwFQifA+gQNEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDuohO2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDuohO2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2885C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730440553;
	bh=AR4dnCcO7JUVo1qJEJvSws5KB42qMI9aBaaZP8U6cfE=;
	h=To:Subject:From:Date:From;
	b=VDuohO2gTugWBHcC32TQ+M2k77VUbk3oqdcMZEwp8JDnHLWimRkSbM7PxvYxcvQ3T
	 y9ooxTdxrJxuykPNGfaOua0IllD6ryQFjAAGBDC6KBECHly5ig+mRnjAwRQ3lMptTS
	 nP2snINSidvJUymtgjg2ZJk6I5s/miAOAlzYJm0dRZHsK+m7etsSq7P74GYYQ+D/Wd
	 xiRbxUP48Myl98+jSZUAQ0JiK65aUB5Sav3Ew2YjPvLYdsPlYiC05/Db+DC5+pOFYN
	 6zoNJfk2c34pDe4g0wLFZ6MWbsEgyneFI5FeLz9jRXKoYIDdc4T6CYzTu9qGMMTl1U
	 iFEjR18YnUDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B23AE674A7
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044055359.29665.13296606814873239986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808e1bf334d1d0443330c8e11ff9326f388e9a5f030146e97c321f3e7f58d295
Date: Fri, 01 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730440553
