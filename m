Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2062F4A0C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774173294; cv=none; b=VCCevOMckcrp+3SY+Kyr0tbiaWXvPU54O2gwmhlHOxxMg0Vx0KYOY5OmoWb3cJXrk1hhger/39OYMh8wxzIC/lfNHasRvCFOI4Q3dzRiqX3t9K7TuH4K4Az1t9t2HRqtQIod2NWsaXYPrFY9e3lDYA7xCwwq3ej/VkpPvYUOz5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774173294; c=relaxed/simple;
	bh=hxk9yRIpc5FKHEztlfzzNiRyX6/Vp2iLFu5RUFeSp3I=;
	h=To:Subject:From:Message-Id:Date; b=XjTl3P4vGnCPWup84YUNKJCFn64T56l8Ksqe+8H2ioLinAgEc5EmjSD9JYhCAisdzr5S30RnOO2J3hbxoIhIS7co5FvbOocmwCTVD0d/VxEXmKib4yIXE8N7e7g7w935O9vEX9MNa8heWPdqr9U5bVcLwJEqVLCZd0LaG5IQigA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg+2H06x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg+2H06x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0773C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774173293;
	bh=hxk9yRIpc5FKHEztlfzzNiRyX6/Vp2iLFu5RUFeSp3I=;
	h=To:Subject:From:Date:From;
	b=jg+2H06x3Li0peKpjcDhClYvuCETBCgmd6DPvPwrh14g7OWs7tWqJKZQ5ulvGlaAJ
	 tAgwqbZjWJpmz/KK2q1nao+uzWHa26xo3YAV72PoDhqrVMkYhKKLUWY6Ua5v286Jsz
	 2BR6LQW9b+wgP+nBYOAEK6Ci8UksRAy88BRFxTz9t+/lmeq4lk9BHXjQaNXcJzwMKN
	 inIGcok9kWqckB1BgqvL9LN/28ic9EK1AnrWGarhUqn6CFvns0EshnRpfrDxq2t9cp
	 P5kA5NjCuBzkU/vSH9GNuReWOFTVG6XPD+gQyQRBVxqBGohwx0uTlpo5CWy/RtSiFW
	 9ufgB9/m154TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647CFC72AE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417329358.529.11855369254589855251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cedce9f88e3eef0b7edb9c35eec034974ea67dbf31084400afe4e52699a25e49
Date: Sun, 22 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774173293
