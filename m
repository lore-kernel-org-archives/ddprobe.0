Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E71C3161BF
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782050194; cv=none; b=ootlde7aFjTgzZP31T0VNICcj4jB9u4mx574nemgLEQvMDEfLuNyPAzpoaj/FXuWchzYwkl4nDjdg5awvdYXgdkTsKM/5pBBJSNPJA90Pi2XvdyBOEGpYMAPU5mt6dZuPLyyxb1UXclU83Vck6REtfIhnwumiV6e/H5p5fN+fvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782050194; c=relaxed/simple;
	bh=+QO2NuGLTJq5TJUj8yuROTLccZq8eIi4JpVty/HjTZg=;
	h=To:Subject:From:Message-Id:Date; b=cbn3jfSmqz3zhdM0x+0K/oLjHuxE6FyffNxA4gvMuinsUYTYSE61MF1aUi2MrLiu9YDcALHXSVswooalBGrwRWnErYtzoqSHW13kSUW9n8m67AzQNmSvuYdEw7aSENorsoSoMO/zRLkJXA8wm6CzvOtGBQAYJaSc1KkQdFYB1iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi6fM5ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi6fM5ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8CFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782050193;
	bh=+QO2NuGLTJq5TJUj8yuROTLccZq8eIi4JpVty/HjTZg=;
	h=To:Subject:From:Date:From;
	b=Vi6fM5ll9/MwpQojtpyamxe4s8afbUP82tsE4wmdCmyPEnKxyrfv3jRKrfHc46oIK
	 +sFNEqxcB+JTvRwik6w5XwwoeywhH63ClVdIb1l2hPYE50acmCiYJU47JKnBE3/WNi
	 VTftT3rQPwzSzLb22Ib0k7tnhzRongpHYCNQ+OITRF+1qMuWw42F+VaBK6yQuFzIuJ
	 93Db+JT7jkWxWilWM8G/UwSil/BpIN0B+aDQ26jLbMtHh1ucdQ1LyRz4ntNfEYPhX1
	 peCHNqyUuRY0FYGAOwi7xDh3/lttfiBJO6GknqclotaPZvENzgmROhqtfyrnq+/Vij
	 1PzvP//5Xlh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3723CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205019369.2820.11274025183817705278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b62ce0f92703a298802921474be81268cd5e95d24a23c9f9dfa19b5b566cc9c
Date: Sun, 21 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782050193
