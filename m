Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C27358203
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723059354; cv=none; b=Id45WNsorpeeQS3ogVpGjOiVSQuzY2vP69f845b3hUvN+vm2s/QpI2QuhgjiozkcfO2NToEHmUvYQwy3mI1JWFQMEhRO7x5sxrY8XrrQnTE1zIpiIdymtkKR4Dw3XJhoggBhY7a8MDPK6Jpbv8n0tjDvMUKVVYHhSuThFQksC2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723059354; c=relaxed/simple;
	bh=osJNVkO+e/2DPGGf+0zQljsFy7LzJ40ba75EkHMMRv0=;
	h=To:Subject:From:Message-Id:Date; b=ElssHftyrZXp9olApCWVAradOzINrNTWs/ELaShnhqRfOb/j7JkjDsUpKXVfgz/wLp2J8hSFoosegy4yD3gw84qOY5/6V+Lb/UBgreF37bvk7HiXCi6xHZJrFQ7zJmx5KOuIBA3rz9kd6sXgt2EUYfDH3u+ncYJ/37AdjjYvjK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzBmJM3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzBmJM3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A08C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723059353;
	bh=osJNVkO+e/2DPGGf+0zQljsFy7LzJ40ba75EkHMMRv0=;
	h=To:Subject:From:Date:From;
	b=RzBmJM3t7YbipTkfwRYWCvKxrnFnhWi8/xXRZDhcvDosazkZWpakvu4gpYW3UL7JM
	 1JGL3xhUkuxnzcHeg4iAaWJk5l9mrNf717jnrz6oQCN6F9kJxj2zZ8LNslHM4CyoWe
	 0GK4YH67bm8EdRjbI/RszUuNHP2LQgglVhrehpzDTgZoe6BwRqUieGV/t1TdxDvLI7
	 Ki8CWRnoZaOOOCsxxV0EBI/7ybYOndPb2+dWVukKNFVob/KbHvFKh0cJCsmEBpakI5
	 zw8bqFy1+kAUPQ7k2YYhAk2GUser/OoMPM5ivOMMcII4ocmb1TaleVaML421gtX6He
	 q0ubjkApU3++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBACC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305935367.21155.3423872911439164252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27960eb681754b5a674a4a69dcc5891a5086907698fed5bdbf6f068c9b9e2af
Date: Wed, 07 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723059353
