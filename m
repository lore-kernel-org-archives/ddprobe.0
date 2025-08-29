Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192F01D5CDE
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756486794; cv=none; b=TrHt3JDFfEQcdaw1F94eteex4Ht0S5rY0GGWn9MzNTsZBc8zOVjdWhXW0qaEQqeUb3g6dO2YZJKoqJtL/ndyX4zLh1/N6Bewrty/SZfkNefG3MujK/d+NL9Noty2tmWW+RO7sFfMs4XbLB9AAKgVqIv+2uRPDhkaBImmj0ZvJbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756486794; c=relaxed/simple;
	bh=vXSCkLgVjSpA7+8PxbjUpeiA/ds5WKwnbMKx5HKNYPQ=;
	h=To:Subject:From:Message-Id:Date; b=T5qTfuWWD0zUT5qDjc9aY+xVjLrnKbz1xArik2zwjDj3XqR66DkQ4zYm4/YJUNvq0GOISWj7QWXCHUTPasukmCPjFGLdzIWWWJkajZ2Esl6GEg7aEPYZr6eT1moXOvMyQ1sslA5ysjeYvrYpZdP5ztjOswfR//ezaewVgqL7Oc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmgEc66s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmgEc66s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C7FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756486793;
	bh=vXSCkLgVjSpA7+8PxbjUpeiA/ds5WKwnbMKx5HKNYPQ=;
	h=To:Subject:From:Date:From;
	b=nmgEc66syx2nN90uD4/YRSnrJTtuyJmhUIMDzPbGCPoUK1aUtV/Fe6yH7kcJvvTIA
	 WEhgQeoCqWT13uPCWf0wPSLwIoaMbmQp90o1E9xtNTnfXZCKPzrbjZYPMrWFZBMLCq
	 6q/YyNFK29oVCgiYty3dAjX5jrBLmD076T3U5yFIsDZOspY2EZqflbmKN2xTfL+paY
	 k/ZMwwLQfDcJa/0Db+tt6wl6B5CLM8ffGPrzUMe2so5xOrSpsEBVmmIw/OeWfl1r4u
	 eD0xYytFJLDiQgUBQEYfzcXh2OrPpJ233z/Pnhz/KILAolMRHYmCJVaMWIN2Ij2076
	 SKICqs/zD//yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BECA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648679357.10448.14426215944382891650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3793d56bdadd7013499d62c0b6806d67cb00500b33ce654838f11d8e32ba6d71
Date: Fri, 29 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756486793
