Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E554508F8
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785327634; cv=none; b=S9p0CoiTEVuXEEFhzUa4/weMwt74E1kjW2nlL3r17t5IMB9d+uSFc4jNwYei3uuvyUxNSbrUq5niLMVBPqtLDUAtOV/xA8H6mtmYa5NLbg2QkLatY6wEyhR75PtOtKmkXj81HrxAcKljmfFA8bGdZ8/Yj5f3OJaHu+LbORgkVhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785327634; c=relaxed/simple;
	bh=hWKLQvYtkNJbdRMghfX48B4QCub2GSozmcL98+AlqoY=;
	h=To:Subject:From:Message-Id:Date; b=uKAW0pM51WDXHsu17sS6LGh63k8uMbAqcb8QdEh69RSdkcyaxc8xnHF49Neby+Babr4EWTkhmJwUaHYluzOP0XKBIz4RVDYSfUa+Yq3LYSL/F8dWYeY9qvEOifTK8JEX3p6YoneEzTd9Q2ovXiBR4ksj154PTdt4n/ZYjOBChfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8tmDKab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8tmDKab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB22C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785327633;
	bh=hWKLQvYtkNJbdRMghfX48B4QCub2GSozmcL98+AlqoY=;
	h=To:Subject:From:Date:From;
	b=b8tmDKab/SGPlkKsSehZUYlVY/sKNN5UScbqChAHbNhho4iAt+Pp8vjY+5W5dHyOJ
	 3pFLNUK9NO5IoCktjla6AqUtzgbToumUJUCd4no/P8XYlYasX8s2TL6LllX7EGKNhK
	 imyN15skUN3q3eAkj1xqftMV91vfF65PGdsjJ1iEeFR8OXixWXDzHl/aShBQNODfnd
	 U8t8ThXvSVPJdGr6YRHVR0z332qkqdyI9TbOZWCZDD4s6G1gnE1hz2szkCJOWxVQe3
	 FDVKA8f7RCcQ+0Q2gVOYYIMJL3HYO+oDy0tzgGZDlRYSyWnRoE2yTDFspNY5EdkLk9
	 AkGa6oPcwlUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A870BC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532763368.23585.17394381353535922429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633ec348796e2c1783a01b1e90541488b455cff6fb417a5f4076be2556f7796d
Date: Wed, 29 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785327633
