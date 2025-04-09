Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445328BEA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744239594; cv=none; b=Pyqv9CMn79b1kBvH3zZ/TnJluX+sUgGnP97WXYK9hksjFTf4jb25Sb+8MrttDasAE84l3AsOQliFWHgxc8Ur6ZwvFdi8Zk92okRxGTPaZoSchoqnTuK11A/uqnj/f0ifRxkox1ciZTCQlsGtwBZD/DvYuVmz4ZgLkG0nft2Ky+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744239594; c=relaxed/simple;
	bh=Qh1rB7mN1hQ1a7qs6/FcFepHlRzUX0jZq0c9UdzCb1Q=;
	h=To:Subject:From:Message-Id:Date; b=VKF+bFKnpqxNyQlXA77tBXri8ZtxYwbw4V+CdESL/1VF9cv1S4ExPOApnz44MUGkwrz2fTPGeq+CDhk48HrSGiugz1BV18XljA9GDJwZHZgxYeuqHC8Ooz1qz9xAUpfwhf48QgO2H3f/WWrqC0a4tjbGivBUCGiwlY7/3C71UGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bY+WQ/Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bY+WQ/Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1824C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744239593;
	bh=Qh1rB7mN1hQ1a7qs6/FcFepHlRzUX0jZq0c9UdzCb1Q=;
	h=To:Subject:From:Date:From;
	b=bY+WQ/Qm6+JUgX09j21Yq/9TBCmCBmEn/luB0qvcnHT8X7hu1jClTsOTo0vsqoZZW
	 uFtSRFONjOf1GTyH+y3LfO4Z6UE3T0Zo4HzogxRkP+K4/8KEQOqqN0pw2GYRE1PP1W
	 FySkaKccwp8P4dwfEKT3eANr3W1IRTrX2gfkP6d3VwJos/udoLCaXyfwgRdf+S84X3
	 DurInLqjS1Zi1WfUFiZxU9gd5K0uqO6jBz+NhUFhbEMZUWADSB2XhXmHjPMKhZpJJ7
	 TMs1iacSyfQI7ERsc0TqkWJcdCOrWGkhgRSZRlvlKq/NeIw+EyHFGH1mxsVkmLiniJ
	 msn3pJ4WMNWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8D0C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423959362.30893.4231688615213451892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64966feaa9c3a74c99d8606de2af6475ed5243e7bd79a8dd4849271f7f13bcc
Date: Wed, 09 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744239593
