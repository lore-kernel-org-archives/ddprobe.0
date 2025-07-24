Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DD622097
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753325993; cv=none; b=dXkJjRK/SNyPPVawSLfP9Ty5zpK3umQ6gDSB6aDVa+bRioSc5O96T6rES74szM7tpRp5ugr63wa5P9p5aCrW33jCYTTA120QTmPt40RVTr4VWnsk6CTuiVIwk6SHh2rH0He9tR4k9piONbeuYMom6mcXxwDyYjvqAAqNhzkZ2BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753325993; c=relaxed/simple;
	bh=dN1LSAGj+QKKn8F0OwperCbpGfIl931h9AFzmDpADZ0=;
	h=To:Subject:From:Message-Id:Date; b=WBFdTmWVqnS9X1ZIGib5nyLUetBYb9KNWwXHLEvhhLzithUvSmP/qEB7Sjg9zFZ91gmVN9SheaXzbESGDti9Tadn8bsmi5MJcpXdBUuzWbGZ5uRiH99ZpE7bII2Jy8ACAxeqTmw/nrxbIl82ve84mxShFeY8nD5552E/o2U9W5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey4dRD57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey4dRD57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D73CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753325993;
	bh=dN1LSAGj+QKKn8F0OwperCbpGfIl931h9AFzmDpADZ0=;
	h=To:Subject:From:Date:From;
	b=ey4dRD571dcb1LSsJmlrIaksMYVmvaB0fUO92wdfC9SjnWQMxRwQaifWwG6oZGKNr
	 wbb4jcvPDPVhGL3zHK4t4o86AgvkXEMhk/tXY7czdC8zSNmWSGnkRgPJBwD+Ri38IW
	 XjZ5hxQphvjzyO8NFqgsnHHC6wcBvl8+XpD70QseNySGIxG78U/9IvGoI1p2qpeb3A
	 vlypJHW5YB3Pklm239/t3aj3mIKnkVyJsLu4z1lwgsZ6o1JLLypJ8LLAinuvSOvSGG
	 IrDX7QH37R32ABhG4QclTnKir5npRRiUbV2i2ZiCGnAJ521ewqmNXy+2RBesl6bXga
	 qnq18dS/nS68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25CC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332599357.1026.5269592900093385821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e05f119c7912d87b144d1c63ed83c39a89acbad84ef313a485f0079ee8f6db
Date: Thu, 24 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753325993
