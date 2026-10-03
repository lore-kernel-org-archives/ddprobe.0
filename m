Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A431A3FA5F8
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791026434; cv=none; b=GAeGNaCBW2vbCWA7oTdwB5C/O50Zul5ulX37ovKTythUyhzSC8yfySHwl+atEz5Y8wkTPVrP7jCCdgf27H/TzwMXDhZ/Nj//0GEFOBVVN0auUCAAcKZd18mAS8AsO5Iuc/TMlBfAmOHgtOLs4aTt4Wcus+6Lwke8o9QeXUo+Ct0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791026434; c=relaxed/simple;
	bh=haRbtsgJzgkUtjuBJrl7pKM4TgO5LOOzsS3kTmwcprQ=;
	h=To:Subject:From:Message-Id:Date; b=bNOsZafDJSZCWW0b9WFcZnbxbnlCa3jnVxwLGtnFS/ktqIqptJmobvqCDuqczWngiLrWakWN80z+Mexp5n+nQjemBodr3yTgWmwHfcPE8Z3pEaMPbWFIWPMX2o86FtP8pEpXHUuWjsC4alnqYvyFvPmrbHAQHDjFI0BlVHOFoVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2mB5L+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2mB5L+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E5DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791026433;
	bh=haRbtsgJzgkUtjuBJrl7pKM4TgO5LOOzsS3kTmwcprQ=;
	h=To:Subject:From:Date:From;
	b=f2mB5L+PKDg0iWbmi4E/au+0Uy2d7tPmSm+xe3Krpm5gJVAbYcpUXRTV37d3R/+7+
	 p7COL/jneLK7Au/gABeOO9ayDqLf8RFaSGpoOvqy+uSRQp3emC6dv3U6b2cpGoro15
	 UKcxXhLPV5l4WFaqvMuBIyCfjNUEkrwwOkbPGZ/OGfJUzWkKEjrMeLBtbfOguBAZ+a
	 GE4nJ6qeZkgUhP6BZOsTJKUHpDK0gr/SXhlqajSV6axNSsO66mJyRas16VXwrH4+J7
	 WmYLLaUtzIt8EB7dSiaRbmYaXh1Qf0P5NYt4pl6CYxH4UBYXqos/l1dHM+3Uz55NmR
	 9KqCK924yI1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977DCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102643368.28444.12454470382637333399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d44600e013cbf53f6423620f34e293641d41b67230fc0d20e2e5ca2d4f42dbd
Date: Sat, 03 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791026433
