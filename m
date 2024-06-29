Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA7F43AAE
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719704063; cv=none; b=sEfkiJxL94tmia11N+FIEd0w3bKmd0MuNeoXuyYdWVZbPMMv/xZl7n1qYjrN6LxaRGv6JpED9I0zOa2c3MASzj0eUhnhnAjRKY4+CTEMU7e3FmReAdhzeqRK2PgQ+wkGy0XfGNAAoWErDEFOcmXpDwE7AaLz0Lp7VYrQJuV5Je0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719704063; c=relaxed/simple;
	bh=BSLuWNW4DfJNbuIsOoCGO4pzPsa+BWxlOlN/e5SgrtI=;
	h=To:Subject:From:Message-Id:Date; b=IutP+Otw4UGRhZMPxJftMdGmt91IdGH0oBXzhJOsx2Y8C18mSdQmpuYpdeC6+aSZSN/TxXYANbOBQU9Gg6kEfJSnDf0TJTYgT47rZTC8rt9OHkMNFLz8M2g4wcnPmkSy70l4pq6uRHnxzYidHK3N+WegCXMKL3xRKBAaPk+6GPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWEzf9Hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWEzf9Hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25EBC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719704062;
	bh=BSLuWNW4DfJNbuIsOoCGO4pzPsa+BWxlOlN/e5SgrtI=;
	h=To:Subject:From:Date:From;
	b=QWEzf9Hb5VfVtWiAceJgj1FUY0TJH232gaMvCVNj7fyiCoCY5I5XzOhV22RAHIh1Y
	 1ZKedMm/BPvdeqmFow0DTOeUdyUj7x4cYFwtv/6pjy7HRRGRj8ynaphpvqOK7UH84v
	 /Q5oxLNymjbPTQRSClrzX2gfPeK0K71dMQV+VaCbFB0cJtdzkeRGI9Jx4X/e67bQkA
	 Jtvd4VIL5OjsPonL0wRWRBpof729+HEa0Fl6KKSs9Yx+HNQqHFSToGgO3wjv5Qv2UE
	 ii6EF3L/AFZtdhM2xL6gjZ1Rdc/QZPlHOJJHcFFtY+5eoCkNfEbYjRf9Nar5bH4AGm
	 xqWhj4nAQdHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3A4C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970406280.21857.5153400355884917977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee6dbffe1c237a6f379c4b82f9f51dbcde763c3f0c79a55aa57627910cdd9c6
Date: Sat, 29 Jun 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719704062
