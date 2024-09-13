Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C8A14B061
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726269954; cv=none; b=TZEvqxJg7shiu9kM1/15zJHh/XIygoHs5yVeyiuNNetVpDZsZgCyEgUnLGZhU0clA3DlHMg8C4lqN6rPaHaCEjdjvtDvuGfBRtLQTLDyV4rxKAWkoiTAJHLFfcitQIrrtDbd0OLo8ZPHBIQDirjiBS5BdATYvRNpyNp647p6Z8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726269954; c=relaxed/simple;
	bh=vYfqwJueQu4vQ/1yrb9OoRDJa8kjXS4c0+tgr3O/KlM=;
	h=To:Subject:From:Message-Id:Date; b=OOx67z5USUn5llgMRSXl/J/9cu8DV/8pBRaopKTJEyqFFsKfpXBtHdd3h58N/IyipkHLxO/bf0Bh32X4JHw9TcmL/AvWtoHh2iAA5YUK+Pz028SgAs9BLb5HY0E355uVubLdbeJEUJhOEvwwtItWC2f3YvI9M2nv5b9RUracvEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNanEB+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNanEB+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D17C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726269953;
	bh=vYfqwJueQu4vQ/1yrb9OoRDJa8kjXS4c0+tgr3O/KlM=;
	h=To:Subject:From:Date:From;
	b=DNanEB+znQu7mcakRP1nQ8zWij7dpY/1Ki25vTHQEc2/Rx5RhGTt5ZpTUz2J/naVf
	 0WTaXutEO2r4HsfFoIuco1QB3l2J7v3uWXuzvz2uS/BtQkv5xynCX5iZxT4xU42Ybu
	 OsKwON8juK+lRVVYEXwsG4JJiQrfE8/9z1KKXV32GlwImJSgtAsHnyGz0Bb9r6p0ET
	 rMZMhcJL7ZmOj6W4gfdxXH0wXgaEnkqdPHfxZDK24heQOauChQQy60BHWhgmHvcvG1
	 oROOLRrwFEXC4Q51SrJpVY3Si25g99BEhI66AJ4nQ2i4O7P6ADMQOeQccW9Y9EhnsA
	 rPb5cBucuyCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC85FC6184
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626995359.14811.76236935045958432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7180721899e8b14678af9c901d9cb24ee99852a3945f68aefab584cc0bd4746e
Date: Fri, 13 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726269953
