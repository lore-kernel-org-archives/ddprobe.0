Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9ADE2B9D7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712403496; cv=none; b=JeG2+LROZ+CvxGeFKYwhi8hCEASiuM5SnWQvQbDNcd9IAWyqdAxn8N/V4OiVovo77hjVlCmpXyTADNTfVwTJAPtd7OqlWaXZHY0nt4NCSExos27EWfzJzjcllIZZfWOyiMucFiziEW8ZPh8XzSGP8qTb0wUWRq9CwT097YPTkf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712403496; c=relaxed/simple;
	bh=43uC/vlGRvOFLQoJUo//DSn07HQk/N/ao/0EDpFERNs=;
	h=To:Subject:From:Message-Id:Date; b=WA30a0cTMjLf4OASfEYV4SAOGl/GLa+ER5XThRse65qJfwjPU22PckXFQtmWoEPHuGCpG+H3yIBll1MbtB9N4sr2fcz9JP3x1tRf5141CxgViwsOuv+60f1yJuvWrZ3PzGBPoChUTs3dDvFB7ZWt2wZrRATKv0gMVFj9iorrVac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcIAR5ME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcIAR5ME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77240C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712403496;
	bh=43uC/vlGRvOFLQoJUo//DSn07HQk/N/ao/0EDpFERNs=;
	h=To:Subject:From:Date:From;
	b=AcIAR5MEZHd0+CmNpbKT6KNBPkpH2zhXWesVp+DP0D9TxCNSopnnp4IRYxk0CxpWz
	 LditwqDwhdB3zaRX170hUre4QNFZT/uM7NdZQUU6DiuPvu22iEdFgzHGEbPDvCMBxS
	 6NyzMo7yRP7sbSarinp3dDKwF3qK8UboH9V3nEMO6EDlsUoaJGDyALGFohvCpv8WZG
	 CborLeyZbu+woOWbI7cQBs+ccIXNo3+LBBWY7xU1pokx+26TWTOoL2bj7l999BxSYb
	 B7nnn2pKeadTR+w9bv8DhZMyksmQwqz3pBdFmA1L9rng73PVJdQmchyRbzkMZpSj8W
	 0aGtSfui523DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657CBC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240349640.29445.13059853250570847000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92aaec7b95eb1be64eb01c2dd321be068059f6b9523fdd09524fc1a17582319
Date: Sat, 06 Apr 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712403496
