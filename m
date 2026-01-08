Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB1D625
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767831233; cv=none; b=DMi66sHlnTvKmwnID4wAmI7qEIUXB8aY7W/iYL4AlPY7b17PTbLbRqfqB6uHwz/Vt7bCJue1YwMdY+wyqZiGYjHaPhi4WmpAXDbaeShqOE/KrkPXOv12sSRqOIQWeI6+AifONFZxxx89pBr4UxrZT0j3oSOTJZJkCJO3ZVHpVY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767831233; c=relaxed/simple;
	bh=IwEbiBoJnlOIQFeLWDZAHnxESiplQRgVPS/MAP+4Cqc=;
	h=To:Subject:From:Message-Id:Date; b=ONGEZuQwMbDAF9kpHnXtrxY7X34u1CzcXc9Y51DyctKAdkAlr8FUW4bKVGh5EISVJL5ugDwA5En0AwaODLCeSuiM9LfbmPLWEFpnlCqIb1Nz12Btt9SjANgt6GbJIhvjvHdvElAsLm7vPZOyq7ffK+NdEw0Vl/CcNrxmiDWLPXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4fQc4ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4fQc4ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ACEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767831233;
	bh=IwEbiBoJnlOIQFeLWDZAHnxESiplQRgVPS/MAP+4Cqc=;
	h=To:Subject:From:Date:From;
	b=B4fQc4ss10DZVTHrDJGJQ8EKQwzqnVmIVys2f8PPYc9JV94AESZjhsRdv95VDqYUV
	 DIeW5bp0Ld2paJBIVJFkOdFoWWg4Vh5hYDbsu53H51hlDINU0YBBsAzHVHxNjGRZLg
	 PrUIGwbgH8TDZBQtyA/qfkoxabGGZZP00xpRQETnljVzaJ5lPDQG1ZMLFALBtwlAPf
	 FCItpKSEqku+yrkuHyrEzRIj0QcU/lN9KlOn1gJWoVEdunAFrkj7xOpZTmt7lbo5fI
	 oBGBj5+j2t6TVs8aZLZk6tKPF9P/izzPZKR1WKACS5w7zhVuc0jDsXUm3X7Km0es2f
	 y8w+9bntV/xfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94161D0D17C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783123357.23123.11931616264337592161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8be5a555c32b0991208440200c0a1aafe5eb88a49c1e8ed902a9c2e6e96571
Date: Thu, 08 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767831233
