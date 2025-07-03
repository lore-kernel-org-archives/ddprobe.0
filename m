Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A70D2D3A6A
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751533194; cv=none; b=ULDANAt9d9B283/hTh3jQg2IvsbwkGasu6a+yApuXNtct2QLSPuIh2g9c5/ufOiTbQtqmYKXpLeNsTuEmVVEenP53gk9Ug1xh6R+HuL8Iwnz8IX2QabpBg13za48cN09qs/nz7dGz1GN8TaSQ9KPdYFHq34+s9zfu0++cKY8TXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751533194; c=relaxed/simple;
	bh=H71/7eU+7wUwdQlAZqo8aMK90BeaKYtsysb8/O7qvX0=;
	h=To:Subject:From:Message-Id:Date; b=oZdAxLSQYgLNJGIskoIdD3FHMU2Vcr6UsIuVe0K9+ncJWhvNBtEPwS75XuIs6BAFeuKErhQ2YdMlhq3IgwAxqe0HnfTdQajEeqd8bZeAH9SelnoUvvy8R61cgVTAjqHz4zRKbkUuHlOP5qNeEu/M47ufAWoKTtHk/sWZL7oMgv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtGMuYja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtGMuYja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C281C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751533193;
	bh=H71/7eU+7wUwdQlAZqo8aMK90BeaKYtsysb8/O7qvX0=;
	h=To:Subject:From:Date:From;
	b=qtGMuYjaStQF5WnBLE/Kw6W1wLxRGY3foTQpsLoIGW7E67kHAqhY/rwcI+xXgaUgn
	 oqNTpcwV299apOxd3xQZhWeATPOi1PJitzSZOPXG/AZsA/hf5STFD1t0JtA+xTCGof
	 KkKHVUErF3IgGyHk2Zmu+lTy/cxI3xAm+lcyGlmn1+VUeP8GRCjmBGtNdDchB+AiHx
	 YYNsEhT8VZZYsGzcD+dT8peqCWi4h87KECPDClQZ4kjsIITDZ4uHO2poH3WVPHIbjt
	 ZK1CRzrVhZi1Doc9UUWYLM/PwkbDqT8ctkDiTqdir13ehLFcCidH0FFyoKlZiyO8Mh
	 hHeUO4y8r4Mpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E344C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153319357.5969.3712998723667735322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13652dad16ffed324a8d2a095b0c50b5ece4ce5061a5c498ec8760c46be8baa3
Date: Thu, 03 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751533193
