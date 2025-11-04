Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1782925F99B
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762263594; cv=none; b=LbzS9xdrXXoMYz7VAePr+/xw3/7f4fBLLRt84U5pjD/3ePwcNEUB3oE7eNIiQbMAKvCKb52Mj87EMB067HFHCmHpP4V86h5HsUprO5rL5ApCTv0QfMCf5WRTv4JUUnPNvaopjalnVhDGw54XdGuRFQ8kmbU/utOLtBiTvC0efH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762263594; c=relaxed/simple;
	bh=qQdWcdhQLY2NcLYumNnQm9FzMs40NkBJ+kagwWUuIig=;
	h=To:Subject:From:Message-Id:Date; b=DZznCkp8K5sfp3XeVYSBcZ3ZO1DAlQvOGyNuDC1kXb3G24i4rLuCTyZIp7i+mo1DldyX9eZdeyP4hmTfGigrX/gF1XGULqoLRrlliBHFPav7ukfWEtmQVGFA8gn0aYZu/jBYWmNpORQm3j9LdjpYnZknBDTdtoWrgMiZw9hrVIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDX0NXA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDX0NXA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762263593;
	bh=qQdWcdhQLY2NcLYumNnQm9FzMs40NkBJ+kagwWUuIig=;
	h=To:Subject:From:Date:From;
	b=pDX0NXA+5/Eukrx021XKjlL4NsmaS5HUituVWfSLn6bJjlHurK8a3xWR/fee+HGjm
	 VkI49JVy0QPresKYMqdArb198lXdvMhDG5G73lAEIb2VR+291s+9/TLRdM9fWVS4zL
	 jmYien8DKZro62tznQvjEt7X5wWHRYRt4VvkZjuoUu+AHCt1OyTdIdTCIAkKBudlCl
	 1Msitur9OyoQKN3OPWBgmyvjRtD8ctOg4UAC3+M1sTDCbRFOPpwjFwWM+ji60hxOaB
	 vOZPAoOzU1en3FM0/K08lf42KvF/UXBgnuMaHXRHCJnSO08gg/hbY/inY/9s8IPsVd
	 Hw/v+SshJhKWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94713CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226359359.26993.12385698482090153727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ae81b64e457c7bb3a1af96da439ee507c3ea2fbe803dcdcd87b401098079bb
Date: Tue, 04 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762263593
