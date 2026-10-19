Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF0349B5A2
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792408834; cv=none; b=SZ63cD3ZuO18meqHqlcc8rTB7v8IWiGt2hI4m81Eskn+Dwc4Ugii8aXhxXSYEdM6oT3zWOTVL6b5tB0Vtnkz4i8rTK3YBEdTb106uBO+zUPMfpRWFaEUiXLtWIKQYRjvgSIxnuS/vYEIBWhux6Wm5O+dzLC4fOljIoNqXvTF4Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792408834; c=relaxed/simple;
	bh=Lr7klZdk+wFpmemzxqfYVe6sYnWgwYqqEgb7jkNCc10=;
	h=To:Subject:From:Message-Id:Date; b=ASwDMhIxyqYRAT7rMMTWwMEyI9+E3YPdlQb51iloNhDNtYhnr4DOchSiDICwiG6qFjcZLOXosxEZGJNzeNkE1rbdUJEb3A2UuhGirK3hYb6a/fhaaq9RGphMTUODX4BhXQCKWIhpp08bh3im55qJjjARit5BmIX4UVR2+TBlZww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhuyocpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhuyocpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04F5BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792408834;
	bh=Lr7klZdk+wFpmemzxqfYVe6sYnWgwYqqEgb7jkNCc10=;
	h=To:Subject:From:Date:From;
	b=jhuyocpudDbTIao2F/1przJq0U0xD2DXbAMCVZpFwkH7yYEKgk8Rvnm6lGZUJKkuz
	 uK6o/B3NDkjRIryE+9nKTo/V9phGOE63DS4agK0hu/Kl++1QQgF005B2PalKQgUnDD
	 lj7KfIcHJfdLu+q+9udDL3Iu+mWqdmAKmoosjZtvx7W5zTgNXWpUTPorUL+A3m7qgK
	 vV65QsgpsFgFHQJb9RKKLgM/w0qYT0aa3XX6XtQWrgIj1JPCke1sa502NVtTTG+/90
	 cZ6rQLUSSeKKWscVkPQmwJYhjefO6aIEND1FDXeeCnuwJ24AaVV3wspY61FjlDOfmw
	 a8Usp4cMN6jWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D11CCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240883377.21582.1981001467404519495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8900cf456fa36908e5264af769bdf5ecf8b1e4226addd9cd276d61b5049974
Date: Mon, 19 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792408833
