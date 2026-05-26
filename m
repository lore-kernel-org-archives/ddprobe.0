Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2263C3C4B87
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787954; cv=none; b=REWB7MPSaMG899nhv/Uyi66Vd689KAJt4u3wtYcGXzliDloK+rS7xczq8iPBcqImlA8Ooy91WFBtAW2yb1xu1/0iUqZEj8cCVhOZaQuB9pOxdQFaFEQhyNHZInJg5oZYlmeqpnuuy2Cc8/efxQGJURIJcJKKRNtIikl4ftp0Ikc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787954; c=relaxed/simple;
	bh=EDyK6E9/aZblr85Xo515kJ3ftaqINPbaAgLAWFFezkY=;
	h=To:Subject:From:Message-Id:Date; b=SUJmwCgQsxWIRg0qSEH7IlWrjcjHUwow1t85qu4kdHPPUsdXyGsf7DcL9OBjmvz76kESihYxR5LrQdMPPt4JZCxagBvzJh5TvREizDiIaTHL14iVKaSFSDeubPBb9KxIZmtVB5fQvJn1TG5HVwPU0pwmZOIPiCMiKm/PnRjz7qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0X96v0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0X96v0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86D5C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779787953;
	bh=EDyK6E9/aZblr85Xo515kJ3ftaqINPbaAgLAWFFezkY=;
	h=To:Subject:From:Date:From;
	b=l0X96v0ffKA2lOgCQPfwVIkAm4y3sSYf3/DAw3soUYo28CJ0RgRkXA9SEGKgpCYB+
	 uZtsVqdxW8D6EctQyqvK8jYYjeFakUjQMhV2EycSQI/z/EhPTJyCMIGFh0ZTwJ3PEH
	 bxy3/0j/CPZKOZ5XO0wNvcfCWJvthrwOpAbS9NAAoXMRWuRW9LaI4Mgnb+MYGleOFu
	 aR40XuE7TiLjwCFPmB3TakxYZG60hQqH7PeGzeOjTmg+et+tspywaecZgsth/T0R+p
	 SnecA2X2CZ+1aa3djQgBNHimSles9VP9409PiahUpDjn80qslNPE/eREl4SpDm7ROX
	 MdRzBlbKxSTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC38CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978795371.26468.1769213659699249925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92387fb68cf828cde6c9e3d31114ae674503569faed3533c7d7830eea86693b3
Date: Tue, 26 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779787953
