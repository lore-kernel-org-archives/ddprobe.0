Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CACF2673A5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353294; cv=none; b=d4zJOwkBPpX49P0Byp3i/F8ZFfzOTIC3s4gEEB+ucBK8iuNBVyj/9DD51NsKnA4hvCw4+hAWN/WPr4PjG7WV0VdetlNuQtcX4JcUA1tdQ/5o+9aSdpMPQAQ9ww/Fm5WhF4CScQQnseJr+EdBaZoa2x9PDXKOgs7xdqePnSyQS3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353294; c=relaxed/simple;
	bh=Wzsya48rNwKo2qHjaWKQ6NOR8YQB/G84KIckqouvdR4=;
	h=To:Subject:From:Message-Id:Date; b=TH7vOG4LCop67yjY/1lYQGM3kM8DFTGdPQVQv3hbxjyy79JJeLPSFeS1BtexBneFJV2TaO4tkh9jv8C0t0/yEWyaFnpZbHdeUYc3/mgf2n8OZ2gInwSYTDfeTelMjFAjoASFisVgxfG6gzspkYyEzmjKtKEX7r8ZL89oT0/XGaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuJ7zLhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuJ7zLhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771353293;
	bh=Wzsya48rNwKo2qHjaWKQ6NOR8YQB/G84KIckqouvdR4=;
	h=To:Subject:From:Date:From;
	b=DuJ7zLhK1I6xRSrdUX6ouXbJcU77IPTteNazT5FAMdAknFryw2zu2zXlK+b0x6TFB
	 8rSCVQ+ZQDSBpAkX1Nm7DeNHACefFa2U9bZifhZF87sv7Cq+F2DqCihjhrSzLGO8i/
	 85UoQgvMcE5cb1ZOARXBcPIeNZ3kZZAo02l1pdbcNryfV1atZBJ2jCkcoEW0UwTozw
	 0gjwJNJFZincvwIs7UUhN45QLcCGVgvqDcugnyr8HuF9/18X8W0/mQJpCsaqwQP45K
	 IGg3XuqHuH+pIaZOcbMdp+knc53bxW0PaJLj61KxjVWjZ+y9WylSw50tP1GTyklnIQ
	 781v9U1CHpbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938ABE9A031
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135329359.12892.15644922418797236867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e45bc083dd5914587041502ed381b819b20820574b30bae21ff4bdf4a5cb3e
Date: Tue, 17 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771353293
