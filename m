Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA80A35BDB7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769654635; cv=none; b=hXb/248/Ey7QzcuwSOWferfC59uOjVr5N0OZmtvVQebE0VwUCZMbCFjT/yTvu9XbJnltlHY8HI20jpAyOYf6yYd1N9BqPyAQS2TarVVp0SVrFYm1Q3B036X3QcSEwxe+ZJWipmJ39Ps2doUOpMst/Xw2ny74gOK6PmihfF98d6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769654635; c=relaxed/simple;
	bh=QgRv5HupWvkWp4WUac7nEmdiqbXbQ/bvS3Kaj+hRFrk=;
	h=To:Subject:From:Message-Id:Date; b=SPw0LN02LcnzKCZB8oJoII9iklK95bs8KOKkjvLUlawxUT+Ndvy5QoOgbsoPkijXYmPNbF/8Xa1xdCH5CYV5DL08WdFe0+SDPLyKDhnkSssgYOx/t6bTYOd79rnJgyZqe/3b1rdQwNMhb/6cOS3ai2bcZe+ZBQRBfE2SHWCTZmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inyDvclJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inyDvclJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE30C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769654633;
	bh=QgRv5HupWvkWp4WUac7nEmdiqbXbQ/bvS3Kaj+hRFrk=;
	h=To:Subject:From:Date:From;
	b=inyDvclJ+vmCOFm9prJGSIT8HSh+m7d3xxWJtDZzUiDh5YZHOFD8D0ekmbXu+kokw
	 zssduAR7HkXHlY2nsydJMWiswbYD1t3Azqh0sxA/e0AmaKDnINwrHpgQGcWESb6diR
	 jsZEfiqxGjeiCOHTKIcjFQCJkDbXhEmbOlO75DkZIlcW19Y4g1Wg3uW9LseRAwto9o
	 dnutWA1AoLwJ94OeMMlsIfceteLhbNyfICCSzSYPEie3cMPMoysekCFx+w+MxIiVvd
	 14KirXjwc5nMGgyE8czZ8kPJxDPyuGE19oDdC5GsmJ0aeX2I46UweX7LEJccEQzYjF
	 wVEXh2aMzaVXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E932D46C16
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965463357.16446.12493350220977287019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49aecdba5a4d2073a7bc3210d214a9a16a3f9b8bf6c4b6138870807205a45cdd
Date: Thu, 29 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769654633
