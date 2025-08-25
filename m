Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE6521FF4C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756087194; cv=none; b=KaSltj40hmUMNbqsk2HNBOqXXWrx8DuZBG83AfRes5SVGicX+5JCpD90fen33Mv6nVHqzUA4fMCXRwugwrAXf/jBcU6SUrfIUagUYpHNf8x4tNS4gCT4wV+iny9GxTtxuRSy371wC6yNIX9rCkM2/RHyrqTsTQWnY5/hfUpxehA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756087194; c=relaxed/simple;
	bh=D6NSi3e/WFSSgYeCTfnqDmgpdyzZ8+d8PUV2uaK7vOg=;
	h=To:Subject:From:Message-Id:Date; b=lasVZX7zKYG8t7dndDWUh48UVc+XiqShdH0P9551Aqe6fdlhMhzfqF2kjmD+HXqwbgB6V5DOtliINRZQ/DP9OqK5yX/7/JbONyehh4o59RLdorAtIEbHJ9gR0o3zbCI+hewkzuXu5Mv38rEra63AjlR1uGl7sUOlFaR8Chx+ekA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC4Xm4Qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC4Xm4Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C709C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756087193;
	bh=D6NSi3e/WFSSgYeCTfnqDmgpdyzZ8+d8PUV2uaK7vOg=;
	h=To:Subject:From:Date:From;
	b=AC4Xm4Qa97cM9yFVJiPFYu3C0EckJDFyF+i/PoBGJc0R92vNgaAO1j+pe3BxF/1gz
	 G+JyBwPYT81MsKMBb6nd5WFUTtfShZEParEuuvEU23dB8lWFHjDC19KJOQO8GrfqLJ
	 4NNJeRxdPzDFgzhcgq6Gzi0p3assNEdUPSQFjmd7OXHLmlqkEs+4zYZWXYc5MzFKlF
	 iCB2nqxrf8iAesnZWuE2oYh59AXJ8DADwk3vvgYtYEC2Wl1unkYwJCeSFwvh86yM1P
	 IfGEQVJgl8uLCfQ0supu67qhJ4Fc6jy87CMZ+rSe1kjP8iGGRG8ZlIrR9gCXfnY61F
	 7W3jmSKlwIUQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E884CA0EFF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608719357.30596.2114370615332365749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c8d9598c7b12023159460203eada6597d7c83cceeb2423dd11f15107d2593c
Date: Mon, 25 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756087193
