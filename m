Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45447322A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766985834; cv=none; b=blviLYZzGYDup8Dkscvs6e0Oz7Pc9Y6SKEsuxiPCvgKZOBAIQkurOFvyFR00I9JpSPPlwjEe2aozO5WlUvo7/OZ1OI+gG52Izb4bHIwUl0dzMNpT3AyfXa0QYahvW3MQPdka3hqqMedzkH5sKhxcD74CE0zn7SuxQSeKd3KnaHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766985834; c=relaxed/simple;
	bh=IfKuxhU8+7InPV/w7YMkdlhvUAQ8anbtlXnRUVAnIIo=;
	h=To:Subject:From:Message-Id:Date; b=YjNl7KvBGWLwUajY7dhqjBOmcs1CEL+bOoRNufCMVvMuOknz/0QE+rlHxh+S1irHPLjIvoQORh3HVqixkDfWVTU0p4ha7GimXJRNqSih+jV1B8saY8HZNu39y97vvlYevCOHaeulp1iIN7MFYyKloxdhmDq7/AW16AqZeygV4l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5noj+1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5noj+1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B284BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766985833;
	bh=IfKuxhU8+7InPV/w7YMkdlhvUAQ8anbtlXnRUVAnIIo=;
	h=To:Subject:From:Date:From;
	b=K5noj+1fs2XhzVnI5ot0EOge2cZ9sqXFI21JhWf+L6fagRU99Oig0nGrVIMvTZ+1K
	 FOx6T38+G27k2qKrIOZbWKd4xkZ8wQ5NXya7msjY+jEqtOI8tiyugxWhs2KKLaqiYK
	 ipvNngqTe3rtGuh+zu1OLQRlnqjMC3dlRYMXp6v2EAXW/tPpLO3HLgbGpAV09aJDC/
	 WNWO2MNyIlyNJ3oPXrS2aCyUzA5AvR9qaW51k7phQENxWo4tcXVGbNOxQ7BFONIuWG
	 eU9bMxT/j3fibcqcYllJEJO1/GkaTuMmSuEldtuoHi136ljJnW/aEFBpZg7apvRBV7
	 zs2q+Cax5OBLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9F2E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698583360.24405.6953051642385122518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3364b5a623caf4f8565961c3564ca99cfb807995d2709992ea2dd22be8d78081
Date: Mon, 29 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766985833
