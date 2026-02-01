Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9DD329C79
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769948634; cv=none; b=kuWh0Gqwng9J/4mXY4DHRkeObBWjix63QYGHnWv0ZK9X+YIG3hFHEwXdBS24AcUFZV33tEtxpdDLl28PQqZHq/Hr1sXrEzmGKUb2P10MwLhO/aHmlNgRkwgNTRXHAgPplQ3/HLyXAlbG09VqesPp9Qrz1ZQQ3aTHwa2bngQXiBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769948634; c=relaxed/simple;
	bh=AtiAKkQs7kuRCxGgf0JOycDVo35qOCBoE1HEvAW5U38=;
	h=To:Subject:From:Message-Id:Date; b=juGA3kEeBfuKzc2Cn2PZekED6D3Op3/fVlyMXaUfXhN+BOWVNlommvHAci/Bai8cfsGw6USWhieO6VxNMReirx1wvQu2SOirBMFOVRwWcAY5BkRoe2I5/faoONmSy5geGDdgwma1Q7otHuKegwWFNkXVu+yDL11/i91LdJBuIcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzGoO3F+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzGoO3F+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A8C116D0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769948633;
	bh=AtiAKkQs7kuRCxGgf0JOycDVo35qOCBoE1HEvAW5U38=;
	h=To:Subject:From:Date:From;
	b=OzGoO3F+fyrwvrn/bfjIneAnLw74SWsfSwuucqP3C3TgI+AAIk5fBX30ZAn90rjVD
	 cIWGp0DpSwvEvjAgJrQazGNvBkzGskWeBNgOei0g782176WFTuimonXEw3ZepuvmW9
	 zfm7B01S5/99t2WW/pH8pG3B8SiPp8lq+UokqLXXQZjiM+4ne9qvjFpiy42UjUPskX
	 JlNrhFzw2TryOeXZYGm7aKqPiYGJOIm8qjVzuH9xWPFqYZcSfPsYQAaDNvngU0IwmT
	 dEDKFuI7uFLeOT21Ouci5jQBNkhv0myrJ0w//4Nz7agt03JdtMEbblrJG1D6NuklLb
	 mXBDBsAWxBIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3FBE7C718
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994863360.24129.16213409840866986023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732976a3575fa313b323eb395f36d2720e15b8239c5ea550ee3ee749d3166b06
Date: Sun, 01 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769948633
