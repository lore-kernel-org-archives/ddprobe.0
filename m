Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB067262B
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773567294; cv=none; b=GcD0b9Yc53DcgNXK7lTnLiUiTlTjlBNViYMR4VmdEFz7caZQBbajdB4DYhe9FMyg3esqJL03aIAIXpQJp2dzu8TBCpK8sQc+6Y7yfgerX/Qb57N8M1JmQSQGjjcSHln0e+2u8Bx4MyOH/sqsm+F7PGJXz3ygmWKDXq0cHwL3RH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773567294; c=relaxed/simple;
	bh=eOagT+NXCZ3JZhQO6Bb2FpMXezhuKR5KHJ2YqqHglUo=;
	h=To:Subject:From:Message-Id:Date; b=OSdPMIZOtzA+d2caOVuObRa6j12W6HtsdLJah5tzZxgJeTnlMBw0HxODeDHWNyuywDh8jor9Nbsaq5LwBwbFOU2NNfip7Vo+UBYg4hI5/McdKobvnssqboiYjSPo6rC3dhJtfgNucsB68fkjRIlfIQoWBRTIhdUowbn7hBHb6Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqK1Tabf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqK1Tabf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7390C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773567293;
	bh=eOagT+NXCZ3JZhQO6Bb2FpMXezhuKR5KHJ2YqqHglUo=;
	h=To:Subject:From:Date:From;
	b=uqK1TabfUEnKQcspDUNyEubRx9eX84cth5kmLGXCaqgGcNGn9rsVV5nC6XuTV8+0h
	 LhQqsnDsx+vhoQCXh+JX2THbQ1lSKS/biOY56+b+ZFq9F2l2uYVO5aRJv0dBGayIQo
	 IumU+vtKBSeMoMrZq3jKkdRcE/44Qy/E6gLan2sB74zZKR72XSS6+xtUUf6bdnQBKH
	 GjJiw5kK0H3x+4vHyflw2aqU2M9nl3IK9wrHGOHfkTNT9hqd9g6xnmiPVq5o5pMX3p
	 X0xqbLMyU9yT2FTsj1kuUcosNnZUdwe95lvqxhPFuQo41Y59wC6orVkxQMpyfj/AMI
	 wuqKwzpYJe9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B1D58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356729357.27247.16735363257003576711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb40bc603e3bbb879ef78cd8c2f4ebd9e2272d7f9523e16c58b49d09d67efb7
Date: Sun, 15 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773567293
