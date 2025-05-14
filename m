Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46394223DE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747267194; cv=none; b=kiAg8xGFe1Awo2FEWRyiBQ07vJg3Khr4drvwSOb0L+j+rcUTroNMS2WI9WPXEPoJmPmEwo9H8zcHnRbRPxv4vwP1kmlOpubuJaNo9th5BRgd5bUY6XPLbbNuRxdhUDBz48jgywsgvRdkC/rky1Ka8C0GD4uA94yCqXBMiwESViw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747267194; c=relaxed/simple;
	bh=kYlD6FATYOaDi7fz5F7uBnModsGSpd8FkfRHJt+5VKI=;
	h=To:Subject:From:Message-Id:Date; b=u0IktSurFQOX3fYnRG4h038q38mGSYiEkSIInv8ctJXQohL+SLbfLR7wIXUUW3HbpZH4NbpOUVUFDvOVY7IFCHFkaNIXMKC3eX1TlwpJMIgWwQyOY41d6sD0g3ALf20VbfcD8lSpkI6Yxi608tsywxfn2RCb6XLL9+ksa4k8nG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl7ZA5Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl7ZA5Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1542C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747267193;
	bh=kYlD6FATYOaDi7fz5F7uBnModsGSpd8FkfRHJt+5VKI=;
	h=To:Subject:From:Date:From;
	b=Fl7ZA5CrI96BmDaqruCAyENxc4uti5OJRRuLz8CIxP6EizZIPYIgsS68OFT8P0OLD
	 etjAs0z40f47ldCHZLiVP5yYBbC+5929DKY1zVrFtvb9K36NqTAIKRaCrWzbkNbsTw
	 3gRL/ZOZn8P6ucU6amTIv2Utxu3yqC39E0TiZSgMGbt2Hc1iY7MOf8KJJFAE6fMtc/
	 Xb+NxU3q1hLl38xgTm+y5EtjvnwQ7BC8sS1/RcNrT4Y4Pz1dIB6aAHwmoP1IN/6I+Y
	 sjdeGAgUVKHpHZs9Ky2xSnfP3VcytE/x7H88iDyxAYfrjPIhON1WO+EnSDdPJkEj5F
	 z4cuNg4AjdSLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8EC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726719357.11885.6502916199457766910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a01b3adf874401efbff637fda4dbbb5d96dbfbcd05f0f9e4ef30cf48dad0f41
Date: Wed, 14 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747267193
