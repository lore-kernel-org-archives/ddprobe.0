Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471794AA56A
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789513234; cv=none; b=MLmjIya7z9KCzFBfqs5H6qJeRN/TVGJo1HpleHYR829cwuInAt6aW7ildme/5TRIYtIzGHpzQB4IGODNalG9fVqd7ADVl32O+OdmxTgv0r+xA8BzZ+xMzpytXk/p4vdFzswikJvEzCdau5qUZZUv3DWn437Be6xSiQKGEUawBmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789513234; c=relaxed/simple;
	bh=bcGmp2eIGUort1jkgExVMFYPp+EUR84gXLRE7NtY9xY=;
	h=To:Subject:From:Message-Id:Date; b=p5qVFMh4NC9O7+QedHuNBClYANBKni+jzF10jx84VriMPE/3XRiWOVz6dWb/cOQ+oEZ0TxmLl03xWiedxAdBYgH3MOxgrJdv88yRkqub/kzNFgtlv8Gx9uhevsdVr2CXioR9AaKUBfXoQtl6gfH9DiTblVHGv0MBykXB3MoXcws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzTfbVIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzTfbVIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F32C2BCFF
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789513233;
	bh=bcGmp2eIGUort1jkgExVMFYPp+EUR84gXLRE7NtY9xY=;
	h=To:Subject:From:Date:From;
	b=QzTfbVIP6ssV/L9bMlMxOMJ6mxA0KxYUKwswduaWrxotsYvWIKOCFuqBhxIbLUgcT
	 wmxz776ojIsYyxYL/ajnguL0eFlIZ/nLQ6Rg6SYdBCg+v74mCtBJCEVJExVnjSFpWQ
	 lpNQqEm6eYxPE/qLQThTU5Xkmp3gyFasVnGWorLfhCdIWiE/jt+JY/b4dTENiPFtla
	 GXVr1x73V5hbgF1rIpXjeJ/sUuwa/ENFnF9EdFYA+aiTJXwaDSt5jp4k24pyxcHUYo
	 8Dc5jz39HotZ6TCXS+5JkYC8sZpStD8gp+7TjzjnsrRI05Cf2y8dvIlyjDrZtFf5QR
	 0riK/2T8YcHuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B32C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951323368.15033.1625692242374650138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655b249dac2f140430135360ca002ee17d3154a0ac9c4d2ca5d67ab2e33052a3
Date: Tue, 15 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789513233
