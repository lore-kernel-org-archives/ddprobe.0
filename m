Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD344C80
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738890954; cv=none; b=IsnoDVCSZJNYrilv732Cx7WAZNjby3NuEqlujZRu+Rv0mBf/8OYO9QaKL6cNx0ECxsht1g2dvuxQKMo8Je140CgTvVymyS/RHI9Heu6jXO7596mVBUZacXgTI/LHk2fm62Lkanyh7uHxkiIFXuWCkDDavQmg6IrM44Y6IIIvySw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738890954; c=relaxed/simple;
	bh=x7dbTh6vJV7EhTaSkO7ytaMoE1AsTGqtksc2GGOYl1Y=;
	h=To:Subject:From:Message-Id:Date; b=In6UsGSo4ba9s4NnH/Kv5t6RCh8Q25jJp1IopyZGRS7x9ONIVv17OminZ7bslJOfKKwLsXIaUNOXmWuI64hUQZ7btdopbtD/KUkq4NlfarLvapboVYPQdbNlho1xZmtGgtC8SkrKs1Sj75yZGTMAgb7ZD1zHaL7+htIffoHEdcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfTCIc5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfTCIc5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA39C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738890953;
	bh=x7dbTh6vJV7EhTaSkO7ytaMoE1AsTGqtksc2GGOYl1Y=;
	h=To:Subject:From:Date:From;
	b=ZfTCIc5QK3y3ulT3BWAKm3YwD/bKUWC2x3npSuvNUHEJ8Z1hYf7K0Gmw1y17riNmZ
	 kaIOCTcUz+8WIdfZXjbMZ7TyX0fECMMqxhf1h9xDn7n+e2ESIphv/D7+NEKIajf84P
	 UHi2Nh+sYLU6Z/9qUAxj1/uNifIcWNW17xYJIWVv2FYwQGgPTBlsFQP9RtsBy/AS+X
	 uQ0KYMhjKG0F4B8TM9jHf4zzU9OSmpUY+n77pmBzMrl7fulk152dwZjZIjt2u3ShS4
	 sKXm8kZgqcpd/PZp7M82vMlHBwtkMHa9tZaPwMbZ/90fp/TqRXOYWObn+MJqOQA5Ty
	 BqovSXGVIYogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5601C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173889095366.24821.15874095849268594008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49c4e4b49eec1830b1fe9844b90808c0b098ed25e7f1b8e450778443e9619c7
Date: Fri, 07 Feb 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738890953
