Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462711CBEB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767613434; cv=none; b=IOaegAOWFLd6ptqmjrl7wpP/yI4QkRGPdUy7pjpbZ9MWu8a9NYYioycaholcJ/jUvmy+gi3Hc0nU580z6N9GMsjqYGuVpXgPGXtmW9vSihaJAp0Kbs6ZXM6bNm2MMAZw/syBXBhE7Ocbz327MuEjLli5DghDqlA982lmp7wexSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767613434; c=relaxed/simple;
	bh=Gq8856g3EIwY7g85VQfJAB4YImohBYqUeUJdUpwBoag=;
	h=To:Subject:From:Message-Id:Date; b=OtaC8bsM9/0brJdowbI9AS9ymZGUT/9MkvUNp8tKlgq9mhwyPShmB+43qhP23hKbWzUfwt79SzSDu2Z1QSSG/VR6X+d2fZJMGW7PVeliVN0EYMamRSljw23jyLi6/QsPk0J6gbVk86Y3IVOBXQwaX0LlAJzbCiW8s64d+MKh4sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRwsZOeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRwsZOeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7D6C19423
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767613433;
	bh=Gq8856g3EIwY7g85VQfJAB4YImohBYqUeUJdUpwBoag=;
	h=To:Subject:From:Date:From;
	b=NRwsZOegAUPGQf9ILgQOJXoaYuAa94Bniu9pLsRIXeEoMl4TnMBfeHJE7Suq5aGZd
	 TICyuwkRgSoEx9KoWGIREQLAAFGysjBZ5qXWCS7CZzed+vSwYZJzxQz6uc5AxuvuNW
	 zWBH//JUXADO+5o6Up3+SGjRwSoslXwauZ09YigJMk3ZKI62glNWIoe80SxupN+hTx
	 4eDARV6HUT2i4cOhTnArdeC+9FSWyVe8q1PHk7mb6RhzFsC3NWJLs9OqcaE6nPOm27
	 aFNfrXePY3cz331KqrrQRRECkjDRbo0RtPlb6bPtTjTWuuvpvMEbhT+YnhM/djf7dR
	 zaEV/O++pXM2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E448C2A09B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761343357.26299.4029911202445516864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57a3be3c650f591195aed8239d03b262edec0e60e5dc7b8c1020b41667926f0
Date: Mon, 05 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767613433
