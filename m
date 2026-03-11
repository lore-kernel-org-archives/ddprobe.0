Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C126D367F47
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773192893; cv=none; b=XFUU39f7TOELECBxKXArElLgCsrW76uefVA9s+7cAo+8UCpFaZjzL6QxzKGgpm4UXfVRrH5/rFk01ysr7ob89VZQyZuGmxUbtWRMjxwy9hvncS8HMaZZI4nm6YpJ1B56DUHJLKXmhn/6U5K2D5w69Whn8qAF5VLreE6C+PPWZJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773192893; c=relaxed/simple;
	bh=PtCMYxNOI2I/RBTxAPZxNXlvVSf3bDohLMxR/mXld4s=;
	h=To:Subject:From:Message-Id:Date; b=MBXQwEHqjKYo4HALs+DJCV/orYgAH6bnv7Bs7ihORy0J2hkSmp+BuzEERIqfg9g64OcUhvBdYdv1XyIMg4+X7VnwqdPDh32qSwRypZPB9OhRDykoAGDd2GcCsk3cgC/CAeWGMw2sATNL2XIr+0kSbzkxk1UZHPAF9lnhUpw9Cak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euP6uzmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euP6uzmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A641EC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773192893;
	bh=PtCMYxNOI2I/RBTxAPZxNXlvVSf3bDohLMxR/mXld4s=;
	h=To:Subject:From:Date:From;
	b=euP6uzmGv/RZa37DpqY7V5PYTWey+RalTrNk+edIrzIhKlhvImyWUxGndsqgsdkDb
	 HY9fvXe0xc6T3Q713P2cS6cnLFK+zlDahBt3AGqHErvZ0uvhIXaNWngzsJmhfSIoWJ
	 wChutEviCZSf1i17hp5zvjeRKbiOsVomHAwkQEFDD/IWA+tgF44MFxX4AYYmP0QcCZ
	 Q4TGrIhwTS8Pl7ZX9wdPRqznfhwIlj/8aLyVxTarBuO+jwUaNQWPP+57Ia9By6/RsH
	 AuXNYbWFNh4fJwcg1Xwj2cp3WVoPClSL+0j906iZau9o9PNZ04We8SMKVhdI7QlUE5
	 qMFL9k3ZpS2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F87FD88D8
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319289357.19507.1724462551313313161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b9a59c5e25d1ba120e3bf1bed61b23075fdf7d727f2f6076bdb214e9b548b8
Date: Wed, 11 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773192893
