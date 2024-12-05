Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C817BB35
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733369754; cv=none; b=Z5M5hw5c24q1wTwBmqC3AToIA9Hehfx0lzaviFbWRO3W99YJwKLQTID4cBj9Igu6YBswIfKj8dbT3jx+Rfd+35GicUPfBwSyH0Aytg1ZTqXHSXMoNM/g3vxCTMmhDG+rMWJVTsXz9jB+gPRtrbNdb0tgOzyle/ozvgzQ6vJYGbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733369754; c=relaxed/simple;
	bh=xnTepqXaoaCO4B/vbHl3MTo6hFdGmK+Py0PqjOsQH9w=;
	h=To:Subject:From:Message-Id:Date; b=Thm14zYfSJf5p5jyCIsu5vugC4c9Y2nYokKoZrmS2FjuO81pumh6ju6FbMZ4ByFUV7G1HCW7i8FlTNCD0fXmuKgM6DLtEVB8lHqfW1LydnYZEkGt0PEYFGLc8KNewXyg/ek78kuNeGh3rYN4AOUNyYJROszWwD+vxRFhKU/nhEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0sEPUVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0sEPUVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9BC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733369753;
	bh=xnTepqXaoaCO4B/vbHl3MTo6hFdGmK+Py0PqjOsQH9w=;
	h=To:Subject:From:Date:From;
	b=j0sEPUVBVtdK/Gp/CoxCoPyPZvx2kpC5lrzFcVGAMGoNWkT/1XOIbOQrTzle83+x0
	 af05+O1a8S47fm8al44ScUfCHUhqrYMXa/pCIUxKXUpTBWXkW9phv1p/AlK3sXZsIt
	 MEScUfKcj/2C41Dt4Xw/N9oWs7z/qwFWFfElEtmG99qAmk/lxYsrFg/C+gptM/r9Uz
	 WKpEzCnHVJxutqxW/3tevyfptd/iEb+/crw/OvZKBsUwNJsP9GSypenDEzbQK1TSVK
	 88HMobXBYzjdxcvkx0g/3p4ZRfomQSZLN30oQ/SgoDHPoQAP1UA5g29omzmpam7qUG
	 QYehqZm7OHe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91958E7716D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173336975358.14745.14055311518146564857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7603497badd78e685908de9683ad57dd6e7b5442f2fac22736c12c1d7dd4c315
Date: Thu, 05 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733369753
