Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5393F13AD11
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718642903; cv=none; b=PplHRNkytUJrsP7kRHHIyfsH/vpCYDflEg71pCqAYZqKIEpMxzOg+DSdv8fVhibBpu6XeAwQy9q4lUZoQ2gd8ElcMFJlHCFIUToMVz7CXtHyos+apnullxpaX4ADNS19SVwhaBbOQLhQzIAEVFQ3w7odpAmS9B/1pvWo+BkHzSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718642903; c=relaxed/simple;
	bh=2JFeBgJclxQk3gKXuu3hedX2V+C05E32XgJ/LbLzO7Q=;
	h=To:Subject:From:Message-Id:Date; b=Q5fdTJ31WpeBZbZ/fEqtauB2tIENvl/LeelUB1p98XKD+z4KipcDevEUWS2Nc6o6IN+ItJUIAuh6rdGlnKHvMiue+tY7mNC3P2E11tbZdKMK5SrNJmcUmhLOltV8UejWr0QWLpv5GkMfmQSC/SP+oWnFLLkVhFOjGtErJWU7mz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gqk92sip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gqk92sip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7E3C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718642902;
	bh=2JFeBgJclxQk3gKXuu3hedX2V+C05E32XgJ/LbLzO7Q=;
	h=To:Subject:From:Date:From;
	b=Gqk92sipvdhI+w1A0744VTymJG3cfBY8HQxd8GfSiijYqWxFwzx1KZwfRxmjGG7uv
	 TkEmuGl/VfcN4ocWKR1VSIvtlctuko2vauYpXCVuoWS/IBfTl0DlWYf/Ogq5bMC0+s
	 igT9dDQzAvbve7sb2z04yynSFSRH1QrGtUYws/w8mEWgWVPvmtf1ktIK2MwfWjmPQd
	 8+guMYJNqJSjSRR7FyNUm+Uhbm9TbebQN3Wi7eFR8nCMgbC+J9rZp3m0H3HpjQHyOe
	 l/tSsImy+sB3J9EdnKpxWWgB206k16Q9MjyM8XBMknrVeovVyyrmKV2wRYpN+97B8B
	 mdMsUkY5bHDfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9509C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864290281.4493.380541092863644652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60077f7f772004877734805c7f93e18ae8ae4e7f90a21ba215a35d128ae93d58
Date: Mon, 17 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718642902
