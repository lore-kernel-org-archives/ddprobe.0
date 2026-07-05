Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4F738D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783216114; cv=none; b=M8Jyg18How3QFDCGFoOFiHOIR/da3g2X8tdaf+zTZXL5i4f5J6Lc7gzHg5HjyQXPaMqPeaYsy/8CGti8+e5NE5bWGSLwYWRjtAuVAEgeI6n+sFgxpkOuDaKJlUVDX43tN6MYKaufbuAxIoeiyXiV713Ch63BBX9SGNd1z6hJ8tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783216114; c=relaxed/simple;
	bh=tgD8P0nWVZrvK1eBmujQMd9ABSl+KMS2+FI8pu70z+M=;
	h=To:Subject:From:Message-Id:Date; b=fYyKUkKRu55QO48eAktSwIMzAxABnqcx5rouDBpPBt+SBrMpjFsiyBx4wOIMBt/UWgYKhKWGvRtz41FySZ6dsZ+3DHgqzlCW2kehOJtSmn2lCWKSUojsiK1TPNqDk3pm0IU/Qy+ef1WZb2DxrqPndFW5zyWKLgzg3K4jHZ7HOJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8LjopEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8LjopEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B53C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783216113;
	bh=tgD8P0nWVZrvK1eBmujQMd9ABSl+KMS2+FI8pu70z+M=;
	h=To:Subject:From:Date:From;
	b=a8LjopEF7AaX7fvYkcuSZfT+gW1JPjtNaMnvxBZ//iLL6SyZEm8pPofvQA+Rd44BT
	 kaAnGP12qR7Ar4XcQPDpAJmd09lZQCmlNmZTeBU9nmP1MSE8wqrfT5JfcVt+JysDDE
	 oYI8sDnN8AAuT+6f0HclNqIaKYAq1F6mevusI6/kapeM7LOH0Bjos9gsOEibUtptox
	 ZCSgUZCjuSANIvZyKUDPuRKaVr/YOiqOjlYAHjL0sTt2fsIQw6IICJVEeDBjNyOcA6
	 ciJW4wuG/iBBuAlQCn+jN4U2RBZVuD/0x4UiZ/O5qZIgz8qW0P+M7BagE+D898pm83
	 UtqtwZxxUX1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB6C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321611368.24760.15545963009372778493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d2bb415b0ccdd8dd8dd4f5b5c4a423cde63a83818db7bdca152323aed1d7e4
Date: Sun, 05 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783216113
