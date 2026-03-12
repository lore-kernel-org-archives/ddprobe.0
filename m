Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F13377030
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773348294; cv=none; b=kQVAX57RbyPvF6/8m4JuXpRphudNvM8SCwXC4TKKx+XbjZDtuyWgcOCKWDtNA5h72ACfANtCQE4nEWvfqbD2wK8PlwUStE7cUUkrCn7DgsWh6MiwHctI9umuzhMMrfb4ejdlgfHncLENyZjfUTVlxNajhHIdsBkDAB3Ei/0VKtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773348294; c=relaxed/simple;
	bh=hWskXklpOi+ajejUcu4vPJvrjeruf1X9w3v+K6bI2Ls=;
	h=To:Subject:From:Message-Id:Date; b=NuWq8OxKnPJovRJ+Bkg3w+cnLdLAWDbr2R141xXZYZi9hPvZueEdPKzEMBPhVHwnll6TG4io3Bb26Dp95oY/1TT064NeDQzezftxJsdse7rAGUpOV0L1BbgfpiqgqA1n7jPjffNCo26h/PEM25/SyuakmDFhxIfN3ExqmcHwV+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZmJgprZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZmJgprZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0299C19425
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773348293;
	bh=hWskXklpOi+ajejUcu4vPJvrjeruf1X9w3v+K6bI2Ls=;
	h=To:Subject:From:Date:From;
	b=NZmJgprZU/A61jzvLlzu/Htfi8P4OyBiggm1ky1NNA4AIju5gv657Cv8qBxALRmnq
	 r/PcFwk0BhEi3MY774f7tkpJr/qiBBNTfiu61n2xUmaQCMwgUaxNYA4MpEie2NXRpv
	 RNK+xx8tyaW+7TcyZP5GVTkptyjZheCYNs8qaBfojIB8CeD1qph01jnPl0XkVs7q05
	 QG++WjQVZuz+nBoFtr9pvuFnRttkZ6Qv+XCsVK531Va7HGPDMe54u8nJe7kBftWSat
	 lsBQw2cRhsm0zWOGGx/M3kmbs1P8RlTOTuMRpwIAKnhgazuwApVyVNCMBZ6oQw3Euw
	 sGhSdkhN0hBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE50106ACE4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334829357.26587.14451880634156466123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7312da41f59111ec05732c79bd0d0d621c303692af09c1df36795f6579b077ca
Date: Thu, 12 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773348293
