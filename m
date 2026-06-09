Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F8A25B0A2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780986274; cv=none; b=rk9g8VFyUUU/Xh9lUcZ7kIUFW7VJ1c+Pam2hsjj8a9VAzDt/Gtq7vjQzJjZ0Ysivis0iB/BqLj7kO1hXFAwaSrDXUqlaGRxe6I6FAN0hLKgTvO3AJEDKE7065Bj9ByCq7Np7a0R9aqQSYUou47hGSqcUPyB55DbzyfNQT83qjrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780986274; c=relaxed/simple;
	bh=ToO+RRAm4YZOVSoi633bD0a8wsi88gbKN5/xpMQ8cxs=;
	h=To:Subject:From:Message-Id:Date; b=XuXdAHv41fj4Uvb6jYlR1/RzDaZMLEgvKQ9zVXHvYjQWxgMzQbTEWDwrtrQWS0e6/CPd71fclGrxMDlexFd6sEzUMSrO8r9vlSaf3GXkfm158LFHvKI5otXc9KYIkpZWZoPyjs6HYIYZnTRhUrVKh9/Q5jI/LkxM7dHhkWxGfw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu42rpCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu42rpCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED59C4AF0E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780986273;
	bh=ToO+RRAm4YZOVSoi633bD0a8wsi88gbKN5/xpMQ8cxs=;
	h=To:Subject:From:Date:From;
	b=uu42rpCWGuJXCIqFuHhYbE8j1Hb8VAhHlWg0we4yPM5BbjXLUeFrSViwOK/1MI78h
	 z42KPBUJhp6xjiSuC3q6reOt7oXjwNcWFSKiCXM1wIOCKlH/nSKXwJvDURFu6K+duz
	 QPSpOH7vCGVqTD9+JtIZVI2zviUEx8jbdyMFN3XAzX7rjxhp66eblEePsV7JpO0/QI
	 qqInaEf/QueKpZovCONlN2cRZVOmrjCM6LN4ORJG137xQicYhvy0+m0v9Y/VNQvc1g
	 1au7+hB0GeCDLFot/rm+w2z8M/iQksoAERg3sFgYZ4C/V6c9VlWHbFOR99J8lsjMRu
	 KlSaG86W5DWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CD5CD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098627371.12528.1764497518686903046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bea688faa96e0dbd3cc188e9bf620c45da9bdf6c0395b9b8b31ddbefd0fad9e
Date: Tue, 09 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780986273
