Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC3F5F876
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719819263; cv=none; b=XhlYeSHVlP4vfUoUJJldU/bJ2iU46TgY3FKnzJ5dAJ6Xr+h3Lc6HzivdMWfNGtwMeB8AecYa3qUMigV+HmbhPNq1KNNu2Y4wMIe4e1eQwVputn1qXt1jZwvlxFMTsae/MWMRsHbEPIXEgJnzKp/c5q3vk4JpG7tsv++A37V+4eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719819263; c=relaxed/simple;
	bh=Ms8ZDXKdjBHzgYV+f0xhyhZYiPf86gaXXQnLZeYQZsk=;
	h=To:Subject:From:Message-Id:Date; b=SZBPiId6kAzQdwwlPgzsvbgtpe1RLo8shoNqr0RkrJXzZsTHCkVCaL+8kRUTzZmsay5PqXXtIPTXPvUxQD9mbfoVGmIrQdzyzjdlwla/YUdou4FUmIPXyWoYpTcm1PucQFeIBrXRtOYDgPm/SJjN82OfNZQduBWnmWy9ltysoHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD5eeHRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD5eeHRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13BCC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719819262;
	bh=Ms8ZDXKdjBHzgYV+f0xhyhZYiPf86gaXXQnLZeYQZsk=;
	h=To:Subject:From:Date:From;
	b=GD5eeHRzvhgt0yUNsxzI2AJnqO3Wk6VAuyWTNP1XHfSZs+jWqBYDskUqAMDMqfe4I
	 vq/+qZD4EKm4lMcV4Erhl/RgHFQcu4YPCP+lMoXb/Y6IthY9oPRnqyJlqxBO19RkZZ
	 gRZAIWH+GCVZMWZV4suKRiK5MMtuSz/cvPCjhOm+NJkysZ4WdUIGgDb5Xqtvij9NdG
	 dAMWIVhTyxKiHKRBE3YZbYz6JNl5yz4ZSljqg52USALLRWldWxSYTz2NfzYTTHui3O
	 OH3Fj3JaIA8s6Eh2o66h+EAvlEzyox1KrIuUlGEjHVlnI/ahRXWF11wRBw+3iLp6cL
	 fhf+riEibjHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE56FC3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981926277.20625.7128194241376116964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743c3cb019a672fe95a9ed99a9ad013df2c1a46fc3aae1487918e719672703bf
Date: Mon, 01 Jul 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719819262
