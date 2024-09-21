Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B38C41C60
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726912554; cv=none; b=VCMxRBfoc30GCJWyIWYar6FB24W3eoUYBi9W7bLE4vbEdUexnpas/y89coiUou02cK3NJuQgdHkS0obYaAqwvjSOHXj5xQO2yEHcgisHyU729jA9hcFgpMLTcQCcn107BVmV7kBvS6oyEB0hWmxcsk6tW7mzlsgZTlGGQjAZGRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726912554; c=relaxed/simple;
	bh=9iCWc0uHhxO9fYYfbZRXPXKhi+kepli3t+SqEHJ4RmY=;
	h=To:Subject:From:Message-Id:Date; b=Yip8RsHaul3zL4nbLUEtdNS8IC66E7zq7rPd3Sl+1O4Mj9sFuaXvAemB6rozF6zozY+5pl9w1n7hz02Oz4hDuzJ6FaJvurL2GD10cLMGpMaeDcz23wQppJMYWLQdAAcKDX+1802Vux4WCt6NYDEYMVEPkaIzF3eO13cDkzI1wXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5Xcc8d7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5Xcc8d7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEDAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726912553;
	bh=9iCWc0uHhxO9fYYfbZRXPXKhi+kepli3t+SqEHJ4RmY=;
	h=To:Subject:From:Date:From;
	b=c5Xcc8d7ToVGfeNX0KAEP8O7EXG2cZ8AR6NCzopuTxzTNfXXpLMBWxwWr1YNFddxW
	 IhwRun/ld4GNZScg0L47iWMA5CqMjjlifkGW6dFriehCQIEVbrwF5nUkNeCzdSx2gT
	 aeGF/dvW+yYgAHzDQtxcIyDfnsBtI8T7hTXlgBUNhPOYN3JhhWaGE4OFI7yv+hK3no
	 eJv67bz0op+SGkdqWQETW+fAgd4WgLIQfQrgUJYY5mHnxRM/I4qOgT56OJDQXYbwiR
	 le4lHUavbGLgJdGRYYIgfNPQPimySQMjXpaO78D7H3Rhbg/CzPGXEkZPS6bloWiwjL
	 594CqKadoc2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93960CF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691255359.14543.8559037925035849092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bed38e8f6e608e41c77deb27b36e911359e73ce68121cff3b50840a8d5ff98a
Date: Sat, 21 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726912553
