Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A021C9B81
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727799354; cv=none; b=QyT3JZNzp4r0MtgLWFqA6kmT/B0mZrnZTbzpSSKH0FzT3lJ0MoHfwFUjByPJOBzLu4jXBc+eMCCPF5aMnF0vinUmJtyXODKyisJxtxbCi8+47U/mJvF6kadvoJDUFHyP5PRM0bekh5sPvjoORB79DpIbrwBB0kkbFinI1cC6sAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727799354; c=relaxed/simple;
	bh=NAiwsbVQBu8kz/AO0Sn/QbX/J2/NASkGN6hHCo6t3R8=;
	h=To:Subject:From:Message-Id:Date; b=UzUfjdJ7gFBByz2awzFEUAXPfva/5iFVUT2b0Wh0t0boH3+IjeJwikhHiZVff6emh36p8ITZk/YeeGmWCS6dtaL8/3trW5xPxgBauBmzNCu8AZ7nlv/qp+Sa78XY//LD0v92WbYWJhSFeFqnUrWjBcniuytZ1bpwWysLqUWBDvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGrgERNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGrgERNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B8C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727799353;
	bh=NAiwsbVQBu8kz/AO0Sn/QbX/J2/NASkGN6hHCo6t3R8=;
	h=To:Subject:From:Date:From;
	b=gGrgERNuhyqZXFX+42PBmLUZeLkNg85Ht08nNy0L1Rsv3M95c6T0JkLvS87vlsc1k
	 NzxPo7zWgpuTjUahUCTNEd3ruj3fQb5VSb7sRAzFBPSekWvjO0oPJn6Pgn/YMBSlFx
	 XF8qh9uQcmOmFZEFphdiOhxw33+OJs7cGAfJMXW8fI/eEFBg1aZt54KqL7NtLLVVHN
	 OCaZgHEe9Ut0lBXBspUDXqAC/yX3iiZEV1ZXg55OKU2ESKY2d4ZwCYXuEfTwc5Ot03
	 UXbv4g2E9NmC7nmd1IZG7+rXqFqSLj05IHRjN5sIE7kFWFO7psR1D0Xb4Va5Vt6Ev3
	 TBHOlpR0YXvWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425ACEACE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779935359.26425.158216584913996057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b987761daf3028f8c0f671a969cb7fcbdf38e966663f92e0c4c04b6ffb814e0
Date: Tue, 01 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727799353
