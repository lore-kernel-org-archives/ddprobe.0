Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB3C27F724
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762475994; cv=none; b=WujcgtTIEyO8iDk7ZkGSnwvGbX+6Y6880o2/4d313JP3BrXf2QibrHFclJTumiU1Cx1MU3pEVQNNwzZkw14S9PbEfx40UQT6quqxYLN1uoN8hNEp6hCwCFHltI5UI1hKMTbZWfVjXVnfiV6ZGhah54CZA+Cic7kDjrQedllXMIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762475994; c=relaxed/simple;
	bh=y5UDL8xO40sLf8Gn8/H2wbIBC9A1W3bl72WuglpjOkY=;
	h=To:Subject:From:Message-Id:Date; b=hzMfs/zma9gZm77K3vFMYZFSRPzR+TEq+HCDiwqKFYIb2DFAMM5ZKDnQAw/EsdwR1wYY1ZPGC3m3i+02BlH5FgLNxS1SPB+squkjZfDn+sj+ePtYzq+CjCGpBjvZw8H3Cc/akwb2/FYfexDPJWCGSPMKqLB//xak8uhDY+Qp8/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4f4N8Rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4f4N8Rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A641AC113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762475993;
	bh=y5UDL8xO40sLf8Gn8/H2wbIBC9A1W3bl72WuglpjOkY=;
	h=To:Subject:From:Date:From;
	b=A4f4N8RvlQDEGBhwEjh7LPYoVH9y/TzXJgfakfaL2X0ger0dSfa6rtmXU1T/udvdh
	 RihIXEVEyy3cziyvM/+3eXGVg1EEztHjw4kdlR+1UaCetmxN2WT1qrgEiFo+Ro3Yx0
	 ukBjA0jAzuT25DQBdVy/XILVVorklC64vEqneB/b2k4wcYqZRtdXCWhBbNeX67kAP8
	 F+equicj0HwYx19n+SWNZ60Onjv6IaIxBjLj1Cd7Y/N+2JTYTFaLBQm/Wp6fZRr4UH
	 5JNg0aURxjL+9+orOK7+C0Oo/4aa0Je4Nr5Q8jL5ZFE3Gdnb3PbhXjKWYD5Xc/VT66
	 ivguMKDuyDs7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664DCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247599359.5400.1468728204250874296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b62248f1cc4a24a45f3db1428d73eed296e731b491874b83308e368341275db
Date: Fri, 07 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762475993
