Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB2113B5B6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726824353; cv=none; b=OAEe3HmZN2dZLuHvOarQYm5BbvX2c2Vp2N4NszEAmk2I5SViJqL6IvdUpZuYNxY2yoIzWAyzJKuPF4sC8gZDzYtjZrEyTt4QmZqpy02ZEz6dFbZx4l78yoOC7jzy0BvrBDBrkj34TZs1aNtvcLjk5YcObxVQ9rAPMV7Go/gFRAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726824353; c=relaxed/simple;
	bh=xR9a4PFqBFj6S+PZEs+CJV06sMRZBFIfiP5jiDrJnSo=;
	h=To:Subject:From:Message-Id:Date; b=srT7vyNr5H3jHiSO41lA1KwCUtFUtYK4IBbcj/JwORMaaPu9iuUBg2PaeJPATBCLnRLngXF5/xST/f5hiENlq1dJ5EfV9yUMURRNj4Xu4mzOFbTA9edrI+NjFnzXQmaL8XretSJAttfg2bxTDpR3kykLz5iREu4DxIZp5DoJ+QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUdGcsKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUdGcsKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA3BC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726824353;
	bh=xR9a4PFqBFj6S+PZEs+CJV06sMRZBFIfiP5jiDrJnSo=;
	h=To:Subject:From:Date:From;
	b=BUdGcsKYILrMeigXtfaBFHBzt0XwEz8RUfNqNY45Eez8WuQqjNnopUiGARYwstMwQ
	 wxGxkjBfv6h4yytW3hVYvNqkArzq5M7JMmsisKX5xdIJQz7yRvGush2adNrkBATA9g
	 1LjDv6Rl7fwwsPDQhVxK0G/2zZ6qLZrc/BJpB8dOhc81vQR3hGybf3+Tov0awIxalX
	 zfaNmlHscJNJexGPODjMyASWUzuquGPdS6Z2Nh7X84A9cHujITdqzi9Evn2zyajnkX
	 +F2EVYu9MAEqEGBr8PACOlklChMw0k7C+CyU8rBGyjuW6VqPBepOmNghLLTCGRkF27
	 JL+KPMs9c9rFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982DBCF58F4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682435361.32286.10226471593294919462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4d9c278fd0a6e621b54528dfc5145076c21e2997934f868843dbe7bfa310f0
Date: Fri, 20 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726824353
