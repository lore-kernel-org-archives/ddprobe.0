Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC1B1D7E5C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770576834; cv=none; b=e9sbO4u7CenE5Me75J+Jo/5CKySbwpMXdt+gKTNpIlUMp0Dgnmcwodx+NtPn19TJBQVtltwdkhmoOv/gSkKNuwf2rXbIGAmHxgOQ7lRShrRPnEXNFhI2+yKbzP1tHq1gE8Em305OfhSfCy0TFR0b/DzoIsEll9iQ0c6yPrqMHYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770576834; c=relaxed/simple;
	bh=PQ4amySVn9ecYBFc8aU1Dce/RvLqPVc6iJ8TtbRZhKo=;
	h=To:Subject:From:Message-Id:Date; b=KnGJTzR/6A35Zmd393l0z0CpgAjmATpXeTJm7+KubOg+Eq2g4892wiJjzpz0OeabQ+TwsXnSVGNK5EIweoEoe3/8xpH1jFQj8HkIi7lfuRO0ZMBYee4swcEESPxX5ZQkMb88z4PpHe3EJVkvZWw2KNkHorGGNl1uvhguZbshSa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQTgAhzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQTgAhzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64EDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770576833;
	bh=PQ4amySVn9ecYBFc8aU1Dce/RvLqPVc6iJ8TtbRZhKo=;
	h=To:Subject:From:Date:From;
	b=bQTgAhzXUqg1hwlOqLAdvW1lrm5Oo+jWALINEko4k1TQUFb1chuV6hy4nlHnbTDgY
	 bugYqcffnVfRaPREWhiWjlhRgYNMTkvQnaITAzN3JX8j8z594WniyOJFVaC02xTlpa
	 3onKuuPR6ZspnO20rqJXjwbf5PvtsNkNcXK18o9sMMe+Rawui/cBx/FV9bMbPH5IN2
	 sMQhdaR2QS9YzrQVBZfLE7gC4DQzp6sKZr8VPVr83kZ8sSfEIm7Eri250x1TjWDVoS
	 YCkgWE6bu2dPZgKAi32Bg3efWzUuVyoWITHz1sCFRL1440tdgAU4Xs3rAWQmq8UxYp
	 3ZMk1TbG8Ou+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94353EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057683358.9203.18167559302610163698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7eececa0c14f4a76826352e894227d7f3b6541fc7dfc23d6da4b8cab07d475
Date: Sun, 08 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770576833
