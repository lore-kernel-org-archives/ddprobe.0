Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D9D3B18C
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710419296; cv=none; b=DEBERejl1oRbf+uPdOpO2GcJsoem70sNeQrjmS1DaVyEIPs6p3ZnMJdEgk0zBelyJzlu9MYTDjZF8PrvwQ7M0ZRHvyFsW8VK5aGhFid4XJC8vYMHLuDd/RC6363+ZGimo6cCS6uxMK0tnh2/dQUxgGQWQQyKeBphTZKBPQjSzvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710419296; c=relaxed/simple;
	bh=F7XE5/P+lzYxZ+bln/za5cuqXMiCu8MXzXOx7G5kTPo=;
	h=To:Subject:From:Message-Id:Date; b=MYGN+BJ+zvsmGs0DdvfrNFhu8Me326z5Xdircv3V4Vv416fkumUDAYpO7r8fjKvlMh05c5NTZ1WBeraHvBIQJrXHSt1c8gaTv/Ee3VnsKIfdgJAcQvTbgiD58XPx7u+v9a55aXItSG1MCTzG1iGdNoruIZK6pCWlAJJKIZaV4c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4iQEj1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4iQEj1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704A0C433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710419296;
	bh=F7XE5/P+lzYxZ+bln/za5cuqXMiCu8MXzXOx7G5kTPo=;
	h=To:Subject:From:Date:From;
	b=Z4iQEj1Whk0GhzhOo2KYMSz0PFqns6sO3eonJeLngpFVXPVk4UBZp4lNGhTYtiILf
	 ssr4H9LLbXoTm7NGh6jm37PCqjmMPXHLmNqAlZlof2YRqXZsXOVNIGf1DgiKS32KHc
	 AQWkPKfav7zfGboNZBSdZs5IX1d+eGwaZCcABndlcYajLcXIOnZFrEKtosUOBoxhPc
	 G73OUrYkFcuqn991kqZ7+0/+gHXcOdGaXv3TAJmQtW6E/tqd095pNI0LmtRuL0LMHh
	 gRW1m7ANSZb8JTcOJ6pj/lPA/39BAU7aOoeEGDbgBfJAHC9rVWZ2EzlZsgSSA2bUHb
	 tbPgUwYRHCduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FDBC54E68
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171041929637.12411.9909124771358661440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4988f55e66fb32c57057ceff918f062a1d7c6e5a50561a89188e7de2c2be7e
Date: Thu, 14 Mar 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710419296
