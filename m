Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF58331218
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764784374; cv=none; b=K7D8Pm0bb6HAala4jQmv2bSD0SbMcItic3xV6NriQ0xIB5Y7jk0jaYkkaEsNGk4s/yqlXJrb9/KBSEt97YGpuEF1ab51DhfG2F8SRC+p2onAChFANRhq9I2pOc+eTYmO/MpQFW6OqMRGmY1kKUQgnS8aoIHkRFZd68xr5WSI0D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764784374; c=relaxed/simple;
	bh=Eri/m89mnRcgcQ21sbTweHEge6seUfkNbvPBPMHQd4Q=;
	h=To:Subject:From:Message-Id:Date; b=fCnR0LxBEod+gSxVxeCxVE+LxBOZpPgduggGiIsEcXQXlF4V0k6n8alIlesMc1D7C9U+hjhKDAleVqirGN/WFuK/ksFIe2x0WHmdOGh9aHmEi83iOgmZ7NRm1aXMMrF/erYT29b8HICt9vCy3tozF6oAGPL5AULUW0tKMM2+WHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exYRwJuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exYRwJuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F01C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764784373;
	bh=Eri/m89mnRcgcQ21sbTweHEge6seUfkNbvPBPMHQd4Q=;
	h=To:Subject:From:Date:From;
	b=exYRwJuqITO62ij4KD04cOLA3gCGm7h8dBtqEFyMRrKZIXsq7Gwos0filSeyOBUd9
	 fWgqVEww03QNFk10TfA5C60EtPiA8+U86tA13+/C2Hw8xk6hK2V8QY2fkbBIic0so/
	 GdY49nlCl3fuYZo8Tb1a1ze7WawcSNR/JHh5GI+U0R37IW41rSJU9s0fjSXTRpaD7b
	 hEbp38dmsSo2StFhGLqCIThvnrKh5ygCfW/77K90nm9vTdGksMF4KD6iCNUjnTSqMW
	 wFBnShRg5I1XQShaVPVJAt160piRQv/QC6fNC2+1syQ01oUOAaxUy4bUpxIPy9NrAn
	 ETqqmCbIOghuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973CDD15DBC
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478437359.28160.14154917280533639437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0022b0b1496bfba2486b3e6d3745aeb32b440ee7d97ec8cd67ac73f9db6d8ed4
Date: Wed, 03 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764784373
