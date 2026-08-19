Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFB82E888A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787114434; cv=none; b=DwSo7QzYovhTncH6IZpMi5YVWCC5Ji680oIEoLALvvoM48GModudBM42zM/VoXlWobv50l4D3FgTZEv8fn3Xh8mgbIwumQbrxWQ/d96Yi78eQ6TOyyAP9xFwFkIq2gk3mktK0fhimZxQxB3KwqIbVy6pcPpVAV+li+REbuSJMRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787114434; c=relaxed/simple;
	bh=WpHnPnb/YGUSZYD5mfx5Wz473sl1bD5qUf4UomHmMP4=;
	h=To:Subject:From:Message-Id:Date; b=ZAO43PV+jcLKhvYEGUiRt7Ji5hWTWOdBxOMT2f11PN4HqcWX3uAgqbsbNg3wHZ9MCzaDbqVB76yYgkwN4vLa6/4G+OGSbKCU2hYiyRM6H02ukmTB3uby8PETS7ain/t0qQp60d/afqdPqERVnTQuIw3axBxtosgSDYKr643IlXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5lcu3mt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5lcu3mt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1621C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787114433;
	bh=WpHnPnb/YGUSZYD5mfx5Wz473sl1bD5qUf4UomHmMP4=;
	h=To:Subject:From:Date:From;
	b=i5lcu3mtYNMtcaVm5r9G28ScbZWHjmo6EGHeoZCYC5TQUFT8LVhroGM1onO3CemBr
	 i/HoCD6+9dkhDcDUyxbGuNLfy4FKr9ftQ80+ABew9EA9M0yMwNfggPxJ4iJNr1BC1N
	 hVFtkyoQz6tjwOvfkv8BItHMiULrA8+9iLBJxPrb80LRByJxWRYY7Sq6e0xkshpqws
	 YxwH/f3dCkNG5nugUBRozbSy/R6oE0sq9xaMvM1oPpo0v7yHsH4b0j6qn40kMcQjVF
	 Uj2aDCuR1CbzoK6vYwUUm7IIyhEGrtr6c/8GYUx2B2rBabhGP/d3+aGhQy8BmdQETC
	 cV24q58nCgS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C37C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711443372.24970.14240334889773821089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6116064303493f982b40617cec039579ff4f92216839038c7400e50da2c1d5b7
Date: Wed, 19 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787114433
