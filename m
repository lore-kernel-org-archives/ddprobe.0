Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6460C3B058B
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785789034; cv=none; b=s1SspdYsIzdxQu/tX0nIGpCqWAt5LPO4xAlO2+lJBoTXYGVRJ5fZF/2SVVdcvHZ+UCmcZzoC1SOUSBkVQTT5El8W8rENhCw+P78MvzE2/ZGL+biTkpdAh4nv1gt4uP3kHGj68vEIBKY+e+tBkQ0jTEYZzEAXhkMNQB5ncVLmR2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785789034; c=relaxed/simple;
	bh=GpNzU9mGZGuv7g5wCV1AB7kCGzVOYAD7KVg6nnhvaQc=;
	h=To:Subject:From:Message-Id:Date; b=EJl3EbnD22zRxsxDFnt2TLyLQPvQnrKee1kq4VZLDPPG0D812xRznOK6mpWpNThnwbaK6y6VnzUNTAGJFA4H+sUPm2WC4jCPAmgGrQsjuKML7ppjvabaVJnIZCM4Qq7F/gEZ6ZKMhBbbNomeZDd8QDTvMZ3bXlOTYCkeV1lVVac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7ajqHr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7ajqHr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8430C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785789033;
	bh=GpNzU9mGZGuv7g5wCV1AB7kCGzVOYAD7KVg6nnhvaQc=;
	h=To:Subject:From:Date:From;
	b=j7ajqHr2XurV0HRI4vmwhV/oxOsBKMTtLflIRH1oNmOIBf4omOsBlAaG/w05ZslXb
	 L3J7Q9ayUdi5D+DQEkxlvOfczcoZ5IMYTRKolnhP2xm2DT0KnMrp7x2EYPNuOOq4U5
	 OcGJWtmJersNC671sUqpfA7WRyTxHcvL4O6fDXXlj9ZM5ez7noDBUyHa2mYONtaBXL
	 EArFJqjVtjwvOYE0oeWGsQf+U3QrPKUiUAtGSDPH2U7cIWxw0AmUaGnOQjT/DloGNw
	 v6Dl9Uk58Tga5nlEFN5+edPfwTsau68HY31gB8odGZF4zz07opvtHJuXsVxSo+qcaI
	 OWFqfFXRnFeXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D51C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578903368.10832.12400108424128982710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58b8262e7b30a4ff159b2730d746be18eac70a6ca62229a948b482bb1d73fa0
Date: Mon, 03 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785789033
