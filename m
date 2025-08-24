Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4257B1F3B9E
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756078794; cv=none; b=hsXLOnghk0yDsxFT6tt3T+gXFAGhSOgomkcWx3jeo9gxJssf6uA8/s7VZop2uxa7B5zY5jPXsl3x8vIY+jmOZd7rlUmLbMyOXAPBL916BMUczM17EsXcnEXl0Dz3OBS1UOigzpYhqX83l01+vUoYj10VbrjSH+vLi+0TTIwe05A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756078794; c=relaxed/simple;
	bh=EjxU2PT3xuEwe2foWXut+U5XQ+q6Og5inyigt+KOxZI=;
	h=To:Subject:From:Message-Id:Date; b=jMy1N10rbNImyvnwFkL09k2UT3fb6EdILiwXCBX9OkuFi6d0BOZKDVk2kMKvoxYDHpLhqljmRTJaTgQ0lKMCMNv95RZgpUI7pDB/wiTxG+o2jJMWGjHmPCMDcUTklmosajrnwZSVLGQJzlE5t3LhqXwatOQ5zgcBqBWhiD6Af/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0w7+s+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0w7+s+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756078793;
	bh=EjxU2PT3xuEwe2foWXut+U5XQ+q6Og5inyigt+KOxZI=;
	h=To:Subject:From:Date:From;
	b=c0w7+s+nSSOHV4elBE8L6i/A28LCGm62+ijZSeDdKHuHUAQmIm8Eofki97x2/AAX0
	 1jPgG5Hdwz84XB/5nFoNMkgMRZSideT6HA/aAitplgHklPQoiGt1xISpgYj4iDKyhv
	 pNtE/37vkG4HWyzX5i95cs+1q5wtEhfYAXsAUtjpF/JKLEtFBANn822HbDPkQlMbli
	 4+VzcvAgncyAFP/sk+EGHrGNWaQKoYKpJKF6grRpU/J5rAL6nkbjGTnDs0Tl4FGcCW
	 ylNhqP+R7wSROgg2WI3YKZ+ovCooiDOsnFCB4Jv3ZL+zyQajTyTRgzpqzeXzibfc08
	 gdz08sFjYwYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B8DCA0EED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607879357.11113.15510532814032230234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59cabe6de17eb1f1ba74d2f5d1cda59a492d41653c3fa987772a52c758dc16d
Date: Sun, 24 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756078793
