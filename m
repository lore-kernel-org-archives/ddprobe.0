Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D25D1B960
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732853154; cv=none; b=CZ7f/gBxwYaBkVP9WYjjKAYdp3Ioou9oDI/uHmcm/9t0Hogu1dUogilVtjzapYA8R3bMnl0X+It75mJ9L0AX14IjtrgOH/Dy8SEg0a+jr8xOKcfvQT1gy2osXbdRjWp3jiJ4p9xiiS4Rb2+oDNgFmHdiPpEUKk3mnDz1hlfzRdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732853154; c=relaxed/simple;
	bh=Ohq+69rKWE5p1ASvQULZBlB/gRFO5uJRr1d6f+M6b6g=;
	h=To:Subject:From:Message-Id:Date; b=b1YnghFXVa/6okbEp9DpsaLw8679i4E2tYdHSIrVJWopdvZUwO33pKboiaRLFek5CiGa5i+qA9Ky1wnKpAKY6214MDAQiCpAOHSCiAyuYXzXm8kjVxePFasArtm+in/FfWhyzibZ07/aQWROcimogiVS5GewjG5ouY/VNB7PRpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMoEIVk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMoEIVk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB52DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732853153;
	bh=Ohq+69rKWE5p1ASvQULZBlB/gRFO5uJRr1d6f+M6b6g=;
	h=To:Subject:From:Date:From;
	b=XMoEIVk6lSig6Lbvt52Jt/NOq1bI6QwxXjGEDg1dx7N/229TeqFitjqNtm/OFl362
	 EuHAqH8xtZAlmdg/LlMWJcRgZNMiRps9Hg3NwJRbarmCjJeHyVegGiuJMPn1emKBW6
	 7WhJ4jF/D8So/Wya/51NgOhjdaTbE6Q1N1ayGXELW0zGeKl64vhQiskXZIelimbpPm
	 Ir+dWBF6dmne3yizf+WmQb7x1j0QreV5gshZOHA+rZtkR8AzxgSzbwlpnUAdw3aJz3
	 jpsaOzzJIaEq8ra0BFbVenvgj3CoLqJdPXv4ZvqS26CTZ3mKnEpny8eWG9lbKmvxl0
	 p4UjioMPM/dWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5020D70E1A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173285315362.17935.7277638252036905731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96f98f9997027e94cf480b3b045acab8f1ddf808722d2338fb9d0aa36983b06
Date: Fri, 29 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732853153
