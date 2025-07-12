Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780422338
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752297594; cv=none; b=N4GjqyALBwpSFWNxJtaTC9QNMY6q9XeeM3EXgqWqay2LVWXL/RscQObNNEaDe3DvTQmYrS+cReOsSa3lzPQxBs0NQK8GhPjpGYkPnZh2S4OVjgg7glgG30UUvdlIoDYJ8euHTkoHR99S6qebusbUrl/oQBk7dpt1dKcR1QGEWH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752297594; c=relaxed/simple;
	bh=fhrxQ+GFSswPpzzqZEhI1kX5GkVM5HopeQ/m3jrVQj8=;
	h=To:Subject:From:Message-Id:Date; b=IqV7fubcs+ToLLn3fVpVVPbKA+OKG5LRIC/KU3uwuAYG4+uteHpvhmp/VQRV9Q+b/k7RAlmgMli+vZWSwbrb24PWKBcBCPMWWWhdL6H+/Eh3i8sV+zWPSc2PBctBOTJcV4h+lXtr1iERFfGzQohf8KTap7/hGmpRmK0cexOZ+8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvCcjywI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvCcjywI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B98C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752297593;
	bh=fhrxQ+GFSswPpzzqZEhI1kX5GkVM5HopeQ/m3jrVQj8=;
	h=To:Subject:From:Date:From;
	b=dvCcjywIlO8WpXnTKJMNNW60ZpC2omxt7Bi4lUU68SQ+bdxXkwu7XaC5h2W4+eHKt
	 fVvG9eBM/MVz2E3f2gdNh5JSnCWjPIVPY2+SF6PmEL9zaQotfyByTb3U/NJAj5PXdE
	 3I0ChT5357YRRMAJKKvPxcryAVf0LSFu7xvwoejmWmcTP2bm7PimsdWHdy0wC6qq+F
	 Vr6vmnP4r3i+FTn33cGtdUIois4E3TmVhYUXfTDZDW9Q6cPkbC0f71I3b0c0+qj3IQ
	 QHZ03yt4AWetxrA3P2e/mheDC8EC5qLnLlsiqFjR39mJZMJvTKsOMhgbd0fp//8uGx
	 mNcQjiknzN1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F9C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229759357.10909.16002126611730317547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13fde2ec428cd49808c92206d1f763d041d29151d7a76a4feee120a57e10188
Date: Sat, 12 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752297593
