Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C700225416
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756484395; cv=none; b=Uswxw2TLDb1cWIvx4RpN7nfs8I6zjThyfDXo4+xnPmwCiaXA8Er6X1RoZ8SkB2lLQrYCtHEdwInV1JtvuBq8X5espCNT3y6FtthEiQ+ZTLq5IqwhPvn5N4ll02sUGdbPFyznXIBj8EyvBggJ55me2Vg5zD+PYd19P5T1voKuccY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756484395; c=relaxed/simple;
	bh=gp017Pztxw8LH8UJuquOlBGfameUr/m5jfBYHRn0QbU=;
	h=To:Subject:From:Message-Id:Date; b=Ka36Tu9mBCBeG6cyqQNPho5Y7rP9SnSy6YB5S0BvoeSpNXiO5ys04yiF08cPD40sxKmjrFa5uYanuj0QltDK7Q2Tjn06td3zTDXLhMyrCRS2ZuoOCSxHrbAteFoHSTNa98xdYUwmLvpAFvJDjgbJk2eXNAZ2dYIua7VqkJnWt34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMxmRSyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMxmRSyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A8CC4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756484393;
	bh=gp017Pztxw8LH8UJuquOlBGfameUr/m5jfBYHRn0QbU=;
	h=To:Subject:From:Date:From;
	b=eMxmRSyHklAHLLxPXdUqb20mFFgeCYSZWCx/SXfzBxzNgcf6g4DzMovHCl/rzq+H0
	 D4q6TDnIm+Pwp1VC9OakbFyTg1hJSRPxBhIhPSsEb0Ri8XmrwrJKoRyzGqqp6XDPtY
	 3u3EDGrX3v7grb2BJ1O+oJmb7ukbriJGoTZ1v1nlE+g5z4aVxaSJBXpxoFWvUBBQt2
	 Rt0uASHkB6UgXygLh6p4YHuI4gIiNOwUyR3rdgIivHNW7iOeOwdyXIvHbIL3bj6CDT
	 TKbxQ1C+eJS4XceP33yF2U/DMlC0vA44o+lO7wbsHeMDZRmeFcqnSWOn9o73UMtRaZ
	 4iXmgU40GcaKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90350CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648439358.30638.12682432026636595494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c065fa5f91b282cedd80372077dfc9c386af9745d76b17e16f9c90c00ca6a700
Date: Fri, 29 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756484393
