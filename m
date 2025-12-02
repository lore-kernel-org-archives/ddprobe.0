Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE1B322A15
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764684174; cv=none; b=dNWHRLvIZprnzUdlpxC5SuSBJ1OO2vxEnkNtrpeDr2Z0pon9DGlmBL3PWuFfNDtAhT8/UkyFkuyDcNCwan69oTwcy2MzJoUEuAHJ8GOWKtRryK2L1usM7RUgHSqi0Ag5bibzwEIlSnh2m80axaQbExIISPdbw8mIjJtKZGMM7wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764684174; c=relaxed/simple;
	bh=KaJ0LO/S1IMwmfqOnJjgenYusDT9MYbvIFt16iHeo8E=;
	h=To:Subject:From:Message-Id:Date; b=tDxNtSLYjQxBVVNL4FOtt0z4cK0M/Gg5umdGLT3KMlWK8WJKhT5pr4byll3JKjPMeGkOQqAQ8KPzqF+WqIgiDdK+381aSCeI+3Het1Irn06/dJOcIhU3Vw093WTdJzXudIFEddMgF2C/cYnwe8TYY/6A2p8HE8CwLCk+HHCvXqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKMf1MxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKMf1MxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8870C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764684173;
	bh=KaJ0LO/S1IMwmfqOnJjgenYusDT9MYbvIFt16iHeo8E=;
	h=To:Subject:From:Date:From;
	b=qKMf1MxWPWu+2+V62jFPwoNJvTa1x7F+sVMZ0lCetRvgdEle3T/mNm3hjmZRMEXKx
	 TgrRCjqY8e4ow4d+sPdA0FCwOmWhhs+ykMqPjdnXjDPOIs4QmTQC/l57TcLIIKSRci
	 hzOdCYz86PmKtPn0hq40i9QipxlIXjrSTSPhZYizrrN/3l/UNFfM59Y4aym4PBFTiz
	 /vAHiPziLr2KQ2+kwpGFG5giOa1qjhohr74dcVA8xpBgE1yzZXz9aUevNi97CA/hyv
	 r3EinqLwzxHfiUG+WmWMJhK05IEeWxIY1T6CAVBU5GYKc3ukx1TWt9dVzhGxduzsud
	 tF77zsY7uwaxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154CD116F5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468417358.7624.14301387644072316534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0570518d4deca830e9126ffc1bab5a10d2edb12f59be3a3291df8f8b6c20123
Date: Tue, 02 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764684173
