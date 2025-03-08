Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC4B185B67
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741442334; cv=none; b=HgVtredIBTZAsbrhjlDmfnoimBs7/T6kwLv+L1jH7CDkHkQgLRJT8HPueuyt+pH14SfCJz42YknHURIQ9MO0+23c1PaOLFOdPGr2vt7lwRNJCfvFXTms1DMiyWIviPOzv0IQkwW2B5mjcUvQ/IAZ6vwKsVTySR6QWGnleS5umas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741442334; c=relaxed/simple;
	bh=TtX3QITFukOw7f/3e8gB2dUVNBpTVPqef+W+aSCd24o=;
	h=To:Subject:From:Message-Id:Date; b=TkiHi0RfwDqPqh14KHOvX0DkYgvLFiMWnzZDhvhcTN6DhtxqQ9vcePdZMylevrkFBMnQDXXmtFPYnm5Ek413zrqrdnlouvteSW5cn0PHRFv22Nx0MUNuf2565i1Upkkm4AJKpAxIUNa6VMM6eJllXUVmYnjnqI17xp+WXN6urQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSZahOf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSZahOf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F04DC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741442333;
	bh=TtX3QITFukOw7f/3e8gB2dUVNBpTVPqef+W+aSCd24o=;
	h=To:Subject:From:Date:From;
	b=FSZahOf4NotyMSlXD3Znd6ZeLlPnymSk4pV+CkBbcGj5ng5rnyd180rI6yQ0Bg/7m
	 0wJ6bE30iaqfwws4sK8rOIIc2ODufrar5x8GW+BAyaYm3LOfDeuOki/TIngiURxwRT
	 PNkIKalvW/mHwoMQ/8cU4Tf/rBWsQ47HdQ1vEOXrRA0EbFY/5zWolwKHQcLpBeWfN9
	 F8BcMRkspq2yYwwvxwAU21lGxPWw9EVxfkNTKShj70L6k2el4XuHsOLAAYptZ0ZjRN
	 jKCcZKBljQH2wZdkTKQD/TnjuBrJeAZyh8QBcmDhnSuaYqAgnzXFPXT8UdEDZnrujV
	 1TCR3+s1MaVEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9CC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144233360.18259.15906469479118258614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa99533b19b39b60fa63b361ebcc689b9769c9091772fe24b06bd6407733f98
Date: Sat, 08 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741442333
