Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA4334CFCC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761818394; cv=none; b=n4elmW5DcWfLbAM6wkn0TyqcmMGebGJJVzRN0qgmp9b/GvddkI/fNo4XIisEEFIcjt0CUIiYOi1iVh/9wWUQWpqgtIzF7wbSaaQjQBFW2ytGQ51cCwyFoRH/wxYEu9Vi4bN0Pbj7vNEC3R4hKd1rvBXQggEEnIxr0zPKhHmbZXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761818394; c=relaxed/simple;
	bh=pXoVWuRwbfZGfi6Y0I4qYmTTTYmGWepRNyfwYkyegV8=;
	h=To:Subject:From:Message-Id:Date; b=WxF469UigKmmCSsg9RHHNEOii+9MGA8ibFT+z5t6MD2mGUYqjdl0eByMS4rQSrYEU887xw7czg4SiQrz8W02XwBk0DM3m93xz4l3FsY2yPFNs+VAXzVv8AJ0BxtxcCYX2gLnnTooHb0qXcEY2XjYUboPVqVJic5UmPdB0Urp92E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPJY3rT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPJY3rT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E77DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761818393;
	bh=pXoVWuRwbfZGfi6Y0I4qYmTTTYmGWepRNyfwYkyegV8=;
	h=To:Subject:From:Date:From;
	b=cPJY3rT2Q0fb1INB5m0f6nJ2f/nK4O2OUBdgcVxPlUIklM+6U5/tUveEiG0YF6V5h
	 XVBy7hoLpjfM8vDkHi8AureDf5nujlQT+XJtUpR3l5DYoUOOnjSs2AQtlr/43Ec3yP
	 s59UAsJ05+hX4wzJa7arDm17NtjhDqZrPh9v0zRnLscyznuV9aUM609yS4Ea+iIYfS
	 iNuUVd3vx4kyImvrfwT2AOezHkt8N8BXy25ZybaSm+laNeNVllpY28NetuHNCrYLrL
	 AeE3GlfMhR70Er7hH9gi9OHtj3ocIErXb1MRCOSVBLVLZrHndnwBt23iWLmS0U5bYt
	 v+3BVT3mg1F5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34ECCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181839357.2042.9628218794404527789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae85b226bd32fc74c606c080b644c6835142b721447f6ecb9ab5a579c04841db
Date: Thu, 30 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761818393
