Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362853BE178
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781621194; cv=none; b=MJFulCdBJcxlLyOjGV2e2qczKhOJPA5rzQUMYpuJ6jR30gaZof686syaX22uLOqbzp24a9YLturzQe5IqHGRhOHNpPK6BccRn0oONl2CGYerOTPD4rZ6h5U6oWXGrWsiE468lGHXonnJbhmUSzpGJAgvcRXp61bZDBsz5x39q5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781621194; c=relaxed/simple;
	bh=o654WxhIrAI5yO8k+1he3JWbGWXKbIGQyIt3rHbt3mQ=;
	h=To:Subject:From:Message-Id:Date; b=KSCbsmcvs/D2Q9leTYWfXfuK4HH5yrLVq8i+bfhPxQCYi+PZMBJzR9ykf7lNOvw7hgRC7A71zBBXgL1xYXr6mYPMVAUw74g+XLPIHgXHHKOqJuVNCS4o573qbsUQs/jDdzqoD3vrE2a44e9Ott2I3tEE1u+UmYHxHZ2tiIMU0J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNhCuNNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNhCuNNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFA2C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781621193;
	bh=o654WxhIrAI5yO8k+1he3JWbGWXKbIGQyIt3rHbt3mQ=;
	h=To:Subject:From:Date:From;
	b=DNhCuNNVTDa8nxLkX1URGduao2ipdFiUtpL702riwrBFabAZuSMZInhnqii2C8ztP
	 CEDTHLp5Ifu/x6UIyBy/H+TaHNqZRtoik0HubrqEF9D2uO5ZzgRuMJOv9EFLstf/Nn
	 y8I/K5astMdln/NvF6PbEcq1WZ/zDbfMOneXNMsf/jiOya/0a1M531rfKHVRJswN3G
	 aQZ45XPJgWgy1eFRnntX16GFEvWu0ajqkqAkZc8QER3E/lqCsvGU3+XA3R6SV/1ohD
	 7raFwyR+ogs8k5e7cFyf5nN8g8zV1Ys2CwEjuynSLLpBNH4gLOH4DhoTGZ/rZ2noEF
	 LGQI/zD7QoY7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1265CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162119371.17901.4991603465189571472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacb1d82e44a04dfd33de8e7bf9ae255e2ebc7f9a502349506c0a0799efd3154
Date: Tue, 16 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781621193
