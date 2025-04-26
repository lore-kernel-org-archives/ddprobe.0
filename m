Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CF4227B87
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745668794; cv=none; b=F70odZiPL3X+7l5XfcE54R451rX1q8cRWzbGn9HfDcSIDDas/zhq/n3RiOBCnVYxoFR/qzDPIUKI2DE2uOOMV9BGQ2yOXQraJvQH9jfLl30TkY40t1/ygqcMZ/3JJMRE3KWQ5p4UBSWlXZxopeSZOSelZSA+EDZy8XdHGrFIBUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745668794; c=relaxed/simple;
	bh=KzGP5dKQYqvX2qAnGLuED6kRVIMZ2tXOqmoykzO0X1c=;
	h=To:Subject:From:Message-Id:Date; b=PRq9ZKPsJyZaF87LDef/YY7BMvktPYrwLR9714GeHt1AHsLxksFAI2rV1S75eqkiBnm11StzcST2ArocxulU9/GQGK2is1Hvemgsg41JB5D0/RSxKuyRey4VPSDkJLfdE2l7/Fo7aFI8EjF23SRuxOYtVAV9OBSZqZdq23d56pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oESJTBJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oESJTBJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF01C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745668793;
	bh=KzGP5dKQYqvX2qAnGLuED6kRVIMZ2tXOqmoykzO0X1c=;
	h=To:Subject:From:Date:From;
	b=oESJTBJibQw9t/F3MtTaPvJDZexo8Gd467K/bUq92fDxGIfRHf6Hri/OnlKHKguRU
	 1GJOU2F0WMU+Q6MwSJiKFJ+ZHZUZwcDOyAyZgAWT9xcLZXSe5CsyCvd2E+K2luFzcX
	 ikouO+LY41UWJ1fJUmSpAVkw6h8LK4GwzVXHr5rutlbmZyzwQKaywm6MNKCn6zB/ex
	 BtbjP10OEuFy4Q+RqydRrr0PpIeGdE2HKQ8T6hKgd7wCZvEvrKMQ9/n6CRnHQsMIMi
	 J3iMsLGVJSdlg/mIT7YbGLtt6KtZ7HNSsvWdp+ooUBTktIpgrqv2D/WGW9VGv9CIml
	 CV0+552XetJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E081C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566879357.18605.14598332587092372404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602d2be0b603eba8fd32070570cf2793039dfef414bc8adcc70de00bc72c9c2d
Date: Sat, 26 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745668793
