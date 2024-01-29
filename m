Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A25BF9DB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706493497; cv=none; b=TtsPnVIc/ZPoU94HOzPb+tgkymuEsoMY6HwsUAkvX8O5xB/JbaWcXPQA69qMfLnKAMT578gpkUFFGpJFGqQB7rj/EDDcWUDrsZwda7KIsGBeVrMQquNrl5CmS75UQVrfq52LJyce+i9h+ycxtq65zal6RaA4U+N2gc6gAVjzzZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706493497; c=relaxed/simple;
	bh=eO5I1Owh8iZPc3O2liap5GFk/TKTwlhurggXPFzB6ew=;
	h=To:Subject:From:Message-Id:Date; b=hixaKVvBeYOqfCutFcrQQi2Fp4eZLKHwvXgF+9NUULXQuKX2eHB8KhlhT1DHqKGswR2DAULQxn/o8niIqk4/7cGmG8gnJYt5bwsl5ZpvRHYWV7zVwqk2kttoIxitms+biqE+p+3IRPDxJRXznFnxCsBzBolrPwnGascnuxARWDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2F8bXgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2F8bXgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D4EBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706493496;
	bh=eO5I1Owh8iZPc3O2liap5GFk/TKTwlhurggXPFzB6ew=;
	h=To:Subject:From:Date:From;
	b=T2F8bXgS7InG1LspUJDaMqUCvQqQvmTOlBPGuk2/nbdFypqtNOV24AMMT6KhgFmYG
	 0xKajhWEg2g9g+9WWjhBKaeGcOkf61cj856d0PiQQwixKIYI4bKArEw0U5GSb7Yxrj
	 xw52z8eB02+tUVKOGbGiLtxW3VUXIzU/+vQlD6z2jPz/sX9C75+eYtNxmHRlUV8S7c
	 JEO9PtmVifQyVsPEdlTrcbt7C62E+D7gzimUlWf/T8QCTIp9A4nVwi35PuECfWDuGW
	 o/IqHci4pkkj6LbJVUSOA6vH6vZ/Php2wUQBYPqyjK8G30+pTckFHw72qbRovkbWVV
	 EUu4Yghh6DkMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA3CC47258
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170649349637.20377.15888662227895489170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9fdf740b4ccddbe0e745d3bdebd324825e7c144c25782a415f693e600a9213
Date: Mon, 29 Jan 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706493496
