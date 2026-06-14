Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB14175A97
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781395594; cv=none; b=ULG/qzS7qR/nhv4NBeBbaKM180lKOOFGUCd/R0gXtr0QrmhI5gUs4uSRSei25gGgKxwdLkz0Zs748XdNcZYgCdEHpwItmxGdArYuG9KvrnUByow4VjxH2vyjqxE/tpraLCLIGPFhQcFvwYVtzuB+7T55d/Sgli+TCuDq020IqZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781395594; c=relaxed/simple;
	bh=nZGCZJM3yaF3Do5zvmBaM/uyMX0Fl+adIBQ/zxNCvbg=;
	h=To:Subject:From:Message-Id:Date; b=YqoP+0xintWD+GCKt+32K9WPGa6QpndK28gAyBu8XWGhEiNJJjpnTI4inmtnNB//1CmoLquWAvWemVR/zpLusgygoAXHHhZYpHqoexTKjh9mondUePwfgf++Xs6yUlN+S89Tmpvl0anbwHsbkcTh+uqgeOqMoW20MtK9MP/hC88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsDXVrdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsDXVrdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CA6C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781395593;
	bh=nZGCZJM3yaF3Do5zvmBaM/uyMX0Fl+adIBQ/zxNCvbg=;
	h=To:Subject:From:Date:From;
	b=FsDXVrdd1BfIXK72eoFwtXkCuwJ+EkFH8kthmDJ5LULqGhnq1dqFhY1In6eUMsLgt
	 y/UXMs0Cfm7mCY2ZyawSCYhAGskxm7vG5lHLYOACk8W0fBPO1TWiBemgiUiLfVEgXe
	 va3FJM/LXaFJQQaG8cN6NGuIbyJpvxhorzFXf9sZ0JDUBvkF0wnica6HaHuFmgWqS0
	 nCrBM/a83l/cuitc9gj36zjoKLxvB/okcNrGIKpeUtdorwdhYnb7doyIxkB0qyvOPq
	 K/mZsgFPq2ja+JJQxaN7o2rg+2tfLoEpUGf+iEgWgXEnnI0OaxhwYKDRRvik/bg3LD
	 lQahHhvqFvSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF30CD98CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139559368.27429.4586285512916425444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd09fc79dd91f7503a44b747355b03925d16788c8855841afcedc14d525ebe75
Date: Sun, 14 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781395593
