Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4753336F918
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781039134; cv=none; b=RWlSKCZRs6o9lY24XXrQeykz51kXzW2DiIS0BNWa65j8abYF+bzW/xJhAXhSDD30MvC84CWtGIYv3VItcaaep8s0RzYnr/9qi2hjc3mKP8WktK++LxIrHXiPVzUfwhyQDqalKp/TUfZkpMpqFiouWGfagUM0Uf6pvNhNOZFxZQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781039134; c=relaxed/simple;
	bh=7Uz6TRO/9obtvU5hDnO24pXXSq71Qo/cB/EhPGx7c64=;
	h=To:Subject:From:Message-Id:Date; b=oO1Ex9ky+GwPSF5vAYdl8JWfSj+Ey0P35uSMXv2uPh0K0eITxeMwkBINLMMd8j/8DxaCKIwRZBGi2jOescdQVE1Euw+V4xKXUUZxzqDP3VHwXpXi/2y6NTbSiZlObB0OpuFM0Yf1BSkR35Q8HSe9q6zkwaH0uQuqgovL4HpnjxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lkbg4RQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lkbg4RQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D899AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781039133;
	bh=7Uz6TRO/9obtvU5hDnO24pXXSq71Qo/cB/EhPGx7c64=;
	h=To:Subject:From:Date:From;
	b=Lkbg4RQmFvpEzAmV+AmuSupZTwks7Gegtvif0xt4wLlNqZg+1HQY+/BWu4oHlpenA
	 1savZD1aFOP1mDaMSKmgZCahn/HGL6HzthKyqXLHCeEYhG3S8UGXEQRI65IBnU+nZ1
	 z5Vk1sThY4a2HoKFiaSOCnYV2SwKHgn63QLuSkmX/RHtyMkDxOLbFgYKnPwOOhr0F/
	 4fCcbXSas5+PUZBXCZRpxy1rdAzIHTx1cqtlN7+p6hB1KGqwUMLrJ7bCyyvu69/R7n
	 tlDT2BU0bKbu31rxQQFPP480b/SWWjfYsG3UfGuzRDctcY7eDPEQh+O2kLeQcYnuCJ
	 xDI+JeEDwlTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A44CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103913374.18692.10352234330493585566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa77df48cf4d6d23e6ac69f6a248e9ce35ea90c6fa0e1df4985b285569acc8c4
Date: Tue, 09 Jun 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781039133
