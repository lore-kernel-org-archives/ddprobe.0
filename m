Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E70F28691
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733646354; cv=none; b=Vt5ulb72emo1RPn+2SqBR0nSuG9dh29FmHisntSI+DtIAw0VyiVHIlr9IwldiPGiWdFA1TclkMKhCygttoEP0od/DDkzaMvRocWFqdC526WzOpxqSzYByVPoqX50gjCUuZq5Fz1yRkDM3jvPl7ExOM82PMx7T0ADyhagqfX28js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733646354; c=relaxed/simple;
	bh=B8ZF4AOACVZRZHOFhla0l7uVPaiXhUIHdCLrwN5O0Lo=;
	h=To:Subject:From:Message-Id:Date; b=Zv6E5h+k1jx6o9pUt/QQKUWZYl4IOioN79xKDCNc02s1AJ5Mpq17UX3trshPkNazxbYGXZcDbG4rkzmMZ7erZ6oXpgQonpWY+xUAfoGkzYVK0P4lKLF+ZexagM+1kS94yjBIpIOYwIHDw/6ChGJh/tPpsvCawLdFmv6uukRhRUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIeqkY5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIeqkY5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DD6C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733646353;
	bh=B8ZF4AOACVZRZHOFhla0l7uVPaiXhUIHdCLrwN5O0Lo=;
	h=To:Subject:From:Date:From;
	b=VIeqkY5eWXhHIjMRyqlmiqpsk6gszRQQVlxtaSM1/obnkcWDP1j0KA5ULzlEIU2BC
	 1MQleXAD43xWd8f/YXBZugpRkUjIXYnRP6LuP7PelzZnU0E+XGRdQgx0Lp7Qq2QNj/
	 Ze2K+kauSiV5PiHcRdELOsKLYv00Fpt9TYQcTXMauzGTn/Qhw8U6VtSp4KKRo49R3K
	 R9GejIjYs5LDiKeD6jYbmadbjJ7IwwrfjSbJqMReX8nAjEED29WvLCdGIApfE/dAv9
	 +JWmUcUe0m2MtT5d0QPvqOo7vkLxgGRCR+QV6sVTgKKosQ6v44U0LdTzAJBJDHUFyG
	 tVtG3iXqtN0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC34E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364635358.24335.11332894052108789428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e93a2e544e0f3ad1d79e8696d283ebc3f412a593dd1c89ab16b8e4a0894023f
Date: Sun, 08 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733646353
