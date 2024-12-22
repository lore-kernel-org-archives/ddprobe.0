Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311A12594BA
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734830154; cv=none; b=KI6hkXm9dwPyqPla62YyfesA659+vIrVTQlvstT42XS0D6JKhgW31mCinnysuCOoseiMtvnt1XDSDyP3HqWCvD4y0x9NJUQL0ePPK1D85E41nB4YNzDTrKwI7WYMftJRfN5rm8F6/pOvMveRYZUd5S6agpJtsIiPbTS973/D4+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734830154; c=relaxed/simple;
	bh=aM+4iKZiK5H6JlyjHoB+cpYeK1rApekBkeV8ooIGev8=;
	h=To:Subject:From:Message-Id:Date; b=QXOt2A8l2WMv9LqiMeKz3w7GXe/5dXeqNemytgV60LlYcPjyanimqdFJJ8ZmUFvKCiO+wx39+F3fsrvEtQe/TKUojZRebg8/DqeDN6QMO+tb//S39+KgB+HX59f4Os6gRKSq1ZTkbBXjZZ6ZIgIV8dKSEh25YWFVITZ6Qe/CO7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7TMOToi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7TMOToi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9DC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734830153;
	bh=aM+4iKZiK5H6JlyjHoB+cpYeK1rApekBkeV8ooIGev8=;
	h=To:Subject:From:Date:From;
	b=K7TMOToiX531ToOTMjjaRgvRDHqGOQMNM49H5n1sdi2rMzQZZNiWwFDgL1HmMzfvO
	 2RA7SfRj0uTaT5+614BrQyAu9hMGW5kAbFigwU5Z7YpkyzDadpFySQpsW4IBYLmIv9
	 hfTPnC3ce6T1i/eBb3h6ITms4ODaMPmLWmW52uQ3IahK2V71W0OmsLugfqXXvTzqD6
	 N8bvQ388Eb8pvl9ZKDu/dxddoeodLR2XF/adanTuA/ZKvnZFky/PrMXz4KNZeKAURT
	 TdDIG/EsxpWx+G09J1aOs6urKA8tjeRwDPpwOrkbGiAG8p0nTf/rXKLGegj3rPruZW
	 Eg9D4P90Zi0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96661E7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483015359.16016.9268516601761865773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ad514ab1bf7eb6f768b54df073abd14893a345321c057830bf3fc9d4bd7621
Date: Sun, 22 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734830153
