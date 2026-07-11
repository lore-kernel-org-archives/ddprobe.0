Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8492D73B9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783809514; cv=none; b=fOxkEcPSeeCMWEBUFwD93UknmAbNUZ1gIOsXGf/+MIbJC+jDMSVSxpFMraPH6XfhqGUltT9gGnz7H22zgidqk3qSEFClPXgwOlV2DcIyQtwYTguwFJKMEHeERHZRf4WDmtFfjnAW2L8Ao9d1faY09zivy2SXNR0OyMSywRIJh/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783809514; c=relaxed/simple;
	bh=lM1ANWG/3lStWEBrFS1wyswpfHKK68xNZm/+VfHBrvE=;
	h=To:Subject:From:Message-Id:Date; b=agxhViPpFtYiPsBldm2dqAvk1RKvEpJFSZG6kvMaPQsD9R5PwYZUpdXZiS/DjpJ03Ebo2pQifP8sorQaEuJHOzylDTeQhNy6uja/tFU9fFBkxtSA7v6kJeNFrehAoEpbrmUqvZgV/WagY1NuF5gmKoGn/2ZQAjcl+iTfhzVVxkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdsMAZBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdsMAZBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA75EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783809513;
	bh=lM1ANWG/3lStWEBrFS1wyswpfHKK68xNZm/+VfHBrvE=;
	h=To:Subject:From:Date:From;
	b=AdsMAZBCfjKB+YCDxz/tAlAII6nQyl8hisMxSXCuSg04V7hDSV29Pn+/xddTU8XC/
	 Iw2D994H/mjj9olsMkmDrBbRNFTH5NgGQRYu2U+huxH1Nl+NNyui4u8hY5GvlZ8VwU
	 6gXp2N+ugQsMUNZaf0LggdzjIUMF4SuJ1Rdai1J38biZZlQatH9kTHxFnpXzWqVF3W
	 j/esNEhK7mNNXIQmGHRdBhRrsVVdADjhL5VtKSVpqRCOsUgSdlegGzHMkbZP8F3qux
	 GDqA5CAtsWOkQ6gzRoISCtTly+pFSy2lmvgrzUJpKi4CImX1/5z7kBYBRqCoBvde28
	 z7vubQ7izleMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B9C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380951368.21501.11373474443233368671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364f39791b84f5f4da1869a6ee5a72cff003c172c184fc374576c331ac3dded0
Date: Sat, 11 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783809513
