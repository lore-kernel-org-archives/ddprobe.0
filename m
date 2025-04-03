Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DA024BCF9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743690594; cv=none; b=WI68zWHLADxvpKQwHv2QkDqIBC2tHcigkHFf/oSCyIELYYi5zq8PEZztUVTInVTmGU7ulseEj1PGbn4J/1DwSzGBuYHNTw8obr7P2uMPICIoulNEG8O5rKnA7SN2hCk8miWhMAGPZaQ7p3wLqSmUR38NC3LPLCnTzWoZOKt0JBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743690594; c=relaxed/simple;
	bh=9gqxzvXMwtGhL+5LEbdB0qMgP+Tg8r8/OHFwDDo8aGQ=;
	h=To:Subject:From:Message-Id:Date; b=JWKGuvMslEvdywelR5DXIbQUfU7auaj6PJZyXQy7A6lUkGBhOH1jUZvdag+i16dfLWY/+ase5FQd+OgmQzUcqKkwAshY2QZiYAsQhl5XTqM+4kJUzYSpCG4jw39dUwFozeix5WdhCN/qCrnOgDW46cqQz20kl5WwQkibbd3ZXx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOpn+8KM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOpn+8KM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92BEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743690593;
	bh=9gqxzvXMwtGhL+5LEbdB0qMgP+Tg8r8/OHFwDDo8aGQ=;
	h=To:Subject:From:Date:From;
	b=gOpn+8KMBgVsFqSkNY0h8vo28awFMX1ZH7CkkRsDbAkI477rqQ9yeLSfX6jyYrXWO
	 qslH4X2EOONm+cMYlc5fnN2DJFxiIJgMmTkirzrrgf5rs0pTUE3H7YJFf6HXibE4dO
	 P8k2eDFl1pQAl1vvaWUXF36TzBzhPi1zXMuy1RuRHfClh7Q/DqY9HWTY6uR5EhO3Oc
	 pR2MISKAKxToQM1YYmDO+DXwfAafJtaI/il4lGEMkKhGVN2HvK2hRPIGzhhrk+SNEz
	 JFFU1YBpUlpaNUw2elDmxuPEdQHeFrsOy2k6z7aEdEsSVpyjXIZv5zPFj7002YBrhX
	 dQprQ2pUL6NAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DFAC3601E
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369059360.24258.15258825445012703058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3e4f5655585a42b1f4d20acbd2c137bed350dbc690cdb4c2894a737d9fd21b
Date: Thu, 03 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743690593
