Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E418194A6C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736447754; cv=none; b=AXGTRO3IkQFY6OW7zepq+9Umi5XyD+QCi0h61S+MM62rjZgNfb+R9Tqk/l71ghzPx/nWonV2F8df8oeIpgISyRyMFxyGMuvMRXNhnbBu+VRW+xxLyi0o3X2HtHhLbRUDY/Eq3fYL9Bfg1y8HbedBiBiVXS4LcdESuW9em0+Z1Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736447754; c=relaxed/simple;
	bh=lffjPj6VUB2yphZKCJ6MOmOoJtTINe+UcIHjbxui1XI=;
	h=To:Subject:From:Message-Id:Date; b=bhqYXojTNtlgMzSsGWKAi2GrXYcsnzcMzAj2QQQN3VVzRtpMmgSR943y6+Xfjb5Xub3mtcwRB/cxOqZF6YpikBMVtG8qbEaa0caGI6akodNsFWa0nE2SGp1r9zMvSuayiIoOkqauF8y3EwNfIjQAKiknmA5M1zh/9ECMF2uzcro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naAAu5xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naAAu5xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAECC4CEE1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736447753;
	bh=lffjPj6VUB2yphZKCJ6MOmOoJtTINe+UcIHjbxui1XI=;
	h=To:Subject:From:Date:From;
	b=naAAu5xh5DZUtgFIsK26L/1QjJW72kQ1BE/ablREOVGXMRmxcn+VYkbbjAlu2CTvM
	 EbIG2pxP6stofwqlvP1eD5pnl1E0MfReneh2zaiJN/GTHgyt9rj2SytnverBY4BHTT
	 KHlZIWGqW50+aYAJUE61pIigr4G4GQSECXcb7wMqc2qbgMTz47TJBCIyPyDtAUOrrz
	 uBE1MDBQ2Aoob12t4SuUFiwDPwQDRwWD+dwl1vwV6ziWoHAM6a3WUZl7qwyDMiOj38
	 yWXPo1BqIzO3T3HOiCDkuAqX1nbzsPOSybYbtmoLVOAbHdG0I7aOXmcPSwNtB2EjRw
	 p8LC988u8GxBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EABE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644775359.16903.2169122797511875418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cec15a2b77eac0e3f84dd829f7eff7ff9790b9d00fe1d936f420db585a9588
Date: Thu, 09 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736447753
