Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B16F308F0A
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759400394; cv=none; b=ctSwV+V7+6fdPgVDUXmvJflni2TgDs2rBOjpThlMrfFcXyMMv2FfFubnWYhyLqA1u2ftx9OljQtONGyhz5LiIpA20inzeHvRbMSTERU4IFrgfhrV5HkheuXeWe/9HOS/my7W2ujP6x8h2ka+fBwPyHhMLX3OgMHnn6wSfaCqHw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759400394; c=relaxed/simple;
	bh=1TrxnBFX8gBocqspZmjecYjCo9D/4lb2iq2tgaNs8SM=;
	h=To:Subject:From:Message-Id:Date; b=LLEP6XEONMuOhUrr0/aoWcrSW+hxOscX3ta3UldwRX/lfPYxK9bnkPbHGgJtKN08jmy/UgvlqvaiTcQriQf2E375cyu6FYRl3jIjwBJtTt/M1mo/RMoCUllmCbXpCKFpqeNVlrc50z52y/bVZaansy8feEjSUnAs3Lg6nQHmnHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7tDslmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7tDslmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353CC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759400393;
	bh=1TrxnBFX8gBocqspZmjecYjCo9D/4lb2iq2tgaNs8SM=;
	h=To:Subject:From:Date:From;
	b=F7tDslmg3q5RB7MX7mzJ6GDmxvSSEObpAj1ru5XSGtJV9SkzGbu/LrjrZIpoBVbbC
	 5GViUiodWsBL+/7XRWNoJrNJ5rHJKXbQAvHIlnq6303XtvKUpfxYfKIl0nqiixYGfl
	 jYhc9UV4cuSbHk/totzg+jDX4ZUDzswgatkdKDY6UzL+UFYB/0WOaC8+ZlRix47jnC
	 9OgSj9D5xfD8HUkCaeoSYtg8vKYu3ulpX1HCprzXBRGO0/5yhmzthUhlBO7Nuj7x3K
	 w5pCZOjoXm9QyocouULXyByok9OnsidTBPWcIIDTkMPjETs4ORYb4KP0uQ/0lo9Ylv
	 Cn0WY4+VcnnGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310ACAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940039358.17803.9087800019131517970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867b47a99b3d1e5fe1264b96ccbe180b745495e4640ef99a4f054d6627c47112
Date: Thu, 02 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759400393
