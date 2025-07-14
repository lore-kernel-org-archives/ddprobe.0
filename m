Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6BE218827
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752475794; cv=none; b=lZHGhT09eTO7yDbFBIUyz9YU+GFiCbSd4FUvQqim+n6rLO9BWKZNcBn/aLTRJzvH+UZe032CCB2aLnkQIAQnZGlz89kQJ7UtwKxSxMsdD6Yb5uU6wLiXbyfFcItQykmWLXyzfUPeI6NohxDJ5ml708NpOXqUrErXq4afIRnDkNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752475794; c=relaxed/simple;
	bh=SK+TIYjSgvdltczjtr5STsy1kBQRTAldkRZegD5PxTM=;
	h=To:Subject:From:Message-Id:Date; b=t3I9PjwYeogqPl9H+9IiYeHw3GNV8YfzY+P0ncn+Khkj8lSklscv8YYr0TFIzRCBGChXDf4qKqUJrds1V4Zf6NH37UM2NEPNALIX8Uo54dIAIqdgPUa0+ulC8WEYd5GOV1HqxEcroT3N/JN303ebztzAq0Nix6goaLuwZexSIXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRRuXlVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRRuXlVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752475793;
	bh=SK+TIYjSgvdltczjtr5STsy1kBQRTAldkRZegD5PxTM=;
	h=To:Subject:From:Date:From;
	b=RRRuXlVXWXaHMaOGvAqjU7GuROvbDyIa5aga1UgfL/43FNu0RuEsml3LC6N4+vy+y
	 keRTkRbTTW5LpMLFeLYSNv/uA8RQVJc1rREam3JkZwKBiBCgZ8R/x+gszmOWNMu5m5
	 eJ17R922k4a1Jwsj769ONH8U7Kx4vbv9AHahNFP6PW072jdeH+KRdc0Hz36v8iOzxx
	 2zTP7QRXOB9/0kBVO+XqdxTH/5cOFLy5rh0rRrekT2JhwzlEUVIcfx1JgRI+QX57/Q
	 D2cxm4gJLKWgOz5DXcCt1rwDtcqiXzJlBJLbtKnKhA1unuOk+DX3PXjXIISSO9ID82
	 j3oSCI7iAiOcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069DC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247579358.15045.6936880405683461072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180fad607741462e66ccc7cf71967767ff6ffbe12ec8facdd3164cf02d82526b
Date: Mon, 14 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752475793
