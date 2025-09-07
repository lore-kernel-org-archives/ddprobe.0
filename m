Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2C2189BB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757276995; cv=none; b=nsgginTLuwCURJH90g1MQADIHXCjt8qrY7kG9FWbrUn4Fm+Ucp+o/haoPv7jAGrZmyPx+W0u/DLWqhcdLmdgfmntQmPod+Yxfve/iOzPoTaMmnvS9njtky82WlPHDCLa2s8x7MDmWgecoKM9LzNi+bLLXBJuLWxJpREeE7WcCE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757276995; c=relaxed/simple;
	bh=bb0ybAEGLfpWlySJms6LExV7iEPgqorj06feI9Vayho=;
	h=To:Subject:From:Message-Id:Date; b=mKHUFZoPsuF1TfpvqaY5lyccsrJGANRWhcV2OdqxSHwp95fo73yK5d//VAbWrT2GNpQCX7Ep/fk0LuBtuJcdBsSPLdTDWqKD6wx60QV2pBbdbZc23NORpwmztGGl4SHXaUHdueQYp5CSXAi0fBEe4CRY/0D1X19vq0Tov/C3UPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRagT5i4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRagT5i4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1210C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757276993;
	bh=bb0ybAEGLfpWlySJms6LExV7iEPgqorj06feI9Vayho=;
	h=To:Subject:From:Date:From;
	b=cRagT5i42X4vhiYiwRAvkoVPuWAMt48iR6mJDx6cyYYi5lmpnT+AwrFbqxxLw2BDQ
	 H3yI1HzYG6Nzp5GVBodtPvFJuuTW3IUa63C003rfdLN8knRCF/Nc3hH6NOw41hM1wD
	 GGlsPaEtjXjWwGRQDa41cp7eb8khThuCRssIH/m8fGX7r4fAfHCC9cCrBE20bweOis
	 9rdjI3F+uQc6Y+4PEeQ7aRuy90wxXP1a0PUnJmzCdUcLd6g4vC17gsrHJpV/zZdkiP
	 XuR1kei6DLG/0txiXUbHhpQ82sOb2ynmD9FMGyyjVTvrIGGCXt7Fu0lP4lrm7khY9J
	 7QkeUxKYq6hfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB2CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727699358.28052.4472757866913074287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10444351f76089b30078a145416f9d4510eefe1dbc45862b1ccd9c5176936d1c
Date: Sun, 07 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757276993
