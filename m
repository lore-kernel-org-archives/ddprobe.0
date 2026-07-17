Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C8A1EB5C2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784248114; cv=none; b=fsfzA5CK7Wk4zgL8kjfr8nlBwjbGsCDSCAi3kaLRcHokSUPoIHtT6pKDB3yN/tUCDo/EX9fnEL9pDv26lWDy55iyjvqSJ8YP/hwuQ7BF09iAOBA+Ow0YUbxVhVcFLPNYyPwVysMuvTKtw4/loghdpesW7+HZg/JypArnuPF9yQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784248114; c=relaxed/simple;
	bh=fZfqlXlgZLGNHXkrPXo74jhpEMdpeb5HxGwq+Eb/uqY=;
	h=To:Subject:From:Message-Id:Date; b=nRFcSD+eWb1xXSHk1bERZqashU0ijpqirgJTKWrXcz6Zj8UahlHeqqDOQ/JYECXkmclVsWGFyIN+bQTLib6xyeMWRAJwZ1DqHp/g1yDg/0kBexHf8DapzuYbAJo9Dd32XfIcsE3rp4CZE+xBzoEKseud3fAqUShdodaOuEIWFH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3BvUeT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3BvUeT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D092BC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784248113;
	bh=fZfqlXlgZLGNHXkrPXo74jhpEMdpeb5HxGwq+Eb/uqY=;
	h=To:Subject:From:Date:From;
	b=L3BvUeT8SMQ2H0opv8We9MN/t694ASdOh5Ww/vHrnEQhvMldcHea+aiGO3kEOToBy
	 HzODF4f3W4Va+GTwiUpjd2DkxHBJf1lqnimSPaPjaxT6MYjl59xba4nwO4eFWgAIk5
	 Xlf/Q87b3vQmWBb2Dg+H9SFFvDqXcQnd4gKyHoGMClLIJkxwPUzAtNiVrlVQkJLJy8
	 ra2OUTY4HJKklatVufLw5EcnTywuKHad9bsvzbzv2YyCMzQAJFuCCjmoSrA2uFvEVk
	 t1SEBZpLh6bSwFM8o4Bm5EqbxwGYJYuiIBaAhs5JwPhqES4lCNE555Y7Yis1YgjdkS
	 wUFB3izYTipiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF675C4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424811368.23118.11235001184544615904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccd207d3bfd77e994fd7df0a11519d0b10d6b5ac83d31953f2b844908926dff
Date: Fri, 17 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784248113
