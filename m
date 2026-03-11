Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A13634AAEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773266694; cv=none; b=P1MD5p5t1ljwsyvChE74+7tk7RTrjaRbwj/D+l9FrlPsAu0pjusrsQAWvSmcz4UdDFtOPyCcIAQLk/XMOamWJ/KZsmfbVVG7EOHwRMr09hpxutamJ8SH3ERONVDaDB/7C/q77Yim0T+BwIRlHtaiukPbi4nApP38G98sLOYLBG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773266694; c=relaxed/simple;
	bh=qV+FfG7rdP7oE2rBw+u2OA3N7sluv7QjMDXMNthK3v0=;
	h=To:Subject:From:Message-Id:Date; b=sqQC0wc0vLbIGoJ04j62yEg5YQ9OClaLtJ0wT1ETg28cr/P1OScrlIWNQQGmwMznGPPQXcBmgFYAr0ti5Ni30qzBDnwwKsVFE68vFzqaYdUkOuhKqjtU7xiV6VLqZPZBKnXeq3KfsJjX9zxwvR74INB2CQIcDzA/RqeFm17YElY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sfug/mv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sfug/mv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF38C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773266693;
	bh=qV+FfG7rdP7oE2rBw+u2OA3N7sluv7QjMDXMNthK3v0=;
	h=To:Subject:From:Date:From;
	b=Sfug/mv3ytbgIqd9lfnkB6qCYvjfExxCxFQOr+tOdRfq5ZpqORlqmbxkOyXqrmN++
	 UMNlT9QaVezapGODh7n9fItSdxi3OjVbxut9QCilQy0PAqjt41cLeMtaOv1h9dTbKu
	 mYmjI32idEZMeQuB6fHMiSrsntUvQItJpieIv3Sm3AFgwcCGY8IgxbngbhKZJ161Yg
	 kulJ9mA66N2ToJ3/i36tzbn2JRm5YMKoLQr+ZCeFfdeR69jMxJz0Z/ort4zqFc3eWK
	 SZ6I5gG2uqJ0DxJcFj8eJu2Hg9SUT0Orx7FRH04wjsP0ksABu++MBHkVhxheXBYOvn
	 68JNluNu53jsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99898103E2E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326669358.7048.237175362722169575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ca6611b1c2d53308093e975a381c76ebe6edcb22294bd755cdbb1905c179d4
Date: Wed, 11 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773266693
