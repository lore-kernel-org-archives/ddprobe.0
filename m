Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A098633E
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738503354; cv=none; b=bAE+0LkCCvHmuPba2mhhJbv/Ywh7s2YDRE2gQwng7I34DyOF7kditWNF/2TJqp/9tj8TCX3xw0m4KOdVajWchGY+DBESelWsWEJ+JEnrXRNcd4ZWYo/cXLaKGu8KxwFyYC3G5VdkOtMvSFU7P/EWGr7Oxw8SmTwymp5kFvvyzfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738503354; c=relaxed/simple;
	bh=HqV40CEZ/LjO22J0RxswZOH/spYwxY4ufR/8wivpjh4=;
	h=To:Subject:From:Message-Id:Date; b=S6hggGFUyycvaNyl01ivAxgKNfWAOqrwkVgR3jTrp+67/XrNSy93GYbkmQIXktgyjGaHFGVaDLZNgY6Xs5ORiH1RpGro0cNmDqsKm/lH6Jg0M4bLhIC/ZurElsASsq+ch5W7KSh14cBdEdszE4XPPFbOZ66radENvUQRsiMJels=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv4e4yjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv4e4yjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE2CC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738503353;
	bh=HqV40CEZ/LjO22J0RxswZOH/spYwxY4ufR/8wivpjh4=;
	h=To:Subject:From:Date:From;
	b=Pv4e4yjT9Ca110GH84vswQyXTtd4aX3vgLR5SxzjFwxZXjnDo3zPEwcZhf4AwKDvi
	 jhpcBsyjEEisIUB0JkJmUEePB/Y0l3CUvTrU4I3fdttZlhiyJ+lj3bNarUjTyRam52
	 i2QPm9g3hMdw7KZqKruFwvZ5ddimFUyqKtA1s21QyedpapzCuQCPYv1YjJeWjB9xwt
	 nmKJFN4P0Vl4UKAWPncvcsWACAHc/gdUBVE/bEDUUtr9ECSMyonI8uz/ANBnbd5TeE
	 td4Dh80H8WuZdDs4KBsPof8ow+ftOtoCIBTAVunEXGXHxLb5dvI6u9OgUCyvbZ/Ag0
	 TJd2M2S0zP7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CF6C02193
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850335364.29803.6742793139984631657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409360eab53b6ee059d9c0c8caf0860bb13524d57af028793108029063822c7d
Date: Sun, 02 Feb 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738503353
