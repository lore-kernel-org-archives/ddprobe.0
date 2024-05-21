Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518BF14286
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716266543; cv=none; b=pPh+HCUPGGxUNeYtFANn5t+hcxwgo907rhovqaQh7xRWH4BsexoXVhaZ0ZhGgklQICjbLq+z/PE6dTbhxrlrSCSSF3oddFbWLU6yo04f5AVFP2JIuXF6g5IduWwkZr70Hy5/UQZf8vc2f0jm117O33HsJNodimB+dT1l1lvq+m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716266543; c=relaxed/simple;
	bh=w7krF4oK2UAsL2CUeEsXgc+6qRG4zhXDE7od+0MePDo=;
	h=To:Subject:From:Message-Id:Date; b=lRm09IiSSHyWCA2a1VlR7IDrTAU6Ll15B4B3z/1Sp8RX3yrYsHCPukTNBIceycllQ3l6tq4f51wDwluK1fPojb1vDx5kEELptAbz7bzPglgVyBirOq6CtXn+TXkrLvfeslZN+YpcptoYhgKuKH/Gmoj0pHPTQU4lMgHfruF3iEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnz6Bxh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnz6Bxh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5326C32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716266542;
	bh=w7krF4oK2UAsL2CUeEsXgc+6qRG4zhXDE7od+0MePDo=;
	h=To:Subject:From:Date:From;
	b=gnz6Bxh8N3ePgya9PA33fZvFsUk72oV7F0XXlCqHt/2DuKWm5cDR+7mhjKDEMAhza
	 p1nme0nBDxE5C/wfwLqxPuJkB7Lu117/BpBryWeulSuJb/XmuzVjjuHoW+2SbUWgMe
	 8rSIdrHMA9S0y1917ZQO152WwBXF9Xy5qMjKp0s/nMgxAxEl/WccmVLH/5kqT4cg11
	 8UZm76q45Iy6cwizqvu53/i44MuPHmOCWy/06BrpugXinKUmIK+iUxiH0GCbpY5ws7
	 irhTP/nKdVDDiYaMAX1Cp+2wwPvHrPThidMWdyUEZhprZDRJakmouf5szSLw6jTVfv
	 fZNPIsqlNOhwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19A1C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626654277.28371.17537672073534165854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08078bd250ce779bdd979c9b84b2f01e6cc2128ed345b2b676a14436ab18617
Date: Tue, 21 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716266542
