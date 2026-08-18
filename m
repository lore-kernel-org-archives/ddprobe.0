Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3845B3C10B6
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787044234; cv=none; b=F0hDvH1UnPvKD0icnpZ58HU1OB5PsfXMZ6NfcxvsSFHCs0et37k3bt6qkGmCjCkzFDIDq4eONzMrxrqIuIytg5DQojrbgRmi7Ykkdwy2c70qxUVhKoke6OONY93M8nlrVSf9G05665s3vJiWdBhQwf9qxE1tdu5oGVfUbJ0Rz9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787044234; c=relaxed/simple;
	bh=rvYOnEmjV4bINIsDvqRSM4n0tqXOte8Crgo1+NAQrCM=;
	h=To:Subject:From:Message-Id:Date; b=uguvd7ThJSEoKLxKiHFZ4jzTqSZPbGRR5HNmnR/B0/tiAynmnU1lgVC3VlDgEyhri0N8mKtgvqppp4UoXzQuMtLljmCd+wwHn0dvH2DwJZv3bLh3INe4ARRTiPyOBiLJ0RS2Yk0SA6QyMLRMnQyyGJZ7viXihXFFMsQfTcYge+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVqeI8Zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVqeI8Zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D012EC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787044233;
	bh=rvYOnEmjV4bINIsDvqRSM4n0tqXOte8Crgo1+NAQrCM=;
	h=To:Subject:From:Date:From;
	b=mVqeI8ZcgAJZkcLwLn+RzCdGEGGG6n7Tw+eHxKXViL5t35Omb5kWSQDRSHBxPRecI
	 bd3FLeY5y7OqmhnMqzaWNNRHJOxCNs/cTyCJDQ69loKLgopNIRv6F7vCz0PSilptfZ
	 xMqZbh/mFKJ02S4Apc2F2ipDe70HEuf0Ou/UXZUyurLOuQyQaih5Cf6+T3VJ4xotDB
	 axGDmHPIQcfEVNwX9lCOgpG+UcviHuqqJteBZTETkksJbuGrFYdicKkmmtNR+1Sbn4
	 1FgzHNnVWGgWXn9AaRRXz4fRBGIuKZ0MowzBKzgShIHO9AHrfgA8LXA55Kc3YZgb6Q
	 vwjE5//0HU7lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFDCC5DF80
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704423369.27261.16367954898292942305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f20a1b408a4bc3faa952c72fb3e8f694f51c51a252b04883e3881fc7245c37e
Date: Tue, 18 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787044233
