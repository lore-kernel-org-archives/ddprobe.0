Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB95D1F4297
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730158553; cv=none; b=BYhb08W3Of1W25TqQ/y3UKw4O50sjy5bBPts2rWMuTe/8MD38xINgVUVHRTOwy9Q5OKjaR+jABoG0SMsGUJ6YPM0vchLgbrXLOCK4puH55bDGvSsUhMEcyCEIgZuDoJw1QLZ6y9ksgjh0pJaV86XrazLdjMenQDZG9T3PEYTnHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730158553; c=relaxed/simple;
	bh=5eBYshiFf6ZTxTyEHpWCY02qes7ONn0TUF9UfN5KJY4=;
	h=To:Subject:From:Message-Id:Date; b=UWWvpRnC/a72PPn5eAEOsBgatU+HlTtQyQbXstYhMoC/FTRi1TOzCqOUkZzg+OxXXYhMcs4+OADp8C+p8AvkKKUL/0B/lC9vTedo+ZGi045Th5pldvY5Dbl9K6jk6pH8wErOae18X2zyW77LyhLonpaUBoaAXHQnEH2DTYpnFFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Alznv26v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Alznv26v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDE5C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730158553;
	bh=5eBYshiFf6ZTxTyEHpWCY02qes7ONn0TUF9UfN5KJY4=;
	h=To:Subject:From:Date:From;
	b=Alznv26vsJGE7cUX5EkQCl19YACWLE0pWb10geEW3hwPR3JDIusdZOMO+6MWcxaZ5
	 flfacfl2wkD9d5Q9idlnuh/Ir8trRDJKvdV4swj2HPRTORj3O65xcStTDhDxYNoA1D
	 nbLxz5wImYK+R8I/9W3uap069jVEuBfy8nq9ptYACOGgjoMtkHTvBQN+Cv74tlcV/8
	 aIY5vQjafc6u1rJKezLnPCt3+3L9dqidDgxJrG4b2xXgGdF+nhwPt7EPhMU1Jx5px/
	 oxzI+PGjPXCOdPuTMLgvO8zkzvsHha45+tcueI9YtypY1oyGNLZW4FjDNtDzblR8rt
	 8VgdSsu+BHTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C26D5B847
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173015855361.26582.10364848449631640739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0f94dda49afe61700ff283b82fe1651cd15e9c597207e755ae492ba4470522
Date: Mon, 28 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730158553
