Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD49248879
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744029594; cv=none; b=GcEHq43jjjC8wDNwOi0tgynmhbPCCVeGJseUCf3rRXubJt3DRx4Cyx2m1w+hGSCXl4gVttNO5hTYeFs/sBtT6k7l0t3/epIaTXXPzZun9V4SBXkCzE0sNTF3+mvWwq0p7/brgYqgnTBu8F7q7x6FNl8NsRdh8XX0ngBYOsWTlUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744029594; c=relaxed/simple;
	bh=TAC2Vw2E6vmALc0YRE5AujQ+fo5CLAGDL5+hxtSR1AM=;
	h=To:Subject:From:Message-Id:Date; b=ZcjLDA05lb06O5kyYQ5yTOqKyKEuM8/sNHpoC8n72UtMVhpfiSUZHHJ5E13Wj65u+4QWHK/YvzVFLTZBrhgzKuFLHY0YfhqQSHJ5BHgeclCM8WuZiBU4JGe7c0RsmQVeqOubuCnB3oEL4g5ghEgOaMsIDaWMAh3BHbPGjQtxXnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwUXcNdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwUXcNdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3BAC4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744029593;
	bh=TAC2Vw2E6vmALc0YRE5AujQ+fo5CLAGDL5+hxtSR1AM=;
	h=To:Subject:From:Date:From;
	b=AwUXcNdFdjmfyl+1F0RfxF6dzmto6urmGIcC9unWF0hlAx/sF9K2USsLmjrzmGFV3
	 ZWTE6SxupcW1rgIyXXqtMeRV9djqwi8L7Wes1sCniYk6Plv/5GX9mmrzs7t/ykMBvi
	 Rstk/U+z3afdj5vuPUthNKkd2gRVuUw2msegnlruvdza195wo5WvVj4lzlsp3FaWsT
	 fakx0pYh47wH0jJqPEyLKCe/MfDiKfZGug9LKz3awGOs6hdh5a9xspCmyHOIXfqVaI
	 izBVUFyhgRBDYkcU4VtthU1v0c1JkxawqYAwy7HN4y5/xJaKsCCmKUdvK3TYFYUecA
	 zjwCjPWZcnyWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E85EC3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402959363.25078.8989177374897025935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae387d11cf3d95f379908ffe8e467cd08a6ca67e327e716b70e4e032ed7b531d
Date: Mon, 07 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744029593
