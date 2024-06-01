Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E209152174
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717247663; cv=none; b=QYfQnyfkgYWHtrTFRgjtF7HVSCJsmcRkH8NSEfGaWkgyfDoH9EbFnPOJyTtMrjuhrvagdOADW6MJ4q/1CJ6b/eGSzcvADZxwAcykVPlHsc5VpdgVH6tNu07G5T8sAIWXJHp9nZkWqTf5a46VQMLewgE946x/gErJBZf5zTJiWWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717247663; c=relaxed/simple;
	bh=HacrBHS2ERZd1LokGHfX22jIYhTn0ckClRhbJaCr3j4=;
	h=To:Subject:From:Message-Id:Date; b=GXXI4o06py3070U4o4SgoOp1IjtZw67SlQEM1ADmkU/H2yEruWg7AkeRIX/tuxKk+W+DaP6W271RX9bDzS7sNVbtKykVfq54jZDQskC3eOiEZ8FhkNcBrJ4ezcrVKn+C6PsRJtyw6dRjiGg215ggT/hcFodQdO/HBGvunuItCGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip7OLzU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip7OLzU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B5C4C32786
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717247663;
	bh=HacrBHS2ERZd1LokGHfX22jIYhTn0ckClRhbJaCr3j4=;
	h=To:Subject:From:Date:From;
	b=Ip7OLzU1Oh3tUBQ8jJM68UzUSCAPG0xuX6sNgqAd6TaHVVMpn+x5JG8B8L7C3FiXd
	 Dlt1SuBNHgIyIuo06EK+kR/HA5LE/SdcE9SX4jA4vgff8i2pATbShD4kpCW2OhNLNa
	 iLH+3K9U0+u9nI2ZH8Lzn/hvBpxM1YeVRfuAHzd/ubTL2dO5vKBoOn9z42D49sG/AX
	 xP7CpaqnqFhCx8daiat4vUkAsPLuTFNQWxxmdRnI9211vMCR3T8O5hz/0rf39F4tph
	 YKTeivlfTzTf5Huc7naiaes/onDYS/NH6FVFLIY8mW8MsiGdYFG8LZR8MIkkTDuI7K
	 pTYlYG0BNNf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF53C27C50
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724766282.10923.3752283035338167544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096490f00df31dcd8bae5b1c4aca0fb7353326a029802f572bce927ab55b3e9f
Date: Sat, 01 Jun 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717247662
