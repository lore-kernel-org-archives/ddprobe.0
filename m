Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAC81CD15
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724296554; cv=none; b=MgX0JTP+b8ecjJeIOJTn87uFiYF7n/q1jWcmWVh4vm4ZbUbh+Ng0VcJYueHOcsWaibMGp0GptHYldsN+5lPcV/PKhdHYstVXIDOCPGHzj6+v9EJKZK/6ZFKgMaHyIEMW+4rZxqhPqNZYBHdDnDcJJQp/0sfb4YnomBILmUFzs5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724296554; c=relaxed/simple;
	bh=zueavO8WFfJG/usBf5HStWwF6bf6K7m4OIQkxwzoTWw=;
	h=To:Subject:From:Message-Id:Date; b=Z+yMObN7xKXZu7YfTpuob8EDdfPE4CHmvC5HxVLI79L6pipKDS7GT5/OIXPgSYTT0kjw0leAZWzjFs77mXoYPAzqNLjPTF/TH7z6D7W5MOXTmMLvRUNZDRFMnrLYP+8THi+ci/y2N7fY+Djj80OKAoPLY3Fv1qRuEj7Z+ko8nrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsWHlN3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsWHlN3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF583C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724296553;
	bh=zueavO8WFfJG/usBf5HStWwF6bf6K7m4OIQkxwzoTWw=;
	h=To:Subject:From:Date:From;
	b=VsWHlN3wDSrl6pJgsfjtKsbPd7FZRUJHDdWyXoSb22rwtHHQ/JUbubGpiHkkLADlA
	 MHmSquXGEOxNWIzPKuDO6wtTFj20KCvjYeHGiUmERbanwkuEUtocPJOJ4DswitK//I
	 3zkhLiJiPspbTkdNhHSv+olAKIzisUpqX+lpDrig/gWXulaQ/Mdr6YYgSRwM9pWn+N
	 zOKQFqh5VG2WefV9lsUPWTJfWoWSxbZByBs8sEjscwB8lJLKXTIoZlZun9CPn1Mz1y
	 Jd4ONFZzlVzPkgmZmfpFbdXTftW1LZEru/3EBZxa2Vk7bAFPsIETaQ4f8WKihJQqEI
	 RgLPx2L6/YAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37F4C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172429655365.12050.5321686155712187068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c680d6cdcdc037fd550f96d8019fdaa085d8524433e20eceeb967dcf7d5eb1
Date: Thu, 22 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724296553
