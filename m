Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260AF2EB10
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777225654; cv=none; b=g0krLHGQw+9gASNDmIIdpA5entjwxr3cvVNBlv9nF+G0l5ulB0TR4IuqjioMcJIe2yIwu2rbYOyWRbWGvfrVlJHu+mqyBwa84bCVZsqVOkzOzkEvhe023VulpFO8BVLmzMaPscWn8NAOWezslUWog4bAWxffFTuaRZeivFE7ugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777225654; c=relaxed/simple;
	bh=Jo8KDtrpxK2JwbkBLa5ewHAwIbB/aHamcLccelgDwkk=;
	h=To:Subject:From:Message-Id:Date; b=gXkgm/nHsCZPEO3PtG1XvYVI5TVM4BxpTQ2GoXmnz2KmSycuZc67VZSghOcGVLY2EywJYiSJnjCjWU6rPUd+Tp0qSenvv4+5IIbGS7WMsJl7h0aEa/Y94jGENZna/nV92zpgcrybh6/MFn3+Lk2ziMiR/KbQcaPs7PwDfcNmGR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNbL4+R4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNbL4+R4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F17C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777225653;
	bh=Jo8KDtrpxK2JwbkBLa5ewHAwIbB/aHamcLccelgDwkk=;
	h=To:Subject:From:Date:From;
	b=VNbL4+R4QM8OkEf0vL7dC05b5XGw8Vq4SxG58PoFwUaHydpntnScbHqofriZeqpRI
	 yw31QMC3Clyol36wO3EXYPLJzqBCZ7hX1BdfXt9ma4gUjLEG82gHrnrcyRxUw2Vwoy
	 nhAzRx627XlE7HP1G3qqypYgOxlrtdBxWkjiqflSHwbgmgMs+5qWkT1TKFXzqxUtDv
	 OKaedX1SkNWzvwqiN1m9VfhfFvS+MUjXDDgortv/mYH6de5zyNTxejcRPoNDvhUnmd
	 CSDbveUS7QmdikOpHqmUYLfohxGLvnAkQSNZiepCjReGdbfmllYMCs3fXcCGJ2zDRY
	 Hn2QtNBY4DB0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C6FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722565370.13050.9113025841330834174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08eab5c613ce3fe185aa45db8b5b5d3c575ff61b588ab8b16c35cffcbe773e88
Date: Sun, 26 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777225653
