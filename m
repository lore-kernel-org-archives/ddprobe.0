Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5810E7F9
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715142743; cv=none; b=JgrOkw2jgQ1+S8J+y4V/vocpGpyncDhV55EGhbp8hb7SW0LipEqelgYYn3V6mdUDtlQWJFnTdIgXG+9esUcCYvgDPZhfcDVW09V/hdFYYUGlcG+NwYCcRp3NhL2TjkNzmxtQim6Coe7huLEJWWeUcC1vlVznH8+5gvXUXRL38oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715142743; c=relaxed/simple;
	bh=RvJffwEBd4NpEw+NWsBmx2omLFnPit7jvB1qfM9W1SQ=;
	h=To:Subject:From:Message-Id:Date; b=AYerKtEdgfs2pnjCVpE9uxJcLaQ1KeZ8Jsr6/vVrfGxFBOKFo6eZgYS/oZ7qgBHngNGR4SPUTHoczJfat1TbeCMYjQIddi0vTK9Rbbl3NlBM/jDqCEaF41rsA7pYJGwetg1mVUSIHaihlvhdLpDIl6W/+9AAHWLSQ+01tSR5+Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOyV3kJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOyV3kJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AFDC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715142742;
	bh=RvJffwEBd4NpEw+NWsBmx2omLFnPit7jvB1qfM9W1SQ=;
	h=To:Subject:From:Date:From;
	b=XOyV3kJkzo+o5WWO/4rVvk/DGAXfI1PYMBT6XSLqEUiQSrrJSW9M1mQzrvdwIt98D
	 tTfiXdUxWU3IxaMG+Z8mBCRfZdNKTNtxwcBE972X9yvZSI+ELYRehL2NXe9lZ3GzT0
	 vD5GJwhZYoycjFYGQxDvTnTa563xshNJC+SRgTfEDiilqOM+tEGzi+yatBOGEbp9N+
	 ndiGKZeWtszJA41itytZ8tekOwBBPI5Z9m31WlDNHqQFd05p7h+ZSPlNKMEPRiI1bV
	 OGsHXLFqvpSUB1l32c6+gm3PmMxsmWY/Ryt5szmzQM9Pi2+edpsdVxaDb0Ohj1vJ0m
	 2QUd7GWIKMsXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E26C25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171514274281.23593.78261637326596408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fe31c7dab94d651ac5750e9ba1eca1feb85dea84a6e332b5cb1a6817c7712f
Date: Wed, 08 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715142742
