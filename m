Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3045778F4A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751186994; cv=none; b=CjqIX0kZu4PVH+2XmaE71f8uY9Ax/EKEcHJ7lwtJ5NM3c9YqGWzaynEl7cW3MZstpjeEqRoYi1DHV1A7NIs8Xj83jIG2KcotYyfDFHhd+ReSiYOx9h4w7tbkCdB0A1te8PqOt6twQURrGaqePJQDzWHsYeFXqIZB2W+PNg6XNIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751186994; c=relaxed/simple;
	bh=AQSQPFSh8TbKuIi1IBRwLu5kRYk5NyjQo8Z4E0Pi8IY=;
	h=To:Subject:From:Message-Id:Date; b=YvEDUzybR2xY4gUFC7oww329OGwijZZ/Oo24ZFVU1JGpu9uGwcMfXMvWOiGIV01ic8NmXd+DE5hbuLOEc/TE02+xHM5qSKHlzmQJzIU0McmWJIGQVloCRhQK3elSoXA9n2CwBBNP38zexHmr6v7uDriayfHjDtfSI2sHL80D4Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SROPUGRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SROPUGRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751186993;
	bh=AQSQPFSh8TbKuIi1IBRwLu5kRYk5NyjQo8Z4E0Pi8IY=;
	h=To:Subject:From:Date:From;
	b=SROPUGRwU3kXauvi2zA+bWmyw8H9LS+ExL3O9zD5HeaQC9sQkALGx7FBK44Y5tVDU
	 BlxcywBYxc2/y/htDeDqlAsuRGYW6kLDAwGEOLH3CZN8tdI8ccDrtB0ogL2bSZt8yO
	 9FCgnHzACJcKo7EnegALXtY8pqFnaGQXKtZSeu5kuqPS0NKM5zrxJThFug9BV8FrM9
	 n7mEav/uh8C31HOARGZb1FcSoIBm0463qsZ2Ed0RwPQ95e6IXwL3VHMiijTCVgQqkG
	 GdA1eMTd4IGxYsif4hWkGnMcR7FUJHGrwWf399ylhNsOL0ycBWEb8GGlQ9Mnt5tqSl
	 2TFK/ncVpqVdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917ACC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118699357.31601.17484576385863648728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd31f403707dc5eec578775b9b7ef4e396da8d34fa7cd92652083eca62e1fce4
Date: Sun, 29 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751186993
