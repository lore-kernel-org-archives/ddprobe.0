Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9231D416E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757972394; cv=none; b=nfeQBsGrmg6ES3Wee0zT8IRHMaVimXRaMrsbyJ9ajP3KRCmmzp3zgB3BORdcITGoskRDlzM5P4R3yvQFQ/5b6UuUMNDVul3zAujNDywyF349Dtd99/pOy8MaU/WvYV7zlu6cHSEUiKPtYEA1EyyKYs4Ifyv6MeiGXXIAyIRA9RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757972394; c=relaxed/simple;
	bh=b3Vt+TT6GZY8ycMIEze6xFZrX+vzdvBLGyegHkP5VKc=;
	h=To:Subject:From:Message-Id:Date; b=oRny2M4w9LJqW7HgDWwgwebqjzyIECWAmqwrrpGnxXL8iwZT9mJO7ZMzitnBXM4msF6g2g058xNDT86KdqjdQ0YntBoMMFPYpZFvD4kXLzPMYNlnptym2+zkhVVqI7k6lyAt9Y98pmd6D4Gx5UcJIfPqqjgSMv/mO09tJsqBiIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZldCIcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZldCIcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757972393;
	bh=b3Vt+TT6GZY8ycMIEze6xFZrX+vzdvBLGyegHkP5VKc=;
	h=To:Subject:From:Date:From;
	b=YZldCIcF3JlSxLTt8uGDD8AzKpK9oK01jjZ7zLc1DuKefKY4OXqB1THCwj1S2PsJN
	 cPMLddiKuIKdr9BLvoUc9Vl5MY0QE5tsm8vShyunLKWoDkJtC9n/Bjq/s/GacUs29Q
	 8338wEzlVxfY1IFbMLe8agZTAi3YfByxMOzEv3OUc25I/2JwDEbr238wByP7E/Gbct
	 oFhP6G0DGks0JZM8BM+tOAy1jf5Id4913X3mKyCjk9VeyySpKNZopb+Pd7Ag5ZdbOS
	 ECkMuKSxxvewk62SobF5/pveWqXUJaXKkWdy6cXFnXSSu25RlzLTKCCeTLScMlpN3Q
	 7dZs9KELbGxiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A13CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797239358.14985.5132724430689190331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25c9fc9e5e7e2cd4842a9b13b95eed27c82b88785e7bc2e640d1f03a9217532
Date: Mon, 15 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757972393
