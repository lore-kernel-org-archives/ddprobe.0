Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4D32931CC
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791937234; cv=none; b=nVdt+KSP9A8etXMjY/qACaFadwLj/TTdFIntdbPWQL+AcSVWeDI2z4KvXfm03fsb4ZCz0edNv5wztMHB9KYpyn9hOeXOK57DWd+K3BlUEbed9YkfGxC6j4EcctBSLeLhBXE16HFKXUbxoZK/SKleh62sfPJ4MQTucUkMqOPRnpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791937234; c=relaxed/simple;
	bh=SCS/mnNM7EiRii+xDMOGlFhAZAc/M4StePo21CPwBTs=;
	h=To:Subject:From:Message-Id:Date; b=k4tkACiRr2B8ooye5dCp9aCCK3nPkn8CrKS7fdRA02qdVw2t2vaPIdaJNotJgOTqIbGpk3Thw5dWdTV58USGkk7S1zoefEGr8K1kXTo8n8szP8ZjC9aswxTOy8ZfkqXIOqfbxwa0KMXPT+UI+tR68aNMByeXAZgpdgg/PnGfOuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGmUjC5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGmUjC5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD53C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791937233;
	bh=SCS/mnNM7EiRii+xDMOGlFhAZAc/M4StePo21CPwBTs=;
	h=To:Subject:From:Date:From;
	b=KGmUjC5/BnsXclmRmamZPYQyhR3tcnw79lS9bF8a/TGHWRSmB99PBDL6/kh7PLqfh
	 S3ldckmmG1Dv/555PiSX6XCDd1VTfEV2ohuXZOzu/dRHmkMGcb6vCkgwOrYYglCcG1
	 R2wqcl3oD4vD8TcCO8CskUwMBuja7gOU6JLOSQck9BtXkEasFM96hhrZEX8/uicXzf
	 B2ALqtKd5hRvtw35xsBca0I4LGia4zhDfCGw07FI9skTMS5YTTKHNZE3+dbsynS5CK
	 Ih7XbWKzR6p2eC/NRXqDwftxCekcepecJ+KzxSYkgKllnmbadCdM0DfFyk5ceBGpsR
	 2j46VTZGqn8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAFBCC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193723369.26920.7526100962467974705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa548e60a5179ab1d5032335b6e00609654d2157119fbeddfe22714c0837925
Date: Wed, 14 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791937233
