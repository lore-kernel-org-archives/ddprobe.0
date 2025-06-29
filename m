Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247C61C862C
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751188195; cv=none; b=DZO8ytjRbs4lM53dA9sANdjIijpcss9IJNIO/nkB83YqYtTiXIElTkqfhgxpRb7DhQ++qzz1HEPIEqvd99WOhG/ERsqi9C4XhhXjJTIGICof6/5KxNXGE+oyawOLbO2e4GZLudCYDIaaK9wRYYHUGB8IWeWfuzHaR8LjH1VLsi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751188195; c=relaxed/simple;
	bh=goUFuH+3if8EdEC6nQUCeFiheW1JJWYDeUad6AFYUJk=;
	h=To:Subject:From:Message-Id:Date; b=j1z2NqgmJXMC+u/p+QEq+c+PxvCixGeDBM0aKr0KXitwBgbQyPTLa9zwzMES4gjv2P73i02FStnINA7XepOL/ZNjrR5kDFIuKfT6M81mV03IosiOeC4c2alwvd67r7zVVL2OPbhIHi564Seul816ZWdr536Lhn7y5jgkogJGbww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzipUO04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzipUO04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD67C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751188193;
	bh=goUFuH+3if8EdEC6nQUCeFiheW1JJWYDeUad6AFYUJk=;
	h=To:Subject:From:Date:From;
	b=AzipUO04nRKTJzufroyxA2mfo794pEkG9xW1vzTOxXYXhlyv6icAiLhJzGfSOwfju
	 jhEEKRL2sezJRoUfPTSET1YOt9emJEVHOSsf3wSZ3RKbNapsEK/d8GpVeYaL4xBji9
	 9d892TfY4q23bLiIYJQ1n7tMh+N5G+vfpbX71TFEZ4i9Xt3IkN3ymcVhWSdBkns/G8
	 ZuR/11aPyIge2qAoxcnR4QmweaWPLIw6Vi+E/X+67SkV7A2ztPUJ68XE72sjeW+7KH
	 aLup9bFenPMHRJX82Cct+tKYtBkAS4YJhPB064m6L9g3hu+aL4yT1Byjyfwz/ZKNqe
	 q0SiVXILCKuPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEEDC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118819357.27085.16539098792829191138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2edd94dd2ed3fa545673d3cf9ad1f1c00cc1f3f1688c32b6415992690d329aa
Date: Sun, 29 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751188193
