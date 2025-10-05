Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EE879EA
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759650594; cv=none; b=eezCbR82KhwDd/OcLxFLSsTEtDoL5sEhFR+E83OquhHCSddwMKBtcpUBEv35W5X33MMfYkDjI5f+TvcuWYhyysWqIbWb3hU+/2RTXoCZSxARoDIJ0jXRKGY+624UZfohaBGqLBwiV/hgPUlm3sJmWbJSZRBFrHySlYnK0ES55ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759650594; c=relaxed/simple;
	bh=bK7FweXgHfniEUvemlfvCS/bJcoHteq2P2LKl6F2X+4=;
	h=To:Subject:From:Message-Id:Date; b=j4w/sCzl4qzra88ygLo5uJch60Qo0rxDPRQbVm2af26/KpObvPxKu9oyyZGR7o6Mfy1F9dSGlLXMVde0LFinz7vRtkautVce5wSp+PwY8GYRycm+jfp12xSgzyw/hvv4odNV5guSjv8eGehzTK1ogcGE/ROoiMfoW3JHQDHoPM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHFt6+sQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHFt6+sQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9208C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759650593;
	bh=bK7FweXgHfniEUvemlfvCS/bJcoHteq2P2LKl6F2X+4=;
	h=To:Subject:From:Date:From;
	b=aHFt6+sQIVK0P+83VNQO+8YghZfziwfgZTjWtC/iX07jHHt6cMxWoM3R6euQ3aiNF
	 0pUBOPhJ5+10q24hcQpkR3Yq3EZLvULgCPm5zEP0jzVCbET+R4Y2xVQxfaQ8mc72Vi
	 OsZ9jepPC4Hlyms1abAESQWOxQlwVuQP8nDptFg1cSxufHzBDbxlYWjDl63ECOaVoC
	 JWIOsCsZqpTZIUOkdhGQ9Zr/Sx2CiEdNbT8iE6RXju2REECap7SmvCATQEMcBD0X2N
	 u1lIOtb4A88wLgLf5CKK+uy/rJ3KKUtl2r58G54BZBAFHEtEGd3nw/2rj7hjI3Y4Z+
	 mdGvnb+Wn+rXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFCCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965059358.9530.13867416131246817850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dbd5925eee2db65b602ea6597a1c4ba98aabba3ca0e775641618af73b83135
Date: Sun, 05 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759650593
