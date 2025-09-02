Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EF922127A
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756772395; cv=none; b=HoaFzTjoQ/E4+c1XDZAbqmFgxyItTtDsjK73vTA7ZF8826j5dhIj9C5wWAXztK2TemRcZQ/l3YZKI2ToRyRYKUPBKWYH3ieAXrs3/i1lPGa6ttkhY0XkwwamImqEk1Kkv+CcewF2nZ6KtM+COTR0PGHXgi/Wga4z6ZLN/bTYXls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756772395; c=relaxed/simple;
	bh=3WXR4rdwDtD9qIec7krkLrCkvsP3syXwbRsLUfjpr7E=;
	h=To:Subject:From:Message-Id:Date; b=a6ZvKalX8uxlOfFYkWiF267X9Ccp3N/mOjrsc9xu48dTI9KQUQQVHyi4/Ey3pod2R1P/Hro5PvNlJ2GPEk0RDwTb4PeJ89SdPK2RVm+JUHgKZUOH+ttdoqIEpqi2cboKS4AbWUpQPLDTmWiX9D7ps/2pOC/UHnfbtwuAlNwMSv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNwZGYFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNwZGYFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E94C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756772393;
	bh=3WXR4rdwDtD9qIec7krkLrCkvsP3syXwbRsLUfjpr7E=;
	h=To:Subject:From:Date:From;
	b=iNwZGYFnSyOIgwCBg9QxWFzR4ZI97Zy61FmWyMC/hCBy0YGs2Ti9ogXaaKv5DybWF
	 +gTgZ3wmbzhDfCNGe5o8GWGc5/wxgsvnLc7J0epS4TvLiEy2ZXhxhXWiykXrJzNXoB
	 52+3sEYac7mEbfH1ktIRB9YQ0tocAoHk5mxlKqHbnG/2MtvrYoUNaIs/cXXbmnRmR5
	 SbCyk3RGfWd3cFd40+M/2MnR7oK5DTAQYZOyXFl+6AFevqkjIcCv9qwErkVay6Bgc1
	 rf6RV5SFAxHrZzScR7I4Ah8P3EXdmGf0pQH5Mi13xKtApg5fjN0rpeHQA8KxlHdD8c
	 9rQ9gOuJfrrzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F8CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677239357.25044.4725466865910685289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883e715ba11bee7dc1ebb90b4ceb060ce1a23bedad055d48cb235ec3dafa54fb
Date: Tue, 02 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756772393
