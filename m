Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3012525F96E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745828394; cv=none; b=PA3IpMBTY2a5ng515pSscFDmv7dzFI2xVwoFa7EzinOWKIg1sG2psmSxrzX8SlfOMjUcv9tRY19+2Tbhm2D3Eesy6S+5dJYnEEFE4FHH/08rc8JwkWkFZ6HT8xKvZYzVzrKPuNupDp1bnSWFyCXXO9tht0r+bptZIjxmB/DxgmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745828394; c=relaxed/simple;
	bh=4WT/tHBoRgaIscM0dBmeCAiwpte8CNjPtcRzhS0NTyc=;
	h=To:Subject:From:Message-Id:Date; b=X4cqkvFqJEjaYR3WvDvU7PQYdqwY4EvSowEZRskRL2SdEknED6tW67srFOf8gqIU82vFHci4O+wxYAZyRqWMiri/ksysFVEgePRYsJFzeSOrVzIWYzo+O+UvnAVwPYDGQCBJJDhrUW70lBE7z1QI9vJkU1+nsz2C8AoFzesBTqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcbPfnmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcbPfnmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745828393;
	bh=4WT/tHBoRgaIscM0dBmeCAiwpte8CNjPtcRzhS0NTyc=;
	h=To:Subject:From:Date:From;
	b=lcbPfnmtnGVecfN4yHhAlbYIj6MOfc5G3/UJ2bm5DOS8uJD+W0TkoCr8k1E25+MuW
	 P3CuWo3cWU5kHX3FrJJ/pG2TTzDiPSTXLJsTMIYtyt/Zk9bTGaEq65gAueGYj9155S
	 LpCqyrkbF8u67kMr1NtrXzLBAV5E4Cfzc2WEKp26oP4z5SjJu35f6zgr6LtOQZrxDI
	 7mCsjEMlhCwrjeheH26QsiCDMZJ1z4RrxUaRDiYxqXwol1IRFgiiNZzbRM0nwXGozR
	 g/ByesHeOgu7Ih44dQDfyU2xfHhzCSeUkZb8BwVgt/69krc5p2jnA+4f0ld79p3/4u
	 uvCpC700zBhOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB89C369D9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582839358.25482.12817288805405182501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b936840329b04c2bdb7c9fce3546100583de7868a611f96fbecfc50ae616c0
Date: Mon, 28 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745828393
