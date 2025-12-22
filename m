Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C41946BC
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766432634; cv=none; b=iXxVSJbkvZNCGD6QMPZq7jNztLPRSHUZ6dvdrefTjA/p91R3KTi69A1aq+Mlp9KO3o4KVL/9Egwm5kArE5okH2xGsKlWk+45Er4JEEEo060u0X96Hs2WQl7kas3zcxmEM0ngHjobgdnC2caVXBr/rAalLa7WBKtiZKLthO6kTF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766432634; c=relaxed/simple;
	bh=WY5oq4DP6nyZxvDaKacwAmYBtXSMyzf2xux1+H82PEw=;
	h=To:Subject:From:Message-Id:Date; b=UPNcP9sykNTpxLqAwjvGYdJ9af8A88LMfHT0UlZWHrY1gpLbnNOf7QS3OLPlQEuCFsuBz0NOwM8JubVxybLv9fc8Q50O2v+WISZI7Y1wnSHkz4eNWNB7utzhbliICrDuRPkVgSZGG/KmPz8v3EasLHlMNiOEo90IwuqZ0R8qweg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJlvo9iT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJlvo9iT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766432633;
	bh=WY5oq4DP6nyZxvDaKacwAmYBtXSMyzf2xux1+H82PEw=;
	h=To:Subject:From:Date:From;
	b=XJlvo9iTgMtvsfK3LwbpKDF0w+EMda97+4DPm3xCt8UqvU/V3OZbvuUkgJxt7lqc0
	 NBTUzq6D9pIrqngGtJS8GWmWAz2ufZRwkswtVpv6yyjM5KS+kvkybfmAXkXxr2nWBs
	 rqgR0GNwtiEhz2IBt+89vDbAh8NGLUmVa8pFp8KddzBb5ALlcBk2Bk2+4Y3cFyff3x
	 6cj902MDCgTEMP9lKre2V47Ky+6BfwPyLAjWe5+xHCHTH59nI3biUd/hXpYIFPx/TY
	 RTpMcjwDHvTvwtAfCDfx5mLXdpfD1vTVrXf4D/TfnCrcLyafNhY7l8THLA16RB4IS5
	 h5eV8emtkJfmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4BE6781F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643263357.13899.8112571782472905927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286fb33dbd4f0c2bb92caffc91a182b3ea95417f5a05470be4732b1ffbad3350
Date: Mon, 22 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766432633
