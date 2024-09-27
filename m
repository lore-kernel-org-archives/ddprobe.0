Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9C71BFE18
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727448354; cv=none; b=K+UpVkKttFD8c7OgGQ94GewbIpXtLfwHUHZ/lkz/sCqqRnqO/roCclUWbbdhBn5AEEpNKJM9zyPO66QAi+W5ox1L9PqaUgyLwrkxjJ5Pwf64idCqLzq/qMwKa9fB0vSWMCKhAM7aXo5/qCPS7YHsF9ULL9TvNhuU/3Y+9ayz1sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727448354; c=relaxed/simple;
	bh=Oilrsj+YLOx108qpYUqFUnoW77zAGrITnwUeTOuuaWc=;
	h=To:Subject:From:Message-Id:Date; b=pq1dzKDH5X5j8f8NM/AZ0CNHaZRiiOWBMRu9PotKk1dM7ij+VN+y3OuHMQlFijS5sjq/mYUGMZqaT1c88BXTNPrEUFjYp3Xm6iI4sGNJ/4Z0YiegiLjhboS9A2X8Rhgx8P9mACDxpoOwi9NzzWl4geAuHjk6ryDzaM2cUFXgpM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhRK8FaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhRK8FaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B56C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727448353;
	bh=Oilrsj+YLOx108qpYUqFUnoW77zAGrITnwUeTOuuaWc=;
	h=To:Subject:From:Date:From;
	b=mhRK8FaIh3pZtefZszVt2zH2yyPcSbGWeNvMNSUdp3ISZ5mg1HobgLz2Im0qzcxTD
	 UHPTYUlKg13rEkv1qtDMmg7io/c9vQqLjadF1bXamg0amVvgms/Bb9yBYzGRmt2Gx8
	 g3w3wVfn3iXLWptEblaCDnjKOAo5Dyi7pOE+5YvKAL1WOWmVBw3/gmeSWoIVxeyLzF
	 6J89eGs+zUCSwX07URBttKrPehHJDVlJO+zUQGJnJxzJjAuGB0aXEqa3PD9msemkUg
	 2ok1jNtuHQTQBjr8CtjD1W+Snzb3QIlmdCv4cesssE5/0sUYVihjI1fhDJ9j9xnpNe
	 GlgyYof+RtwfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FFCDD1B8
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744835360.27218.13311149360862989495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0271e7111c649aab81c8d72a3ef2e4e36b6c2383e2c98a7827b8d0380b162964
Date: Fri, 27 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727448353
