Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504B5256D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722573354; cv=none; b=IuUHHN6fQqX9r9a4fjTZEMqv5pHeCofFUXkkcTve3RHmfGdNtJI9lz81jiih/Aa5qLiGtCEuCxvALHOPWpdx/iv3rM/HKDCAlgBsX4FUCMWF6COdHUajJdfapPsuEwbw0ufIkK+QsDVmoUxDP6ssmB7FQ5oSAUX29CBxY5etiao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722573354; c=relaxed/simple;
	bh=mBSbn4KAcsyojUZNlk5gWexjjSkpjnh6THJwuF17Mcc=;
	h=To:Subject:From:Message-Id:Date; b=crWEovOneqN9ntXg2IvVOzOgxG6KXA7MMcrR9E/wISQbrDDsgW5ztOWrcubM8uAPwkYbu3udxvPyXqhxLI8F59pS5d9EL5r/7x76wPhuRVT6bPHqPHfffwn9Qjj2aT4aXzhexv0JNWJnKU9a3miaAbCywJ8G6m7psw47DeLNP2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUmnhaQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUmnhaQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC5CC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722573353;
	bh=mBSbn4KAcsyojUZNlk5gWexjjSkpjnh6THJwuF17Mcc=;
	h=To:Subject:From:Date:From;
	b=rUmnhaQtjFAi179ss/fLh4wyHZYU7TzU6Mk0atDWJwRyHIYGN3goZ/fUzf1MYUXoA
	 MY3qDADipaODySnoZ30h9FD2j5kXy43trxC+ICpoNhGz63ryeQV7K899zoxFNHuaqO
	 CiWjqeUPIhvqM+I6j20koqCOpZd2ElqbPCft0IXVQvNg4ZESiX10gtfiEPOB9ev1I1
	 MaKX1o9P9aeoKO3MAvEb41APylH4TozaVDH7yepNtwNUKaXxq3SFa/jRZIslzrFAF4
	 W6uxur0tMoJoidD3kO4nchkRl4ieNzi/5IsQ6GsEO/jHYqGHZU20tqcGQtQLxUsUyl
	 4JlsG6KU4wtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3842C52D71
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257335366.13659.473673082505875191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f380bcd2d53e0d0e3784e87ac9a788c8c31bc7b31e4101a21d961d00b4cb5bd1
Date: Fri, 02 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722573353
