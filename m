Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9F523ABAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772310294; cv=none; b=nfX4OyD16vPS68BhAZD7TVHDzqpmEK7rXWWu1ZhhPaPy+1LVho+bbZQqM1Su57yo5mRIlD84ranBY/lUUOPMK34Vf7IFnzD2K/JeA5tqC1yOF2EPkGcaGaz2kU3gnQCmUhWTnfska4Yg72YOstUo1sjqdDtGbmHWsi3+DA9xzvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772310294; c=relaxed/simple;
	bh=tBvFsgmiscDqb9UkLvGV2w0ANeVdDnLGgoAqllZDNYI=;
	h=To:Subject:From:Message-Id:Date; b=GefhJJ2vYrf89s6tPyOK+zvGKME1a0G8bcE4FN4U1vAi1uu2piYK/J1Zx/ztcRxqf8fGjjfJRx/ZyO7Mol68qoCld5n0pDDK21Y80bWzxtnP/3xWay9k+IjxWc22VIQkjwY/aHVVCSHjFqNWKxrXqzMHYcmYqtTmPPJ7HZKHasU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op0tzDgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op0tzDgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBE5C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772310293;
	bh=tBvFsgmiscDqb9UkLvGV2w0ANeVdDnLGgoAqllZDNYI=;
	h=To:Subject:From:Date:From;
	b=Op0tzDgOl1SzJ09cv3zXqXHHRSlZ8Cr3H3+Vx67cObpG7gaYsfiaB4Y5N9s6Yf508
	 jhBXZaffMIfM9IZgAsyoZdoOscqm2I1Q7oQE4P7Dp2xaLIOm0M4rUuW2IqbC6UhS1P
	 V2bAmP8Ediv9DDsooKR9zdU7E/1X7PVe8i1NmhAtnBa9/ZOQcyZJbiO1jVuok1szkY
	 EcA4xFKu/C759wvN0sIA7c4GGI88QUiP+ERpo9nWi2d0qxj6+XZGGYiG7phJltpmUs
	 aVzSg0Zt1xzP6kvfPGGZnoxnrglbhwAbfTTfEd4v0F8GYm+uyB2wQEfu/ztBuwd73y
	 85VkGDlSeiFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CB43FEE4EE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231029356.19829.3369895811645802576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae196c15b37b541511ea791e9d6284a87afcde28daa65d9c6cc3cdb9860864f4
Date: Sat, 28 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772310293
