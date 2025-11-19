Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7831C84DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763539914; cv=none; b=nSIeSRzh1fKbo5tBbgERML+xWyGBeQyL2GvcYq9yQ4sgscFsszMFGW29OPiL+QU96MguyE/ljGn2QNeqcIimIyvKu8D5QfuoynBzbdpxIKJLqQxco6wj5JEmxs8t56WTX1BkbfUKeUK6sEEGn0Jef0Zt9fx5fbQM6SWIWzXs6SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763539914; c=relaxed/simple;
	bh=IqyWq9JMXYk4wymgzJTlDiRDRR7qObE1kUAU1M91sPA=;
	h=To:Subject:From:Message-Id:Date; b=YwuMxFOh0TWLvwkyp55zZCT5llAPx6TqKtZyWveTT7vUt/M6q3Ky9OywrCZzJMt50J7ftjsDoqKpoC/A9pSVDBoFO2X0+igDDmoS+uc5B4GTJfuQMR6D39nwI12UQRYzxUHxlu+hR0mSwypj8qzUhbbspLmIFXDNZFUe+2CtcJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1n8P2hO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1n8P2hO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D869BC113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763539913;
	bh=IqyWq9JMXYk4wymgzJTlDiRDRR7qObE1kUAU1M91sPA=;
	h=To:Subject:From:Date:From;
	b=Y1n8P2hOfSCJQ9rqlYLNcM1RzfzEWPQ9/N4VWbnz9qYYqLQVFOeMbWH1WbI9uiB+e
	 9XGNd0tnzbSof2Z5UlVwdBRMprnBuO1ej8EdVJDzffwmqvnVj6Hy3MERybJ532DgdB
	 7i43Xk83y1x7mTa+ndRTD17xS4Pnja8Ger/H/OQG7kQnardK9nngq0f6SlrpMf4UNK
	 3dAt50NwVNFqQlsipVIJ8wFKxW+31oCsYIcT6QtwWQsT2Vat8FzTgrOhTEXXFFNSZP
	 11AbG6A0dqJKZnHEvCmDoJL1NMY+SLvhkfsb5JzBcoP5qf8KqxfscxmoCFN/ct2sr1
	 T1tXXsTSE4nFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E84CF2599
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353991358.8011.15025338471907204176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a93fefa9b94ada3a0fe3d0ee57fdd1167adbd4a43a6e3005439c92b4b8cc2f
Date: Wed, 19 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763539913
