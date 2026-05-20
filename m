Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4611F5437
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779283234; cv=none; b=b0mW2ayg6VozNmyTXnDYdv8uX5tkCMSXVls2A5MxaIHuxdAkinLU/FLi4MQTxmP7gLojbrwKusQHP/EXZV5OrUBLhQde0OlHEyhG8bSNA1UIIT3i63fmcvngPLs+3AExlN0KgxHh3ZJwzs9/KoSmIPbowI6ujLUWOKrKVv9YArQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779283234; c=relaxed/simple;
	bh=+gzw4zaZBJaORTgrJnbIehpyxs+t3m7jR6rUqdfUD3A=;
	h=To:Subject:From:Message-Id:Date; b=LoWK8cas91fa7hdBrrq5lxx3vZuLEU/qQeHfn+iywZ3YP4JjR4GnhogbO+WCCD5EFlf/Is5h3K+XGkPd68exr/07ce/7+ErylOg40TSRH2lifsCX/ptgZrSEo7WT0hnV0ksKcP2ymdsoBHdQhCaZgdmxzyoGXbX0OsfoyCU2kIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPWp7Gjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPWp7Gjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2803C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779283233;
	bh=+gzw4zaZBJaORTgrJnbIehpyxs+t3m7jR6rUqdfUD3A=;
	h=To:Subject:From:Date:From;
	b=PPWp7GjhjCAgCcW+UlA4fhQtlaqimqy0aUiEfayC5AUlMyuCWV4am9MR3eaoiPo2N
	 Rm0ZU0RUQmMD+pwVQz8MO26QsH3O2Ves2p7k47XSw3jcwJ7Nf4baQ1Ixa2Up3f9ny5
	 lWBf47dhzHIx7dirQVgwHEX55V+ONjhHMwSyMfQ48kCozdWGSEdaiiHgLxMtzgxm/w
	 YLTQ/l1tmv6/jnLwqEq4buMsoQZYWsw5VDtBiDhUjrW4kYr14DtkGKrZf0KsUMm1Rs
	 vH4YOaant6QitJgKUBRrGlk23rA/dJzQtUDitbtEF7S7mSkm24CBFm6oF2jB9a2SSY
	 OCtJWHS4AMp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66CBCD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928323373.4271.14910558325740286996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4308d4d2a244ccb25bfb83313146f72a63201f416f133f8de3fbe21ff38c278
Date: Wed, 20 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779283233
