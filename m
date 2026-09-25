Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4BA35A93C
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790307034; cv=none; b=l8ecTQek7TGTNl+nvoPTAyNbGYZSLdVOg2z8tzkwfsxN2RFFPiuPS21C/OdWg5S/jWV3c6atpukC0o5js2I3Mbto1iIjTNq1W9z6vDWCpICLAKdzG2eXS8t8BKumDaefcYXZnGboxE5ge37XnLrQOeM+UUbS8YB94Py4ZD3WYTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790307034; c=relaxed/simple;
	bh=26yzTjxdcdInvlQq8a4xDfmpoyXME6JIQDNsjMrNcAc=;
	h=To:Subject:From:Message-Id:Date; b=tw5TaZ7sfESxQyfHIMClLjrpmLRPes8K94NArVkpXMj05gn9621RCD5wSaGljFKfUEqalJGVx7cpe7SK9OYXqh+guYnXPZo70LiG/bw1nwmDLDMI9Gvy/6/lwU8zXcZjNzxkbCpcWfstRRsNgoahcUyx8cLfgfUmL3n9gUjU8WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlKPRhMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlKPRhMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF530C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790307033;
	bh=26yzTjxdcdInvlQq8a4xDfmpoyXME6JIQDNsjMrNcAc=;
	h=To:Subject:From:Date:From;
	b=jlKPRhMcZq9sGZvYN8XspQsbAIvoUYuqMUdS1QSM92SJ1+HRdg7D+Z+OMSAKTC3o+
	 71VSUordaNOpRnZF7LuI7vT8BmFuH6YgjrDfah7+V8B7mYA14mfglayR3xxnP0QRBt
	 pxJVWI08mSFkiloifnPKQ6ikmUTZyaN6jO1J0HYw/5X+2EHdcVRiQHifiIBg0tc6gx
	 S+mGp+imYT32gvlKeoJkNM5X6B0LcNPeBW61yPEUiCM5eHBk9w/62rwZgjLCBcdjXN
	 fzH4WlGHAX4e9rARP/ikITfyajq1e9Rua0O1kpefsCuXt1OLQOunwx0e6XT4y6+o8e
	 FehUFYgpCLXgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE179C98326
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030703370.1046.661033852962724898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76eb54b2b305e0c41747cbc682fc368f0133d893026d8fc7273a80f8a322cfe4
Date: Fri, 25 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790307033
