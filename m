Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD95633D5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706392696; cv=none; b=ZDpJhMZQVdBkj6/2Imyevt4HRiDbLXD1LB3Z/gbSTz8RhjZH2ZoDfli4t97kZfYb1xo2rZsyICc4/CfXhWFYBG+BsOd/2V8ak5yIOt5UpTKW6ET71OPLqXlv9wrZHILkazCOsmp5dhF3+APcgBhjg/AiGmhGUDiC99pCiNkJYlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706392696; c=relaxed/simple;
	bh=hw2++QfrzdhNNMTY09b3whPOqTbupvMN1xqCrrLS6O4=;
	h=To:Subject:From:Message-Id:Date; b=J8FKABWsyTI4Nns4Xi9gwC0Lsjt844I2PvoiRQh3RvKebc9esW4Lwg+337Qn/NDwQYR9Z05vLbl1VUgwql9oMzNiuXMvKZJ82djy6mCPSQaDLup+fdk9vAQlWZBpSiZQuzOEImZSs4TIuDLUlH4qGEBKaythCmQAKYdeE5INujI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4ciL65e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4ciL65e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2A9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706392696;
	bh=hw2++QfrzdhNNMTY09b3whPOqTbupvMN1xqCrrLS6O4=;
	h=To:Subject:From:Date:From;
	b=H4ciL65eWdXGFic3ccSkRbffGV6/hOmxbbnSIYlwX8PFFlJYgOEq9o8ollr0hO4hO
	 unyp55DgAvuIrbn33yUmE64wDyETjs5XH2FldJh76uwGkuLT5YimIyxJTAeJKn08MK
	 AMV7QlxF9a6dPsENJxBTto7qlumhMCDQCjyBYCEBJALQmtZghy6yYQo5/YOqs0wQa2
	 xSGf7CDCyOHzRqq7nJRI/uwQpwJHLdxwMTR9Wb2JL8k8ih0KE+4B741B9XCsU23WyA
	 6h/ogQLmRqU+IlyitGdS1x5yM2s6F6+WA9Y5sZB7sIZawt8SFqecxwSBvF3eiRhhCX
	 wZN9ldAypBHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F11C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639269637.16071.6060638971972328171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657bee33ee828ff516a50afc5be858b90f1367aca1cc8f2febfaa84da5cc5a6c
Date: Sat, 27 Jan 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706392696
