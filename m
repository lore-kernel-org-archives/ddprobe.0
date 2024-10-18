Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D76420E327
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729216554; cv=none; b=go7MX62nHornSaaOX0GH/bdNGdpCoTVU2Z2MX8sq/CQb9kC5e9CYtDMMaQyIGhNVi9EvytlXuNVHr/5lSNsmuQn77Xg+P8FYmYxDukqGdxVlXWJ7Z8rzJYs8oY/7sKaYc4QsRxhluHu9dGcZk8phMDX9RvoiGiFcYjGMmO3jYrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729216554; c=relaxed/simple;
	bh=uiosmcy8LvpNPEAjIJnQnBl9u74qWh/keB4OhUxj+XA=;
	h=To:Subject:From:Message-Id:Date; b=Qe+rAakHchtfD3JYHSS/PErA5IfkSouQ28BiYqKAg+/O0PnwFHccdDsuanzSciLdrvkRSBAwKaeln398WTu0713oBOfnPLYU4BXoqw7Z/iWlG+6gnUthqVLHk633r3O2rwh1oJuMvB7HrsNeG5KOtlcRVeDn7afsY7YvVITW+TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRpa/WtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRpa/WtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9275C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729216553;
	bh=uiosmcy8LvpNPEAjIJnQnBl9u74qWh/keB4OhUxj+XA=;
	h=To:Subject:From:Date:From;
	b=tRpa/WtIu4ZX2wUlvX9gP05HG7uF4SLyiPqM1GfEQvEHv/xIT332Zo6mikWqMPehw
	 otb5n8k5L+v9Ki+rjPBmi2O5Rw404sojr11T4P0GHQG8UxPBPbGgjtnWE11jQGV/MV
	 zS+xk58KEnTFGmYGS29U9lMZDSgCeYcN6VeXWoUmqGq3dXT+zKttDH/5thx3qt+vHX
	 TVczQt483r7VtJykfdfYRlBtHzSQ7gJX1sJakdFWjT//gqqT6RhCErtvPsWSpsSsBa
	 jwiU32EBdnZLQbxqHkZZbW0tTko3kwGlw/cLKrNwSo1m/NAHbByru+qOI5GGFu/9Px
	 k5oF5a3w6HDUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FB4D3C541
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921655359.8133.5438871036134555926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cda522e7d6372a1fbfc6cc0bc6c9a433e29dd14740a65b69cee387a1faf033
Date: Fri, 18 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729216553
