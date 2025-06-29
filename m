Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE9722E40F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751212194; cv=none; b=WgHimQSkW8G5/Mz+z/elJbgJ1POwsd0R9cyCYBvBiuSXZUJ/q3rMv0b5cwnr3gsT6GRCWhvynmM60iaw2Ewib12PoC1CdpyqlsNp+v1eEnTYhb9kEI/cfGB3VNwqje30wyfgfb5Q0fXPqPxC1hyYXmhsFZN6lVhTd1wIktZd2dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751212194; c=relaxed/simple;
	bh=7bmSW4gEIFY/XWTyrMOiAvDxj5NHad/7TQZRPJCqN3A=;
	h=To:Subject:From:Message-Id:Date; b=OdhtazG+wiQFU7mVkG9f9TjH+vAJ9LE8zrpAmJfV58zmsFTilYquRKzzsCrvjACojRZ2885z15fZbfp6xMUAqKSVsQkQ4gaKPttlax/OOuAs0uH++rptKiEg4IoCIEcjicNli/MtwgydpMnY9JUNbJ6KlstUiRPgcevsGnb+E5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMjFwKNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMjFwKNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E34C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751212193;
	bh=7bmSW4gEIFY/XWTyrMOiAvDxj5NHad/7TQZRPJCqN3A=;
	h=To:Subject:From:Date:From;
	b=hMjFwKNCIuSmiSunKYzYVFILCUXMWC99E70z/yl5EE4JYQua1cBfFX+3YjjkrSoG+
	 rmlnNsigfsMIBtFrS4Wcr8Pf6YBwqLk3Pyp4AA0t0Xw1meDEih+nvDyXzgd1tp6xhk
	 tf1CAgWR6VAgLixoYZlAbFBXrCYFj3aTJEsfIYV5VGj3xXGymMzUZeM9glY/VGUjsZ
	 TK4geNVn0lUK/+jMHCDssTWFpDfZjLBgwGh3fiGqi31hWGYTTgLuNettUcncYrFk9e
	 0SbKr5jX5/JPTAC5ZaodOu6KBU75wuwIZ6+Mrs9NEbh1rNa5qCZ+Ty0wr48qs7/FrV
	 y14u6rOgS5Jtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F6C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121219357.6120.307623578472449686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe787eabbc648c653aa5c9e9149425c293a68283a6ca6150da104c68e3f724e
Date: Sun, 29 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751212193
