Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F08435967
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733811354; cv=none; b=XbVTOZnOF/lz0uRPhB6wRFna7P/SM6K9nvPNfOOmenjscb1AKFvGLj0wYi+PrQVbNXlhhAZYizcH4Nh9QnbL2Vf79+6N3NQzWoMZVC74iSq2C6ClImC+PVgH+dOjRJ7FPhKB38ltjTgzZu2tHi6sD40go1afBJ2vGigYCSMdHyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733811354; c=relaxed/simple;
	bh=DzvE6zgvOlsy2qmWeq7n10v9HKYM7iLOGhV5k3cv6RQ=;
	h=To:Subject:From:Message-Id:Date; b=NRzn8960b31wBf79qcn+NXKZGAEuSaQzfvzeVbIziNFi8rxjVIDlEyKtNXI9mfzeFypxaKT+lO94LP6JFcGN9BGNuXtq/XD8EFjUVhkSF+mJz1I02T+IJ7tSEd99cFoJW1/SsSVswP/miZs2Cwf2eR9AzvMjqzyArTKK6EiFzvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POLgsy/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POLgsy/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFAC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733811353;
	bh=DzvE6zgvOlsy2qmWeq7n10v9HKYM7iLOGhV5k3cv6RQ=;
	h=To:Subject:From:Date:From;
	b=POLgsy/iQwWJzdrUV4+J9a5QgSMzgSB1W8lO6CbIVsW6NnFuBjA110adUw8+xPRJS
	 qQseBkKjpBWvSwuj4Nb4wkkjTJiKcGNs+tFu/VeOwNubMk0UZ+Gne71Br0G8OJsWcu
	 0vd36UQ+UdwwgMKxRl1xtcdtZ1g+64odKIzo4BahrYzkaBHJ0cysUYJPG8a6oOYX0Y
	 vNrDsHxvleyMYY7BzxJFFGUr1lz9rVM6fQZ7q7ksfkGQQ22Y75BFC5jV6fyl9C4Ts1
	 85JhPZoS5BGA8rK0tRNGle3r7InEQ1TS9Udyz7EEOkHxDcq7IZuFRwR6Laztj5iuld
	 YUi8E5bR+2gnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97955E77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173381135361.7358.10760725793276963910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce85f44ec805ea8fa717fc6a883a77459dd4696a69dc26a12bd7255985179bbf
Date: Tue, 10 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733811353
