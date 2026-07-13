Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA953B9935
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783931914; cv=none; b=Dnh36a/socW7XK7K0vXaeTIoewJvR3ZWIIpa9zDum69BT2O24rnteO4xm/Xi6M2tUcPaxDE5ShdMdPk0ID079nwymywFeFbqnR4wP7q721eHf2SuUCjOQ5DORlZKIxCHOVDda6bT1ABZEDtf649cHZ5T2zCtg9ljIxeU4KmsgRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783931914; c=relaxed/simple;
	bh=fGBZ4erBYXB4ZJ/7cXN+FvadBF7Qc0SjPfdWhGvOu/A=;
	h=To:Subject:From:Message-Id:Date; b=qRJ2ufioHF3KXVExs+PEZ0IGTSaxtS59/ZAKViFthieR5H3YbgcvbodSKz8bWevBcypU3nH6K4sBV7RBgrNFUnM3IbUhG9kh+Q5OSX5cISuE7vfq9WUfMjnbYbFMQwrZziXhfkv/jG3AAz0m1NwlEJ35mhOb5/bmT/u9n+OzbSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9vehFUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9vehFUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEB5C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783931913;
	bh=fGBZ4erBYXB4ZJ/7cXN+FvadBF7Qc0SjPfdWhGvOu/A=;
	h=To:Subject:From:Date:From;
	b=B9vehFUElBgjH99/q1bgRgp2YhMAyaz0Z27296DHs5TnFt999DjTxAVJh/Bi1JC/4
	 V33DxuZImfmibhgAXc3Bzl3q6z8oIkcoy04OsMrckR6vhZ3rMrQAhuQ5kALlivdc4a
	 37paUBJmR0PRhMz+nfY6HvkZoVv9rXPzgRFaZi7gYP02bk/PpzwJg24/mzmD8YRIOX
	 CJi5W897HNXH6dS3fXigg1Im44lQOnVrQkafrTYahXkXDW2zS6uas5okmCXe3EOXdM
	 6Fbp3Do3osNnyV4H5p+J6szKhAB6U2omqq0Tvke7+NNwV0WfRU/Y2aMxw/IR3AoDfs
	 7QkQMvAubcTSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BFC44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393191369.17887.11633444381377171565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fb11015cc9b5d487740e12db2009fcab742543fc2b5dcd38b783ce82deed48
Date: Mon, 13 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783931913
