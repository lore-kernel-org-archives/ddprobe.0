Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209BB214818
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744233594; cv=none; b=QYb7JsS3hrin1zTkDI5XLXWDadd7kKGWR3W/PKWQNU6Es7geFENVJ/juYDKx7sZCzexgMcCxrWJuNpto9TBEFiIBFzxkysWIb4gZwmJS5IrH0z2JyUPMLISzuVjuP1QUKVz8h2Jgv+FO6goa2q0j4Amsjd6U+qa+pmSgZpmqO7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744233594; c=relaxed/simple;
	bh=xz1Fo/VSoM1OaZjl05vxQ3zoIty09xbCT79cL+2iPtY=;
	h=To:Subject:From:Message-Id:Date; b=V7FWJ6KxfScUpX41b3/p/0WGzcZCOBHMoe15KAf3fDYYeILyLCZHEMmgVWUKy1/lWIILF1+9oJxumJdlvkK757BTl8T9hIRgMr8AgSo75PPqdD40mShSXDFM9o7VwNU7xAyoYVH8oKLzSej7ddM0+yndBDbaUTsPYte04z99JNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+0utjmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+0utjmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A800AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744233593;
	bh=xz1Fo/VSoM1OaZjl05vxQ3zoIty09xbCT79cL+2iPtY=;
	h=To:Subject:From:Date:From;
	b=a+0utjmLwdi/u/Fwea1ijCqcgdWgaRYwLe5mPH2v+UyCSkny+v4SdSmVM9Qhj0xQg
	 qpqku5OeHmJlys9MqdRKriIfh+Mamdy7U8n4ZJ//1wu+pcpFb7+sDvHQSkEgCfdwaa
	 pzfOgkbEsyq/5+VRAjSjBd08MH4N5lwTsp3qDIC1Lhxu+LTb1W25iH624oaIu2Z/JD
	 lCk3Q22TG0rWXHNgvWuQWKD+V1FBNyAj1RMPVK2i5NWDF2NhwvqUIfvABqSX7XQ5EE
	 CpbNBEF8GpbdH7qRLIQqS3CCPTvC+zW+YT/DzY9acxUFuo6sXLUwrR7bZV+CuxF/E7
	 OMe9+Xm9jmrbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9438BC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423359359.15069.5052405983101266651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c269e2b32111761665dffa59ec839a0e7e1e6d8165f3ebcf82ee59a6f7db440
Date: Wed, 09 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744233593
