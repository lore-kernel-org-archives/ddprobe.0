Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACEC421EF6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783432714; cv=none; b=hOC0UbXeH91K15hPjF074H0VyljL1oqTN1QzAVo149DBJK6CEjCeYLWh3mc3PjYwlrQcPXtJ1k9soQOoMYNqJdT7DUmYUDBnXFkd3u+/bjGHp9fGkNgfa4f0A4OG+hygrb/1Wri7+9XS2f1rj12aZOYVYl5tCLqJO1euSUX8UJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783432714; c=relaxed/simple;
	bh=+nGBJx0z18BRrNYrFg2hUdX0XpLzi3WFtx+s9UvnpZ4=;
	h=To:Subject:From:Message-Id:Date; b=Ze9RhVs6L/JCZuFg2cQVXdRUqVIxwK/eMR01AJPLX57/d+UWcFrQ/p3fHTu3VntZS5EBFEofVKOVjJ7ykgcXZbbujso0uffErV1OkyaXVEuyHkQ65mxZFCTm+/jrKIkZZJCYLwUmPOrb8aIeopySFQ1d3TnaKCBAyHMFmjl/p0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpz27mx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpz27mx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D013DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783432713;
	bh=+nGBJx0z18BRrNYrFg2hUdX0XpLzi3WFtx+s9UvnpZ4=;
	h=To:Subject:From:Date:From;
	b=rpz27mx2gPzMEqewIGaRXqIWUKp+SJNoqxJGdXGB9GvUY5OokxljyxGfLanhyQqfD
	 Xtw5PsyWgxtHX7anmikgaXCbK7Am0K8YW9AKHmFtlTkpoiWdUb5ZsVPqwRnGR64kfS
	 O+n1jL8ySPSAZkx9w5H4hmc66ZOq8Y2lzrQaICSrkR3vWKbiVrlXZLOn/RLxbBbU8h
	 Fvo77k6EZLFyDLcDlgurdD3u7cmgWMQQUy54wFPC8ZqtK2zFBSyh0ziqWYsHjnaTUZ
	 Fj16BK34583CV+1FWBABLLnwBJh2WwtswjSmQiKxSn0XjdFXfMVPdlvrCY+dN7SKWi
	 Ma6piXpO4cgPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE438C44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343271370.27107.160102681943358617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5466855e42959f2915a0ef069f5c65b2442dcae7b0d3d1be770ebc8bf0b724b
Date: Tue, 07 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783432713
