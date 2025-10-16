Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187DD221D96
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760639394; cv=none; b=IiVqxHiU4cLUaG/VTICOF8W+KUbnrRv4mYO+fRWl2jHOtd+JINxxqOr1EO9F6pWlHJbDAMLP/AsEd+W8jL73WOgmqfLFdoCJz+mf4fy1fwB8gjLV75JY3/k7TKaOtVdPghvajdYm/anfbEP1p0INURIMl3W/vR90z7XSEVvxAck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760639394; c=relaxed/simple;
	bh=0hTyKPolXQpH6FQ6kvdq0MNNp2k1JQsvzlnxuAELB9M=;
	h=To:Subject:From:Message-Id:Date; b=oD2++1LemUlngZlrstzK7M7Isf+Wg8C3n4VPcdEiHLxKWyy1J4pFlznnHK38I8zGwseZXF69QerZhgrQI+GGguk6oPvzdaLhsybGKcpdDPaRaVKKLzzY1KP720RFlOXf5ctV8cpi8l9XYSuIVRa9slUDMl8ema2U594Hh9eG5mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s51wxAiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s51wxAiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2935C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760639393;
	bh=0hTyKPolXQpH6FQ6kvdq0MNNp2k1JQsvzlnxuAELB9M=;
	h=To:Subject:From:Date:From;
	b=s51wxAiSY+D7nhaS+3/05erraHWjwi/NrNvrn9clcsIUOtrxxpL5gIEJHO3ggAJjL
	 X9oKOTnso3bkiV8UmMSP+oF8eL5feTvTlEDitPsggufKqxYp6uNuQgaMny3y694/FY
	 Oi7FyrjuJp+vUt04gwlxdhL1OBcZ/pfKxEzMpxtoP4ddfhR3qYyZ3x1yOTdi0Es5E4
	 R067PpTxqWmj766jpXSi+GVh5kd/JTlq0n3YgC6Opp34UJEA9joLkai5bX0uTnTLh2
	 /Ti0MGKwDMhjE3aKRLyyz9vLr0spFQ7DbvCDmrIQGCLJVsV+Nh4VOmwn8DyRnP7zPs
	 5STRO9neH0dhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90444CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063939358.5364.10079351287012158195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e4c4e9a4831d1b0d567aa57897664fa767d7a7b7b8e4a93db4460f9ca20e84
Date: Thu, 16 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760639393
