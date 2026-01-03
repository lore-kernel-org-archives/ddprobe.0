Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0471E5018
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767466434; cv=none; b=tuAmGb3LY+SQ2ty38eIIiYY07C+oFVekBhkZ0hq5TGFQV9a28gt5973rMA8HXULirC1gce+XXoeSy9zjoonLlScOpz+v/kcPv99tv+CAv+6CqfYeFpxz7Jzm/3DAt2e3RbSI83ZPxdAOSt2s3f73yAtgGX++RcwdV6KGX7CluM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767466434; c=relaxed/simple;
	bh=YPrSXzQCX4z1s4EI4nwbwanez8HY99jOABCIGxopST4=;
	h=To:Subject:From:Message-Id:Date; b=H7e13om3dTKZWNkkk9lnhXXTiW5uVILalfBd3MDL4v3665ayWiiQK5UGVaAYLrDNilg0WFdclRCcnGFlcILlUtGWlY7TOeU8bzP/kJZnqiKFxRER7o5Ls9aH5Hft6LcUDvC83ffW+reO44wg7oi/9UpPPZYkmTdO/8Pymn1SWrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8VozG8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8VozG8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3FEC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767466433;
	bh=YPrSXzQCX4z1s4EI4nwbwanez8HY99jOABCIGxopST4=;
	h=To:Subject:From:Date:From;
	b=G8VozG8C+uDspfJG9PCLlT8hsmJeioQuhZ6hLlvz15I3ZGwrNABoRrkL+PWXCAE/O
	 UKUNUvrHRzcRYf8pSpr7+XK+XRSkyE3Y46ii7n9hBsjdEUANwtjC3xSTlhdw6M2ODa
	 BYnICkLO9SfmhYt1wlren9hNwJylQBviNU1fml+dwqyQP1oomL/0Jw0drmfyV+AkbJ
	 kobNeq4pG1J5pZq3UfTm5Y7M7WJZst4Aqdkgv7UjW6RnCFoK0uTTvEo+M3xO5EV4ua
	 OZCocyv6qjBBfU4We50nEyBf5tyJooo3iFz9er8YWnb+rGJ8Z5rcd0/dWGW5yMjINa
	 hjCHFprd1bSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E775FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746643357.16170.5468264129513413221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4f1d8198bc9bf2d0aee2f569f4640911dfb438a36d552d9f43820d76253fe0
Date: Sat, 03 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767466433
