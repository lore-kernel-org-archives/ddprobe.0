Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EA9259482
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735475754; cv=none; b=gWnm0wOjJtmQ5Ar0v0GzSHX5pjRd962SxlIv6EglyWPDKRRcTtQ4cAVG0VYm9grcta49ovMrhL53XZ5y8kg907h4mZlzXGhCyQAw850O5whbYpHY9NYjt2Ib4lO6XTKu5g5ly6hj1PVtb47xLpCJJYzQeZB27nc7NHCB6cFX+es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735475754; c=relaxed/simple;
	bh=o1GD0cn4LlcctZLRcJqLNxlK4+jH6KKJIMU2quwxOyg=;
	h=To:Subject:From:Message-Id:Date; b=Xw3vyo82kg7ORPuFrKGccbla/crhg/fnC+0dkGpc3SCOMm4QoCzQ8e5Cxk9Wd69CXRdIisP3XXrFxF5KDongMNpKlIj9Mhb7rL+uLCDHk1KhtMexp6dPQGLdKHwCCBp/Fj0AkE0vmaZ+mfzq7il40/vwW7xc3bBd8YAFK3izRwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5eZLdU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5eZLdU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6057C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735475753;
	bh=o1GD0cn4LlcctZLRcJqLNxlK4+jH6KKJIMU2quwxOyg=;
	h=To:Subject:From:Date:From;
	b=n5eZLdU2COgqXowsYzjHlGttPAKW+Gu5jjVXfH7LTeWUs8EMUENahhRgKfgD611Tj
	 2BqHZa/uwYR/IXdwqVFk4RAUq6XQo86riLjaSapPiNJZyo4GjEz31rK5faMbg91iD0
	 UtME1OAG3/6wryG41xlztnv7dF5c+NRTN62lIiHUcz/TOAIiIqsQ1esQ79H84s34yC
	 54vMxuqlgDDXuHRNK8HYDORn/oCOU8jTVZ8cKvksY/1Pciqym0TIxu4Du3vhAQZY2O
	 FgGG3aEImEhxXIW1b03EyWkJ6eoTy6RJxAbopH2rxSfQrlebribjRUxfEoH9vhJJ0i
	 OarrlavFrVZYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C353E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173547575361.26376.3592416259990659945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214db1854109a1251b1a9bb68f50d37600122a6e34d273dcc4b834586db191be
Date: Sun, 29 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735475753
