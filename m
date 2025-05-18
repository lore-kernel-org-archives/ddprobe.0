Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD62BE65
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747583394; cv=none; b=YwlOq/10cUQQUWHPmrE3cZyb39bFQUjFr76tvnuz+yA6Apl8KjPeEYtta0nlOC+72qNim60sqt96p387OHy+IPmuRh8VbY7xcmftDGxyP4Pu05TS8QRASiSG5k8c5LRcprOd+Edm6ZgIrpjV1W+wfw8Z1xETEP5yxTKyhbeMRp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747583394; c=relaxed/simple;
	bh=uSgoYFcHIClAZbLGMjRyu7t603Xs+RhkMDwA1zBX4gc=;
	h=To:Subject:From:Message-Id:Date; b=sY45dFKh2flcASt+2ICFYl5yUoBuAR5xDtVbd+7tm3wzkvfH9/5n7Xyp24SWL1O4gAWs0Orm7mJX1jJfwu3vza3m1hTijwmA0UBHmZ5lTGE9ztfGTob+0fYOpRsz33W2e0jsrUpMmtH+VLYFzoUZIS3DRK7xzlhH1C1iJlEPLl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jlbp/5h3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jlbp/5h3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D62C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747583393;
	bh=uSgoYFcHIClAZbLGMjRyu7t603Xs+RhkMDwA1zBX4gc=;
	h=To:Subject:From:Date:From;
	b=Jlbp/5h3OUffj0YBh8MtzlD8Yw5l6X+2LzoYYhNJYO6GE324ntsjekgo124EPtXBb
	 7Y8OUCCi7dfW9Njueja+kftMKDFUV2+bSm79iWqPiFs03Deb/zsQsAnst3ks8ygZ73
	 TmIUoDHc+zTU7qNaf7pmH10rDDZmpZeqJ+wSTZJZ/Jr/Uft1XLQ7oglxPUZjVOpRmJ
	 d8+AFjWQgTADEUg1XVmx8ZBWxXcV9IA5Fs19X4SlwfzH2sck8G2WpPg/b7oKqKY0Oz
	 /idifrvysbePUeDpROtyebv13D7ora+JWNppkgapGYV7eGi2/TBOAydb3wIKmDbgWT
	 /YBdgYYkoVhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DFC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758339358.28232.7543726089628816075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc80e4a10f525dbf4efb4b2ddf2e506404430c69025c95926192252229b11ef2
Date: Sun, 18 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747583393
