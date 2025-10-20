Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174371EE02F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760931594; cv=none; b=I47Lv/t5rTeNqalGxqeuz/hbd7GvsVziXvKfGObOLUCgYqVAyOSibOh6CfAQInrYEuvaU6kD56ZXnkifI+IZL6dCzUApNNWxk5cz8eI/PYl6Zl4887u6eJ7gVrD/gSU7oBn9jfCn8AOHOr3qtSUjSE5jRMQLh9nPwkooQHzcn0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760931594; c=relaxed/simple;
	bh=zcQsXSoXYcDFPzPSjm1wfJkaZ82fgFBU2GKFTrySnz0=;
	h=To:Subject:From:Message-Id:Date; b=RHCCCBE4IJMYkLk+YkIMRkvB8fHwP6Gn/aCNngbECTiI7vO/2ACYlnvHAwPMndAonyNFt7PgbA6i+6Uajr9s0CAHNYwbh9iEpXWm3VRKBGU7hycD3kKl8urCud9JK3xJpy0hfuziAjIsUiWS38A9BsVux+UkFu3lKsbKvxb9YWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siF5eX6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siF5eX6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1167C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760931593;
	bh=zcQsXSoXYcDFPzPSjm1wfJkaZ82fgFBU2GKFTrySnz0=;
	h=To:Subject:From:Date:From;
	b=siF5eX6l1s8B+6rN0P6S2b3BIfUyfMEdbJhBs02/CeL/Z0zDp8hBTA2uQzEkhBmGg
	 6Co43AWskMqyn0Yrma3VrsdCdIo9kTLFkEMzcC6yUVTnwkQbU0mKwzVQZDYjJLYTHo
	 nkkYC0F9CdhK7d2XRpE70j+LpES20J68vw9PfUDN5YdO652HMrR0apmcMyfHLJ+ot8
	 NjQXE2r8R3qR5lhROwqRuhguFlKk4oYKOM0y+4qgGiS0rNhMn8mWf/eUT8estRwid2
	 Bspo/2wDeVIZus2j7dkTcHF3K8v3+2nkb/WURrfncz1Ez6n/nwUSYT/CDXSq/ictds
	 Kqehiuzbsnytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B20CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093159358.14753.3145320123033379541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e201a01183ceccbe125a5c65ab9dcc9a16ae027ca3a966b3773852e9b839970e
Date: Mon, 20 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760931593
