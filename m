Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2121D2A1CA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748859594; cv=none; b=i0s6XrLjmUuIlrewqMOjKq/fo9I2biQsglANvXALayaD5BCCDNttiK/8C/Ib8VmggEDf5oRluoQHeoGX6mgo/JrpUZ1HHYBdu02TX+xToTqjtghRXFM7wH9a77Mduq2VeD5cWqGYILVfRFDTpaz7PtMyUIPX7ScbNTw2vvQlPXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748859594; c=relaxed/simple;
	bh=0c1zi0Fcokq8lKt0Sw902IHsSkIS4Xydcfj6CCCbDTI=;
	h=To:Subject:From:Message-Id:Date; b=Z65sUI9HKb1QtRS+bWo5sKHb4wHGClnDxy7H9qDouZ9BVdvyXfiQ96sdbOoqXNIKPVjz/dVnXb4ZdXrK5YP3dDwNWYHhVPTmFTKL6jqv25dQD+qadYDFreimYsj18TXJGspyCPCU29NTjqkN2DrW3bMFHs8wbDN1FS2M9629Q6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJY423RR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJY423RR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8A4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748859593;
	bh=0c1zi0Fcokq8lKt0Sw902IHsSkIS4Xydcfj6CCCbDTI=;
	h=To:Subject:From:Date:From;
	b=FJY423RRJKPnroFGb4nCAkm+/IslQMxfRin3NAMs00WebcSK4/rE7D0BPhltAkj5C
	 Qy5ZdF0hMWRU77uyCMAtFvudleJ3ePSispQz0cRAtfme5KlXpjgPywZBmKcZteQbV4
	 AOQbxn4cuUv0FeCmmXaGAJIPqTFTlwsgIRqTQPueT12EmR5gG2A1IgwExkVQp6S+VR
	 x4bm7kK7ZJawZ3kEAacewU20wS9r5g22LxTookoUTmsAbpbaKhz+zce5Owtglg7apq
	 IDBjLxcfYHmvojSoDYeCmGmIdO4GSmOpPwe5qt9PNSVO0pg9yNbNtHhFy8GFDPw+mh
	 aqZf+mw2qdTbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F1C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885959358.3370.16981868799166588582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37afb4b7f91e992dcef3cee7e5c321200e698ee854b6566a510a039a1d466616
Date: Mon, 02 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748859593
