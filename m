Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9810328243
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768275834; cv=none; b=p73V4CRJhN4mejtVkSw0+0bbem0s4Dkqs/7p8GWSTCh9NtNF+uWH1B/mbMzjHemgdamYpgzmdhhi1lkUn6CtuzYngrLW5BLgeosq+wn/NtxZkUuGSC8dZ3EGiOlp1go+Jk1At/0l1Rql2BrNArSHhLLsVwifK043Fjuy84TpXhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768275834; c=relaxed/simple;
	bh=CSv8rNuEIzSCZc7ad0LYTE5l4qWQU+ZwrBn8Hj6ocxg=;
	h=To:Subject:From:Message-Id:Date; b=Zq8Mj7W1vnFWweujkQcfMe5u8cMtXhJEUZcHOuEhgXynNTXkR6DdKB6qqMoex18g9mj97LtSshpzwbyHEMKRmYrb5/jM+IcxEFodGK6Ka3+WU32TOIh7cFJakHPzbv0aINtLVZSqPXSIw0zV2k/kTvicxvkfiKZM5pS5xKvgMEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwxeOngv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwxeOngv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F38CC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768275833;
	bh=CSv8rNuEIzSCZc7ad0LYTE5l4qWQU+ZwrBn8Hj6ocxg=;
	h=To:Subject:From:Date:From;
	b=mwxeOngvwsSmfitkerq38RiQ12IIp0eEIjNW3i8nyD0doFVsGjmKxPC3sl6FOF5zi
	 YgQ4UYPEwjUKQTKl56m+vMuNwpPe6xbC0o4lTGhnhFkRfElMnJls8yS6LMKCGsefMH
	 1lCyeqVHsI37UxPZZ7zBQR04aR9qhoNAG1Hj7YPtIjdunCB9FGrsxcDdOH0MLdEdeH
	 wono0aYzLKZD1oNd2Im2BWa4RQtvMjpoKTlFX0Eq8yJdjZXQVAa6VfM6bzfo8P87Ew
	 mUt6wd+Vq+sTjylUsBNBMZb4rCSuacIhV4ClUkWrLXyU+8kPTcrkzVf13Lao2tLeJi
	 BLALxtI0SqS0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E15D29DC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827583358.3995.5996348340828609904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20f648d3fca4bd4f681848f2285354bf5f22849a0b1e4b2ca8c6cb49775eaaf
Date: Tue, 13 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768275833
