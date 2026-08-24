Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569E81DB13A
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787568634; cv=none; b=NXaaIMCo/MJvlUU91Yn/p7782cPd7SHB/sMEO5p+gSuucQOpF8jiSTPOmrBP/3uBX0BFD6WEQMOO17oHwJuo/bW0lOSsFbmUVhXHhZe/fj6zzNRB1BRAbrPJRabOGg3R/u37cck9Ly9dRpqLJHAM5OIM/PWps8kEhwu/YyNBp4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787568634; c=relaxed/simple;
	bh=gh5wbfJNw10NOsfDWYyf2ycM9nnFiIt+/UmTCMWZAvw=;
	h=To:Subject:From:Message-Id:Date; b=X9n9mo3dE+VCAAtu40N15kJ5UGn0LUPUsq5CoWyLAyg5NhYTGdZgwd+fGt5k1BNK++w1yeaX52yOisPShsQkw0bfZ4/tkq6TyCBrWbbkaTw18tfmTgOMApUhzVcKOe3CxqdFoL32iE891jAki4ApdGjnsw882Z+qyM4Sjog+MaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCGSrfNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCGSrfNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE957C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787568633;
	bh=gh5wbfJNw10NOsfDWYyf2ycM9nnFiIt+/UmTCMWZAvw=;
	h=To:Subject:From:Date:From;
	b=DCGSrfNWNSvRSn2JxAnZv5CyG+Gj+iK2USeGpU5e9JRrwph4DJIhzmae8Az5SkKZl
	 FOQy1Sh31deOmvPbO4Fy76RWiVEyfLw2Ch6uUESVzhe+nLL4C89eULVM039G4bzx+y
	 KHQTjlMTzhdPZ2rtCEbXoAYMyCrW++r+WWE9slt1UfYre8XcZD8BqfMhGFjeMIE9HS
	 aQEGXzSffi8IC61uwQQYfNQ7iQyntRFXy6Qk5JdcWyYf5ngc30PEYbRW/OdaoQS6Rj
	 0wBbV3ZPsXSDeEC8DDKS7dGBdQo50+x1+pKCGbceXKYscb9hG72dg18FzY4eMkDd4A
	 pNqrwyOY702tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB8BC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756863369.14650.4072078919014466338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffa6455a16d064fd4e7311507352d7ac448834768726ebfea061406eceb80a8
Date: Mon, 24 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787568633
