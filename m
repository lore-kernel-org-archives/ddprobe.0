Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AA944D69C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772134494; cv=none; b=PgADNYYoHJOB3Ezr092mD9WopvC22Rjcy6T4lSHbmmaoCx2nsDk6AnCJ5P7J+8h534FWEl/Nw/cY+np0xSQi0YATOq649HuLVqdblx5OanAaCPjWSuTOvMXirJb6m7olAHSRdPokO3qe7YZpUgbcC9lAhuvVgjmEe81gZofrGzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772134494; c=relaxed/simple;
	bh=HV0QSmzlDAbpdC+OdWrzLpvTD+tCwpNHXhFZ4oSByV8=;
	h=To:Subject:From:Message-Id:Date; b=V5DOaIArzcTw8ukZbjKqaMtrZ57I5uRmUYwJV3ppDoXdvR91qa/M/k5LYThN/KuuPLM7Tsj9HyAeuAUCAF2V8xHvDdBKcV5N3nz7M6K2D/w6JUUr95oF2TtTRgWZfvHqNIam0XA+ypTcH1XUFLQhVr6tnPapFzV1OdZcXF2ZAGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWzPzJeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWzPzJeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C125AC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772134493;
	bh=HV0QSmzlDAbpdC+OdWrzLpvTD+tCwpNHXhFZ4oSByV8=;
	h=To:Subject:From:Date:From;
	b=bWzPzJeb3fJ0kaz8v1WJHgY2mKIYr0w2cEtTObb37zz0VJxHTikBFVmwDDC1Uk6je
	 xkfPhaQSV6Q9ZuFLpmrSvrdavfJA3ssQlsqzv+7Y3lSJIpXybtUQQwxmORgMU/rtgg
	 YgxXE+lH8fWpxz00neEDXmlxn3sZwMpaPJjMJhymaEA4kYr5qsxaQyRQHdIop3FDK3
	 2kRGfrjl/sgopief9vNxbs42mIG8JQat8WuA4fDPOqwneZ8RUMwS0cj5zGYTzbp6cU
	 eBVsQlZCL0T44WG5u0oqJ5FEIKgzcx79/ny4Oszg+j7L9UN4djLTsJGUSqwGl/7Z1S
	 aac9GTHRK8Fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6510FD9E04
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213449366.15319.7703658678511531841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe5b67702d8dc88d0358a7987e9c7ea0ff3f9f772d5cb13f7c21b880616a22a
Date: Thu, 26 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772134493
