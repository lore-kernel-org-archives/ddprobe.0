Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BCB37159
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705843697; cv=none; b=iKL8/sGnrTfBoEJOwc8h1K6I/RkjT7J4l90Wa9rKNF6wqiEiGpgEQiKOdWIIBFrxg4pxslYC2pcvR+syD5WNVYGmMxirhv5Sngdam9dS80+jLjadbEhAzPFnN4ZYb2UX6VmJ2ObtA9lpnVbVd0iDPlYd5eVJmRGmX0BLWFWY44Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705843697; c=relaxed/simple;
	bh=xpX3JnBPNLVEJK+YDArRZgSLF4M3EyEhoeoC6GAKCtE=;
	h=To:Subject:From:Message-Id:Date; b=jR/cCuWhPQrz9KUZyzztFftJ45hHcsUpr2koj8Jl8HlrYJ25BhE3/9W6n5xcHhsrjSvf0YUkaYzk3yehk4Iv3HWR//gNAdlnshmHL2rDuj2ux3wESEuCH2rRKZfCIephBuz1qs9ApWv96vsvhv54uPAd7KSrXHjfyWe0ICG277w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsoRGhr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsoRGhr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80EDDC433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705843696;
	bh=xpX3JnBPNLVEJK+YDArRZgSLF4M3EyEhoeoC6GAKCtE=;
	h=To:Subject:From:Date:From;
	b=bsoRGhr5128Kuo18ZlMB7EtM+XpCN2RidxEnGy9O/X+Th9RmaeZJSbrJSxIy3bdg4
	 6djfm3ZghLGNbM/SQAG16SMPwPzJmZeD74cd+/0OKQw/XbxXy0GhXqZIzqsOkEh6zN
	 o3lg/Kk33b39DrqsNN9vXh9jgizfqTS4Ueg/OdhQC+ljywcDhoZ51iDxX7T/d5ozId
	 gzZ804d467kmyldTALc6OsF7OZm6uf/cMfnE1qNhXmvSzd866e7vkte7eURCN+mm9b
	 wvVDHsfnhbysRQgVoVTH0my1ZtgYOi9TUGMCzfZ59hrzchyBuSxRbKGInklLxUmesQ
	 FEjhNeY8Q1z5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62868C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170584369638.22359.3507182701786650718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd9538f6bf559d504c4d45c0d3cc4486f2336f420df625de31255da08a027a9
Date: Sun, 21 Jan 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705843696
