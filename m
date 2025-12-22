Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8322B31D74C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766368434; cv=none; b=DHS6wDpok1xBx1ohW34xSV8IfN/j5zsIfA/+Hlg+KmWAjm9h7Vj1NH7AiqVEA7UuG+WydwEc4hSN5lKe9FGlKGJ29RjIOl2iiC+RcymOKfw0yVzbcrn41qVGILpcj3xovgMJHWtLxoHCNrDXvWXZLS2WHTyLa3Vfmh8Bkl/9nOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766368434; c=relaxed/simple;
	bh=IBP+MslsSFei4fzaLx4A2wRBu9V0TbbN0CUNvWGWJLU=;
	h=To:Subject:From:Message-Id:Date; b=e/WIi5L42BXCAWjoPZ2biHLWtg7r/h15coQEqlKxndXXbGpKeUziBJJ77993TViX0chsw1ZrlUBboiRMPgoWyYJiD6+GTEN4acXWjaxNeHpqZXPSCzA9kbOex94OMlPar6ge8lZdkRlLSfnC7+dRjmRwLZL0aebciPRxdjwlZKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3QjWKyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3QjWKyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF5C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766368433;
	bh=IBP+MslsSFei4fzaLx4A2wRBu9V0TbbN0CUNvWGWJLU=;
	h=To:Subject:From:Date:From;
	b=T3QjWKyItjm3WWsjR1f1nuv0bQ5oXlVivf3pC1YwKBhu44Y9NZ9fEoqKoONDW9S4Z
	 QxLL8LGXhsoDy+/aToYyierkchTSE0KeIHz11HczbeK+bRRJS2ILgED8rTXUqw0Vyk
	 eUzFdoJ7T/nomE0MrEHkctJzF+dQDj/hAI4IuyvMB2nr+RLI9IztfyN5Ltf0bBGPBy
	 jgKzLwnLIlnr139wSp4z5JNKFGrTOIp9Wr9QpPqUp0uo1T+MLYe+jvx6Tgyq876X38
	 Eq7W/Ajx8qr4TgjjiaIS3HtMF+4ZVMQNm84OdIAPtsG8W+FE/qLyB2xGu6sGfNOu7I
	 N0+8SBlR/hTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EFEE66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636843358.31624.12471880720778804406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31a89feed19b65f0d6cd8e52d690548df8d50ee1d1107db320d63cba3371d5c
Date: Mon, 22 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766368433
