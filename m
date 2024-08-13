Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5DA1DDF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723577754; cv=none; b=GetHld2x4dwmoI81xS5jtZ/oRZV2sL0WD1lxdJhoClhuhgxQXlBLX2W3+ZsqurkNBfN9rU8UZTE8YqoH7FU+TnP6Q8h8/CGHERdpPwDOZ+5k7BSaTOG1kWwWjLl0vWUABANYEMuV0401+sFUeRiog8whGbwZJ486SefmjHGspFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723577754; c=relaxed/simple;
	bh=GtcOiz+wSNdb0+OmWJWRfUfZEabS6ec5irVX0Z8n85E=;
	h=To:Subject:From:Message-Id:Date; b=kAL9jzG3P6uZrwWvJs4iuYClc6b2nwCzBiGq+1tflMkVsBTwZQGq0ycKFAxsapDxM0iQtQeXUPFuu5T0hZF6Mwx784YcmncI0cV78o3n6F3RJ4VmL14BEtHauQw1lhjxH+MiecnCZYALfgrkWfZzqJk/nlVTq5Pt6/N8zmJmpZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ryk0TIuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ryk0TIuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32CBC32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723577753;
	bh=GtcOiz+wSNdb0+OmWJWRfUfZEabS6ec5irVX0Z8n85E=;
	h=To:Subject:From:Date:From;
	b=Ryk0TIuGDAyvpOoqJ0VanBazHD6c72SUs1aHfpAi56qGnk1aeVTEYlk6WjmYaB65j
	 Hs2voxW8rWH3o8I6CEJS4FjpYtK8GEWM/e/l368QyvJ0pP3NFepY3A7WlkGFFoO+Zv
	 HqTBzx52ZpYWEdFBYETOWi/eumNFp40BAkUWvAI8zUTw/H6a9FY8fNj+Xg+QxMv2+4
	 cBi3Ny2O8FEuw7TVXQ9qJpMZIEDfBXWS6aFx4QqMhA5dyzKNflWOCX9UGIFI2cSIyy
	 zHn5xVXLdQLcsbDJ01BxRrgNdZyttT3gOQMpxwj5ICjGYAe4Tv80FBS1RhAQz4vh8Z
	 2u9kiN6hGmk0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC2C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357775361.26278.5432548156176281300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1b8616f908b7828e2b7d4e861ca2c97f81d382c20ed2ce0179b0415bcd6ac2
Date: Tue, 13 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723577753
