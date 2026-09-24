Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945BF413789
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790243434; cv=none; b=fpmttVwSC8i7u8O8zpmnuqT1S66f7VH4+rDdSVq8yAwC4j/7tdPJ8wqNQwff6nGcyHpRpgK2wqwP7/lQNpCVSMw5jKFeZucu0RBdgrnYJNXamAi1FgmyLxg3FkUn9AhxTj7biRIM/9t82PHZAoYJy48PUtVoj0Yzn3AlkBbTZl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790243434; c=relaxed/simple;
	bh=o+t1DdYrR0i3qZI3sahcrnhuW41RnZ2IbRvrI9Vxdlg=;
	h=To:Subject:From:Message-Id:Date; b=rQ/acaBGECrHSQEnTUjtU5yQi+9ZRNX8bG8SHYv5wLecRWkpkCiP+HX2DjXWPmLr+Cqk62R7uL7ApwgrklM5KVG8vv/OH/UTzveHA0oZGX9JdfFpWXEVXyn4vMP8oFUvWWvptCe+E4S1bAsfjojtSvrkdPfInxYg+C7+Z2TTzuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCDdhob+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCDdhob+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBEEC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790243433;
	bh=o+t1DdYrR0i3qZI3sahcrnhuW41RnZ2IbRvrI9Vxdlg=;
	h=To:Subject:From:Date:From;
	b=vCDdhob+vy4e7H89OEoEquMZ34zg4uowiFi5f2Ev/gKZwMku/aoTOhLrMYHneLYnM
	 Ozd7h4XWNj+oaG1XiECsZxjdoqP9YV6Ov30xqV/K407XaHN5pFP3uHuc0WJwhYLNss
	 3Rg+fM2G2ho/4yeOueVilBdDjZrA9EpI6VHhp025wa9oBUQMPdr2Dec54X8V2nkrLB
	 XdxWY/S1J3eMiIyMbdnn1u629yvpkOCMC2l0UFoOK1xwko/3Khchc7XUlQ90TFA1qy
	 vu4byRUJhI5Z5k/qrC9VAJbDUlH8n0mhBxmrCTOZAdbuiYk/XPCJDdIWrxGmg8qJr/
	 pUMZ5YBY2X87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB38FC98311
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024343369.16491.3672443940732295922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ec27412c0cafd26585dec4b275e6b456c393baf30ab1b132dd66261b978e04
Date: Thu, 24 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790243433
