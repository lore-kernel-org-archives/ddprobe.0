Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B15B19B5AC
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722342954; cv=none; b=hDPVBtOZEAN1Ca0K+NNlRjHO81fCwjz6SwbLexQo4YugqeE7T+1wzzV5ZGiDJYCl9lgIIiJ62ftw0paNlOYQZufCRdmywScVKmxDz5a0B+zFx0YXVPYSFQ3/Cb+1WIue+Eu8FITV/WM15FuwkpFQj9xmh4Ey/rbqO0UuQDG0eg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722342954; c=relaxed/simple;
	bh=OcJnDspbdIcZPZOpdbpqkxrVKNuIJp5CyKn8nwcwN6k=;
	h=To:Subject:From:Message-Id:Date; b=dd9ngnrTPqCwKT1KvwoMJr42UUKVLicGeEym+f+mOVJmoF3zF4oi/xKXp8VgeZrtOEUY8YM76RD3APOy9dFIh07hytYyZO5QPLp7oXGByI7R8s4RI6pgaMIe2xcAr8HVs2kYX97NeV15ERZnFOxSbZVT3zZrjFbkfM138PzLBQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQikZd5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQikZd5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D6EC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722342953;
	bh=OcJnDspbdIcZPZOpdbpqkxrVKNuIJp5CyKn8nwcwN6k=;
	h=To:Subject:From:Date:From;
	b=sQikZd5F3XagijGpUGPEVlKH5IPyDImLKwMPcQAplwe2qy/Ib5uajwTKGSHUeLgga
	 R2jSEN+eLgNJrDQwti06E1XJbJ7eBZpXQycVjbVTyvSJYxy92FXrue0cPDTXSyzJp+
	 Q9NPoil+k24LI9M4UObVLjKBOfqW6B7j3jkKm6XgQ0AVo3mBFxg7VWotrEI2F6rpkG
	 WHomRz1G5iAuIIEbCSPbKp8MPpwgKE2fcM0i3o52MZ5pCnhrcuYSewfJR9zhfeiqb8
	 Mt/M0bO+YAJKkaiwpJmN2M9Qa779KkmBs43k6zMWajvMSZoXbCFkoITetttMRQQlS1
	 wG5XB3Ejue6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B59C3DA7E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172234295358.25857.17381007356433518661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ce3758547a22effaf3ad0e2c5751c666056e073173b63e9ddd6d3fef3500db
Date: Tue, 30 Jul 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722342953
