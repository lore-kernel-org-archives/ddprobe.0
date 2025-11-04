Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1591632BF4C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762265394; cv=none; b=CW3FrfjKCdNWiKhKkXXGHKYRYXTTHX6W8C+SvjgdzhkgvX7Gn1gTVu/1OZEeUg3jegvNoHjSknBmt9L91GEOwlQ7aZlxpb0yWmklVDRdeACY0O1mnohWdiH3OcA0fCfIRAQo56k8dp9t2vnJpZXY76ac4vRFXCzazcbwm1/Gs2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762265394; c=relaxed/simple;
	bh=7qETDznMGNMW7msEvRFBczahVLGSBEWXChPOrnuUmVc=;
	h=To:Subject:From:Message-Id:Date; b=E42nOrtcCKuqEWnD4VDgtnj44H1bSxMEYR3WL07/dfLZ1yLz3CWMpRUgOp8uhdTkeEYXkiINKUYtHbXAz64pTz0IdC7MnNrJlL8OfDgd7mnfD1aJ7UNHy0TLCu3wOAHyJdHNagTrPEKiClgwBGvBj9e2V79NlAoZKS2RNbtflao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbOR3j3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbOR3j3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0413C116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762265393;
	bh=7qETDznMGNMW7msEvRFBczahVLGSBEWXChPOrnuUmVc=;
	h=To:Subject:From:Date:From;
	b=hbOR3j3ssOqdYwraoZD5DK/AKWTsMFzmqDkyC2wadolw6qEyaTEJkF9ovWz5266w7
	 iR0M7an/qnouUaaQZSIUOWIYc8VqUwCiNP353Srkt7xf+hUXVFAItFwTOHggjyEfEc
	 bdQwhoax8zGU2J9nC3qj5cnatl8m7EeJbApH5HrZBFS7Y5h61tqn1JqMXIl9BmdE3h
	 nzeVhV/BnYLe+SpVkveWcOecl+LDGObcoynAlcN4mtz+p3GBQ2BN1AuV4z7AAOEqFB
	 UiPkCAIqXRUJqVFnKj2ZuI7ICHx17KQTybwhpzGEasQ5nJk6GuG863FDUQsCuudTXp
	 Obrwkt9wly0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4ECCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226539359.5317.4348395531768526274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df81868ee90580a1c59bced69ec50a55871ce0653d1276323e56ddd5959d1e6c
Date: Tue, 04 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762265393
