Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB921FE45A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765773174; cv=none; b=Bw4Gku2jQwJ12kGm8qTd2Yyh03bV0PavDG5YK52Yi8GgNCtm9BkbugklViwwdZkoxx6Ue+RTUQjfGPwtglIF7sFYfI77zoqQd6BjNeBi1wvt2+Du3UPTldQmfVGRn9V1aUZRS3K63QTRPYx80TDuxEP36JrE0wIqEX+P9vyHxjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765773174; c=relaxed/simple;
	bh=jha/za3PAJWqoJJ4kWSm2SKRNQmSThJkb/bwkaW+ysE=;
	h=To:Subject:From:Message-Id:Date; b=dvWrCAslvgWB1Jy7kWmaHiINdwAGOMCc2pnn8x3gU0W8Uk5c1SDTXkqo9lsv3Di6kOSDtsU0yyDIWMW4KCnJHiEML3i8Qt407kZDC+y7JYtjWj90KdmRQR+GHjSk1Aq6PzqEv1iNxNeu2zM1FEBe4tAn6H3Q/mXDBRqGdNkzL18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7KwAgnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7KwAgnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF96C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765773173;
	bh=jha/za3PAJWqoJJ4kWSm2SKRNQmSThJkb/bwkaW+ysE=;
	h=To:Subject:From:Date:From;
	b=o7KwAgnj8qTb42bML33YcvGBbRT3q1ENAeaSH00yFW5ddbvy5+jXQd2mgOT7k2hNX
	 HZh2r220kaf7TX4anmwibkIZw6a5fGZ97a9mSz7foXHhAwVCmRRcsdJSToFc4dThCy
	 61BzkFE5Tjc6WAx+W2x4KeYVA+7jixDRMVEkePMPQKsmqsXbHuY3rwECv9qB8PSKDr
	 GeTdRNhGW3Z0Xv9+z/G4gIGZA1gLVuQIl1wE5JUH5CJTJ08wLU7rrHavMJTaRZJHTQ
	 jRua66IYa9/PlOC2bmrXwPxcLIL5o7VUA+80Xwh+OPtPPQwp353K6Jioeaat2WQiMB
	 cRSZvp6kELa6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999A2D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577317359.13298.17394613663371331960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db8d44dfd932b3f6dedab2c4ef94bf83871ee89aa0f430af25f64f5e07e5346
Date: Mon, 15 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765773173
