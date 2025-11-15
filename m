Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A70E35CBA1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763179794; cv=none; b=Xbu+vcxkqhor1WJvgff/srYLQsoOAc5I/WkCn5ZFVXAqjk9FCy9srpJuIMJiG3byiueG8OpJaj53/jpVtXmTs1vmDTc1ktuJKPd8oq+1b4XxpmyRQFD6Vp3YzB98JalYtX2XHsGJ37DJOrg1LsyNaaIcljG6wqQY6FEhHAPcVmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763179794; c=relaxed/simple;
	bh=buwjmYDpftci5rvjvqpTToOkebxZC7r+mNADafdC6wc=;
	h=To:Subject:From:Message-Id:Date; b=F94YWFvTHNg0/kT9M5p/DkkK9RStIhOSUgqtPDR+ywhfOkUg0zwFhn+O8SpV2mJtQkDZk9ADhEpRt8NiT6/NIJDt08mQC5ceuZHmucAIQuy/nJZOuLF4IG1W7A+H0FH1LiK3bb+X6X+M6DEimDSysWEm3RjQQLJ/odoyn2cp4r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqkZqzds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqkZqzds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE07AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763179793;
	bh=buwjmYDpftci5rvjvqpTToOkebxZC7r+mNADafdC6wc=;
	h=To:Subject:From:Date:From;
	b=RqkZqzds0G7LkhjtuGjKZYFkyCFtef3sJCZX3pk5dFIeWJoJsJWd0P0mxNa8Mvdmj
	 7gDxlJFQp08VNM4nIXfqeHmynq8H2tBYEipNzezGoU9xeyvABdvxZpdztmuQaPB606
	 Xs2QXgjoQqhaR1Qgis3PbbsNm5kq27fg/6dvgPCOjEsHYcXa7Yx5ORPnNYfFPGWUlq
	 1e7r7i0bgBFebRANd5bCSsgxfF7RRoDxQdXsiz91It3BIjtBd+dnXz9+1rRQM2vbbL
	 KLhxEyhF9rR0/Ko6MwLbGv9PuoUGoPSL0bxqNu7U9rVCpfKu41D+uMGyLhTvdCoI/O
	 MT8OaNyj+zgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCE1CEB2C0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317979366.24277.13158989488268706149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09d36ace6a4b542166825d083498ad84ee4daf657308712c6f4d5738b753695
Date: Sat, 15 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763179793
