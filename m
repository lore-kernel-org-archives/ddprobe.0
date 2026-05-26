Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422C3358372
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779838354; cv=none; b=FIKYQv/WsgENHYioVhDH4frlORMGgGwznLDnYtwCuPZA70ItHE78N+mzNUxGbLc5wrUgmJ3rDaKbJSYdad7sRu4y7GCpEdKS6i/eQ4XIImWmQ7NYgLjbwkkCUBngfXL9MZGKjlg7H1ipOIH+JeuqTPCS++pd9RFVhLPC+yYNZd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779838354; c=relaxed/simple;
	bh=w8IOss+NZ9zwtPK8fB2I2jp4SXKBMM58gy0kvEQmHC0=;
	h=To:Subject:From:Message-Id:Date; b=HQjf8Y6ZwMNbmkArQWmnVW3X49Taa4XBpJwO9gFryyEHznv+dabcwJhoONRBBeiNaJOcqQK71tHvl84CgJgjpNPnrcXzz5OFaMDT71qbDGH0jzNa163mDN9yCVaiTpIXj3My8w4iGm9i6xEc6gPMc7nSnqHOAQxYN7cxBCILDfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzSwg1ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzSwg1ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8907C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779838353;
	bh=w8IOss+NZ9zwtPK8fB2I2jp4SXKBMM58gy0kvEQmHC0=;
	h=To:Subject:From:Date:From;
	b=ZzSwg1ln0HjMs5gzsys0W3os6Cs6bCjVcCoUcVzlJvGeOpYGIQ3W7ytn2KJ3RkYvN
	 fu3a0OuX2Rheg6U2fQgtA73/buuO0kHqGOSdoQCsqxlgeVxMSn5poGz+fZ/G1QCwky
	 xxQhBb7T3cwp56OGq5ZyfGy5+fIXDQ1HMHUfDRKlzSUVuKVwMJWn0YeqOjrBV1rxkC
	 xFIERVaFl0nCWzlQLAX+0RpOGefqVdA5T02e0ZPhZeYDHjxy5hijPqpj7HeAUM45dc
	 ilTQFXof0xr5EWzT/BIhSJ6seuZquTQ4EndmkEtQhEQgbIqhXG555wS/AkkCO2h5vR
	 6NHzRHO23CsEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC01CD5BD5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983835368.29223.17748470584860666106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c70f9ad51131779ceaaecdceb65ccc2cef5b83e963d8a90a365c8f15c444918
Date: Tue, 26 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779838353
