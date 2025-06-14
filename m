Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DDB28EA76
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749929994; cv=none; b=bZNdII/FBeS2ft2S1C4jdR7JvxMp9S6WRtkPuD/R6R2uY1DA1WD3uPU7Z+cZZBAPgV31ySvqXtmZGv/4oZoQYRFIeo3QVyAoR90rdya6+Mwr773WHizJiW/HZwz8dYKvGTkJaOoUqh13Aa/UPkkhnfV56zQfMzIyTch8Op9jSss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749929994; c=relaxed/simple;
	bh=aMewI5VawupLUuuP/ntEhzJCbjIiBvVsfcAYTOrEybA=;
	h=To:Subject:From:Message-Id:Date; b=KV/wNdUmr7gqgQd3yXTLNsRVFMR89+43BeXe8zqbhNtDwVDP5r4v6FkoHO+GdnEMMPAkvOVmJMG3aOy+wnn89dCN5/IA8eCDXTPLIeqWq5yfUb9d3PWctQMzAIBR2ZgU2upRIsebRyey12VtcnuJa1lDkWNB6BZGk0eBE4oZftI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX20PeGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX20PeGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A66C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749929993;
	bh=aMewI5VawupLUuuP/ntEhzJCbjIiBvVsfcAYTOrEybA=;
	h=To:Subject:From:Date:From;
	b=BX20PeGdNWhAxBjkAgnKTZirEQaTOwCwZH+qt26N44d5J3oMblHiYtVLIm5rgFFRh
	 F7VptpT/k74TQrsAOOcbdVW1vbS2xudA+r2tsunEqkNBpZ0pG+PwqpGxcBB+s+8Vbx
	 EUcAt8BYV6qylVUC2s0F8HWB9Mse1lB2R7JVmA+mjhUBz56yFaU90O9Aqn6Z/gSE5j
	 enc1tA25IrzC6Ihr8DQVBTac8Nyl/rBCMi5oKNZKrgYi4BbbgMecr/DscUau6KIyNo
	 fB6aQtg5wmLyeaXlQAjMVHB1BHU3QcyrESQnUJhrB4qogw0TD1v76xWxF+G/P3qCTU
	 S0/h00MnsZKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90987C71150
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992999358.17095.15066544536726302292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5092f1d08a5f121278090a3fd70d8526bfaf455d81c811077a52116ff0983066
Date: Sat, 14 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749929993
