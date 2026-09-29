Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBCB41C2FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790708434; cv=none; b=dQbz0Crc1hsFHTYCMZK53AqcKMhuRaY0Nd4DDJwyVwp1Cojr1WtNAG6MxBxyG9BlwgrQnKViUFpJ7ygUnQRq1LwDiuXbNiL7RXfEM+yNpK7ko33nXq5LImwkg3FeRs3I3YkXNRAm7UY9JquWscqpZ2ypHBa6RUDAbPQs/ttgwTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790708434; c=relaxed/simple;
	bh=YOOx0Vius8ndREV0H5VSvbXX6XkAc67NVn/thS83N5Y=;
	h=To:Subject:From:Message-Id:Date; b=neysiM3FgLY4HCH7nE1Iy0KQn9hAoSrE/kdVv30jfSgx+vFXDBsJ/5hj2fIaf7nez6Dl6sWX+0bDUYJTbAcMI5/CD4gpIsUo6p7bLd4/T872e3r/dU/lpxIH1ZCrMmwEh6yzU8HhBPVyYkPphLSF2n1Ql2lvUN9pcOWmoK9HOmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4CJhJDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4CJhJDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5762C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790708433;
	bh=YOOx0Vius8ndREV0H5VSvbXX6XkAc67NVn/thS83N5Y=;
	h=To:Subject:From:Date:From;
	b=W4CJhJDI9CISE3JfFCD/9gbTMCIEKoWP8jyGUR5PcYvEzO2jVjg1WdA26NxBCtK/e
	 67yRtXMzHxLewsGCN2qxEZNAjb7EQx3cs2zI7LjXenoSNxXHtERDqV9gbxmbInfuRh
	 cFMEQANrN6oRHC3jbK8T/hbDdsU7kAU2oLY0uMMjSiqNvI1N74lR2M5FaoaVlr1cWk
	 zoGm5rXGrUA7EqSDbsFPk6nxfPThwirWupfVSn8McD/WDoYV663YntwBB2k96QzljR
	 aN3BDBCJ/fdL7UyL5RCmJ5Bx8pcNhZyUS3nNiuIbRKZEwjJO9Z3lrz7EYuuoh2RjTd
	 XNlYdRhe+oYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B04CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070843369.25625.1865991419549801866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddfe3b658d7caa61e5ff2608a509ff2b4c3e7b2f4ff0dc9fb8b004527ab7f28
Date: Tue, 29 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790708433
