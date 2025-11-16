Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE5AEACE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763254254; cv=none; b=FnddjUW5jiJ2FNz21JCXGDLfq5Ho1Hh3Vvwfhh+/AtPy6dqklFk2oLQ6fQGC6wCWvu3u1zhjs6XGrT1AV+VREPc0hOPk5BwfePYRgxEvMFWyWBI5fnWxaet2DxAAZ/pC6TdTLeZcbQtYKSThlF7BYcZEPvWmPgSoZkHVero9Asg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763254254; c=relaxed/simple;
	bh=GMV+PP6rGJf3U9KcmmXUz4gczuNqgjWi+tXsiBxKQ9c=;
	h=To:Subject:From:Message-Id:Date; b=bETU3FSqIF+esdIvmdAPoSTLjv/YO6P8hd78GjLmM2p+G/1S2gC4TuQ1IrwEmHsRH7vx9l983O5dzIN1NUKL6iaGBYDTZSwoxnXASKmVW/d63j4CTJsuCvMVauiKDSwaSqS1ahkxwQZYM4jzlyMxwkMQgwM6wHCLX2fPlw9QegU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLLP8fqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLLP8fqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2EDC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763254253;
	bh=GMV+PP6rGJf3U9KcmmXUz4gczuNqgjWi+tXsiBxKQ9c=;
	h=To:Subject:From:Date:From;
	b=tLLP8fqck3AWnQI/r75gpLLyx4V9ceo+NwpvrAM/jqbmqc0/ls56y/YyYNlpZ6b7M
	 zrEJMATeHe+SADoolLRTJBO/6dkZxVeilB4ue+hyP+Ogzuv3eTld8YaVyQawwqiFtT
	 0+T0A8n2yPjCvlNfFud6Wf11lA4fHlCYDCdQBbtkTust5x5g1u/Mrv4h7WLuaEfOpI
	 oPYH9leMFCQtCGNqfmfPEDdPh+fDb4z5ZK/TEEx83bRTZQXLc0eB8ab/xissRyg5VK
	 CERjktEEFTnSG68JzSlN7WXSoxb86o6eO4CP0cFql3Y6+/v+l3ebM+MRRWbeHf0irS
	 dF5y3ZElnHcew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2029CEBF86
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325425359.10281.6156854016248980771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7caee1b4008aa6c4686e9dfd984f576442fddeeb813a667bb421e5f2da9e0981
Date: Sun, 16 Nov 2025 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763254253
