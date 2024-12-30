Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADC233C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735596954; cv=none; b=B1f07Upi+35L/fHZsW1q+6O86P6OzMiQBv2QIAusYbpSn0+UWXpxIutvgDkS/kYVaX5qhWCqSBcMw19bW8cWIRITXyk0wxev1QdG0+biOvVc2FTYdVd3k9maojKXk4Ck8VjnFia/qPqY2/Uxo1pQe1vERMrX54ehD4DCzPJjRac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735596954; c=relaxed/simple;
	bh=3ubFfphYjeUqQjY6S4szKXKOyHs47H2WRBIvSP1KuDw=;
	h=To:Subject:From:Message-Id:Date; b=JWZgjkZlXZZ5725tNxlFELt4I5MnVKttvj9shBq0aWVHHBy6cQM45B38cHe+hRE4ILRFlirGA39B1n085pY1dzVVpWdwDgThyS/A3k7k+Xux5JD9yooba7psxPmwzDuPz9Vv6bCtUuwnVn+O1iOrUeaRT8gzvwOvt/KtsuEaR8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHUOfnIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHUOfnIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFC7C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735596953;
	bh=3ubFfphYjeUqQjY6S4szKXKOyHs47H2WRBIvSP1KuDw=;
	h=To:Subject:From:Date:From;
	b=jHUOfnICvtvyP+lZfwGeh/n4sJfNqBMdGFZW3g2MCuGz8QgbfSQuEHgqZQSMLyVUp
	 RzHcyXd98MLqPZef+sx+u8XlVzZD+nH3DF+p0uoKBDfcPxS/Bbnx86ejX2zjcfPh9q
	 2ZNFZIwC5BrqB38sPNmk9KxmHqB/As9JP37Gnlob364dDO24XeYLV+pdxEo+WNys0t
	 HKxS4n7NtsrCbGKKvQ+uHx+16IJ8OYWbuQsHgEjVDQfhA27nZASQiSAAb3zgMRHmjl
	 2jlvr/oXKooHxgTrzfjQ7oJxw9tXtV6Z1Whe614vt52oOtjtHdDid0c599LgJySibn
	 FPWfEtW1xf7EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F15E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173559695359.19715.15877660241485412086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90648138b2f138d41c1ae668f459a09412d13cfd02ec616d361c620e5d20a1ec
Date: Mon, 30 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735596953
