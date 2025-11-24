Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D46139579
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764000114; cv=none; b=jhDjRlDEX2UhtH+s0DhVt17XeQVNJbnyPzRpWC1VdiMgPCNw6err8TMlycK7kpm1c2is4NDGN6PzCrLZuldXu9LAuQehUlani96OodNkwrBhnuUYCvTc5hw4rO0Gs9nLDyagLJchXL0GwSSvnEdMrQ1tTbRYM2Dx6CRg6YatIAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764000114; c=relaxed/simple;
	bh=gj4rm+fwdM3Iv9blzigNg6AZQ26xdIlOqUmnsmAg/oc=;
	h=To:Subject:From:Message-Id:Date; b=s5SCsOpNL8aRPiSSFxqpHZ+Ofje4H3tChj5q8vmxonTdMjnr/889GSswHCbGNib1oqDZknD0jAdgOYdlNlJ6mPXqZkjMI7pf/imGiwMEjivG1DFxtAj1xV2OLDmbHsnJKgWhjkGcHMek8L1Sb4o1Abj3QmKOyTsU5OrhVhBov8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMDLtzOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMDLtzOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC3BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764000113;
	bh=gj4rm+fwdM3Iv9blzigNg6AZQ26xdIlOqUmnsmAg/oc=;
	h=To:Subject:From:Date:From;
	b=gMDLtzOvsL4InYkLk6I8Zfj/tGh6slIRIstiyjaaElhOK8Codo8hWjN2Uws/u1phv
	 LgFubgzjOqXqeiBhK4xJvr+qYhoh1CTnz+L2kwzd2bfDTmsqNA3WcPWw4mNG8dOmZB
	 jGVUqH6RJQxKANgFTxpx91Od2EJDrmnimleEhhOZiThquvhX+sRnukY5Z6CHtIMKfu
	 6gFG9gyvsT9/N1/SX+kh9DPM6OzKaXv4Qr8mb8gqQaDsAZoXfcPGADW1s6mPRhb5Af
	 a6pQiYYpshRpBT8CVFLSpRXqgDnGbcpJSW4psQ9DLEkapy4Ys28muQsihZduwYs/bt
	 ByrqIZwrYkK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC02CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400011362.8062.8212293345599576543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73eb14935ccc6279826776804b552e8964aa9eb97fd92802c51bdf87cca0dd0
Date: Mon, 24 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764000113
