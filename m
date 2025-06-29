Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF2623958F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751237394; cv=none; b=HWUlDQ573mc3hGnCNfSe9POdoQ/Hpf4yymcXbp6pEmP3chT53jts/x9ENN+IqEsX9QwVmKyHQzJST4BOP0/zTT26L40XA8PXW372Q9FjirCKZc4dZ/ZewVs+7Od1Zcs93pe+e5uUcbokAIPFjfebVC2JPWMk/GTA4J2hZbPgprA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751237394; c=relaxed/simple;
	bh=qW72dLchF7HOu3ATYg9y8pO+jY+hs0fXdavpV6kDKsc=;
	h=To:Subject:From:Message-Id:Date; b=IAuK9zDs5az5n/MXsT+Ey2zZuY1VGgc6okpo9g4ZBs/w4TZSbMDRZE0fQ1pXZeFrMQvgWO5Wg9AGzi1V4Q0B6wmXFF37ao68l0cWhLe2RiAVyX1x9CgrxkrIpSG5BFqP453XAWJfRutAY9CEYCFesFh/izFrUxRkcn2ZUJ52ZCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfZ9vNpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfZ9vNpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E63DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751237393;
	bh=qW72dLchF7HOu3ATYg9y8pO+jY+hs0fXdavpV6kDKsc=;
	h=To:Subject:From:Date:From;
	b=GfZ9vNpQwX08/kR3zM54UHIqhjzzhO+Jsmh+2Td8XQcemzZdLTGwur4lrqeGjDq5U
	 NDt9931E9/+MbLPdc1Z0pd6cbXhywrA3rCdnxiQGBXA3Ac+s8MeslJozfbOMz/ogz4
	 c6fF5axlJAZ8F5S+HU2uhvYd6S+YBJ4jwS5WWrRB6xXaTQ+oZsFFB5tr1lw+hkFpFq
	 rP9lSRCY8ZlrgDJLehP4fPKS7z+okQvc42Ir8PT01pcVMpDfixgf70KJl3JoJNP9bG
	 bHqDmM9UzmRWgBK22hDIgyCfydAVAyVWhgr90BcDTU/GjzcIUl9HsNgIp6QnjYBqbX
	 mtslZmtWYvC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E032C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123739357.5179.4198118344915712700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e724b025026d2840dd74228eb63f960f4aee02475a9a09ff9e0a750a483e78c6
Date: Sun, 29 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751237393
