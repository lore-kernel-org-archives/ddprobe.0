Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749721779BB
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717068263; cv=none; b=Y5ZrUv1hbBCyJDKKcU3H3PkzM6QHHJKlIq3Zwxr8cSIKwS2h3foAZT6B24zuntOXn9J3qQpjA1eucqKOsOpn2+gwKRDc8OIGVpPMdRCI4Wbw1bxnx4J4a1d/3gn1T9TDvn0rx4EWZeMesZM9N6ph5DMtoJWWwJQKBSQN04zZyIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717068263; c=relaxed/simple;
	bh=1hB5Qm8qMFeQv84njIbIgSEoGxIyaWmnARjYsKdJi3Q=;
	h=To:Subject:From:Message-Id:Date; b=eLwQDxE2z1lrognN+w7p0ms0+2bz+847B7gQvpnTMtjJLr2NRRYFdi8UHnDVize5SSTjCXZzcnuX+0yvBVGPNOSiJcOy0sJIjuABUDSyaXmLwpwRKnsvRZCtZ2PZVLuMr/mrRdF7mTYfPnruaeYnX4Dxkcv29SFFzIz3sT4wNZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOsnSgOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOsnSgOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E787C3277B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717068263;
	bh=1hB5Qm8qMFeQv84njIbIgSEoGxIyaWmnARjYsKdJi3Q=;
	h=To:Subject:From:Date:From;
	b=bOsnSgOBfXrhuq548pIT2zHALSRrZ2eg190OlTPHoYUsASUEzGgqXT+TXs9lVr4T/
	 Df/dQ5YslzjdEtN0/wjfZ6OPLXRlordy00kRJkgdo2Lgvm/SJ92eKB3baXLqEXWBNc
	 mveWfCUZ9lj+4Vr4lZp+ms4AaTTNYMd7x7T6BG4Yim/LNUngHbDRwddWRHbokQeco8
	 kRTvTXqHJL+QHcFLvJmxFcW8ek9rDsvgoJw66HWJVPCdGp1jTiwQ7++fDfeCxUBEMH
	 mfp0C80oSHinlDzt6xS8rFY3AZfgTSSuGeq/MxPmjdN4B1yegyc1T4cF60IA/sYQt/
	 NvPfPBXEHTPsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F6BC27C43
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706826291.26103.16186897807004821631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae4dbb3581c4d563a695e78b26a7c867ffd293dc96d4771e161bf5506a7f44b
Date: Thu, 30 May 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717068262
