Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EF92D46A1
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771223694; cv=none; b=KOoQCKloL6CHduZllJB8vgC22IKsUN7YYc7RkzoALs04/WVkk/f1RESqBgspeKKn7iwIl38y02nYVGlda0RzmSuVQ/AnDV3LrdfL2u9RiT2MxZ0Etp8MHEHakhcLGfGNCilJtDcvNHvXPRw998+ZEShozdKK6w2Qw/qTK21Foms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771223694; c=relaxed/simple;
	bh=7vzvZ7ZJSZnffBPRUBKb+4LId46ozfOrCwYWZGTF6cc=;
	h=To:Subject:From:Message-Id:Date; b=bBxVdrb9FW881c9e7/wOMs04F2+AMTbel5H35XVdbui/3ffaJ+2UOmt3TYDGp5h++oNqqLnXSnkNR5sqnF4kstbbP+kPsfv+8/n3MDx++3+2AaMdP3MWTVAZYTJ+8a2/IsZUUtz+UrTaozJ22tit6JAg8yktQ5ouGFXFkFLP7qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VB7kDzYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB7kDzYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF6AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771223693;
	bh=7vzvZ7ZJSZnffBPRUBKb+4LId46ozfOrCwYWZGTF6cc=;
	h=To:Subject:From:Date:From;
	b=VB7kDzYTEdssD1ckxYROEI/XWp6oW1A8W8EiloRij5FvixnD0MertBLaIArmDckB1
	 KH1mb1ryuCCdmPuAONYtw1DYBvqA5CF2MIHtGHsItcc/YENwI/X7yl8q9UxUtsPpVN
	 RWnPP5HXk721RKQkr64w+c9RM2I21XuNoGkZ63B7kBQv6/4cCvB5M5gbnbHxXdHUDo
	 kK7mxdMn+fjsdCY6MG/evS35tPBC4rWxYk9DTC5I10QneiXPAlVhY5sg+tZwq0KI5H
	 K1JocoXpkZ1SWIrhePqXSWRazsAVVSBVOTNFZIDYPFA5xQrQz9VphOQMaSh3rduvlf
	 Ke0z9smkjhoaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961BDE63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122369360.14916.4972396925076242824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8c6050fe8141f08807b48684416f59326499f4f03b41595af1be9328a40659
Date: Mon, 16 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771223693
