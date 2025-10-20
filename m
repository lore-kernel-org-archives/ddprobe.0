Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249333FB31
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760922594; cv=none; b=bjRxB/mFk3y6M6xuB1NWeMpuMC0IBIb1n392XCRPNzinDldDxoOitA/DnXPY1nFO3cNLlIk4r57pC4gmFmiqnyLfw/M90NoKEnEe+22+Ub67jhLf4M6/YTyw/A3o7qbyV3nISpoj8W4eYgpfqUJ3QX24g8eQrenLCHS6u+hOrgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760922594; c=relaxed/simple;
	bh=MeB2z9OFlJcKIE7MJV6nWvX0dwQlREBL+9wdmmZSky8=;
	h=To:Subject:From:Message-Id:Date; b=qm89/yL2A9LPWQ6hPwkIYy+XEsUULFufxSBMU9VEvJWJ25mC2P/A2x3bQccopnCfUum680bqGOSWwra0t2rwINCm7Y5W1TPKCkZnwP3JIN7f1ijE60/7VVrgm+76a/lEIcIuRTueEMniFMpf5DL2dZticd2/p3WGqgh/GWqG3Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEUgp/mL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEUgp/mL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760922593;
	bh=MeB2z9OFlJcKIE7MJV6nWvX0dwQlREBL+9wdmmZSky8=;
	h=To:Subject:From:Date:From;
	b=NEUgp/mLQQImtEZh8mFHGU7I+HktKUoVPL41+B+MpxdwCnh5HKOvRIaX/tnraiSCR
	 UgZB1BXm1MWlnyJ93yLpK69EFyEoeyiZyvNByjG1WA4ThjwlZzlnMIkj1Gndtx2fht
	 r80aElA1fvx7xrDGOJJ5BeQLeuHxfcE19t1B4DXwNe9fHWAA+qqm74FEq7UwDXwXZk
	 kSZJNujb8fAUCvgwmwjNRfSXLvKjw5TQCI/483yxe7eh4ST7JqBceIE5VPD8HLmnuN
	 xty2cqQ4YaIzfiy5nPKYNjkHbu6+5YRZyMm+cRYCbTH47G/34fvcwfZjd4Gmlnl+V5
	 fu2JuzzAl9b0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E7CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092259357.9632.15804354305676458950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bc4b3636eb8befd549dfd3b171394b10f981e921b51467683da44fc60ef46c
Date: Mon, 20 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760922593
