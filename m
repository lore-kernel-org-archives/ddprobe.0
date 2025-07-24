Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D412D12E0
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753360794; cv=none; b=ITdpHxLEbunvJB4FbJrCsKUY37fenh1lQcdo8o/gbSblityOj8QSmsvBnGvgHwytQHnZSCK/+Icx54/TxeMiLMmeFtW8Tkf4BpjLMt4mEYc3N6U2hvQgArIXJdauvP1hKBNqbU1OS2vA61BKlm4BIKcA8UKmsr504Ti4CntF3FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753360794; c=relaxed/simple;
	bh=grD9B0xVubmDs91Jv6I98EV2xZq69jLPAOJxc5oKpso=;
	h=To:Subject:From:Message-Id:Date; b=psM5HZ7nzYRRinUDvPL6DWEFQD2E0eHMIrdLr8MkEONAA7/6+30xFVyc8UjdKSj92Qly8AuvSUMiYAfQigC3AxS8CyhkHjdBLeaKxod859cfnY4dyOonKnnNhk29Jm+PG897lHYKwKufoGWzV7W8E908yegqt9flRpiC9fuOXm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhz5jEBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhz5jEBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E52C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753360793;
	bh=grD9B0xVubmDs91Jv6I98EV2xZq69jLPAOJxc5oKpso=;
	h=To:Subject:From:Date:From;
	b=qhz5jEBbVbmInYj2UKtz/i5vEZOlAtY7Wd76U8kB43RACYeE8xIV+Wp3nrpPyRriA
	 jNW06AIGGYNd0SSef1lXu4msovU37kha2ihWaAbKckYva/QgOOFiZPxth+8OSK+8Wc
	 2jDqmPSu8o3uAEDvdBd+BbxzOQQUxK7mpmTZoYQDoGdKCGx2kg9u+NmyCbJrPXTfid
	 tsXo5Y/qtZhhsnd6WDnFw1QSYeDuI0HgdGhGi1J7vBRtNOAIx6/ArbbOachdzEqOUQ
	 qq1UpnutcDumMPOvH93n7vwESFCFSzhH5AIpT4ssXghE5fgqrlEADyAs9aGp5KebfC
	 Q+akYDIIU+N4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93600C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336079359.32187.7516096113373721719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b14402cd80d56d3dc32ad1327f86bdf7e63f73dda4d7f84459d82ff69a1dd8
Date: Thu, 24 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753360793
