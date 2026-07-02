Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7862DB785
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782974914; cv=none; b=Y0anlWefCQOYIYhmlvkD3pa03MOoowOI+gAGH+9lfjRoKq3Fdt/Mwloiw8HEpC4zH4qFmtTkdTWVJPGgYFhnb74LmdTWPjEAc7Ev71RWiFu0kkSA0UWSedM6XooLwPXu35y6ucVeyG3zp8vgOwBlv6F89ZB2CEpI7MFU27WFpNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782974914; c=relaxed/simple;
	bh=eZXow6d3rFaBNnJMSNF1d839INiPcnOCgQspck5PvkE=;
	h=To:Subject:From:Message-Id:Date; b=WNEIw1F30yvvvtmhPaGQXcRB5ZNyUHCGkTeUlsEtDqKyT9OLOxn1BGCOlGSgdnDEFvCLmFJDxMdokl+qUBdZMiUkyPHZ38TlnKOB2OGV2fBXwfeEpmsVWpTcn6E3qZw8clrnzn8d3zBNolKKHh5YB3Wer6wIqXt1kwhk+m65htE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/XIopKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/XIopKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C652DC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782974913;
	bh=eZXow6d3rFaBNnJMSNF1d839INiPcnOCgQspck5PvkE=;
	h=To:Subject:From:Date:From;
	b=b/XIopKbn5FXbhyiO+u3rtUzyGyyF83geSrOsUhazZoTuo4bIv0xJZdHmA+nN+vqs
	 xVp3x7mZBD5pKFJ9juxtF23aUx5GXHH1e6gerMIG2Jyn+k8nnRg4l/EcqSmZI1qJei
	 6XEgNaVsNHTIQ4CbcIRzLnar0b2QWA1m47LoQtTHfhQ4yO1rId8xIVjzX6vYgFjGoQ
	 ukGPI0w/+wr1QA7vaoaVWzaDnpzRfb84ZV9yo92J7ykBUu6vVec0Ljna3M+sRD9I+H
	 QLzWOqsLzIuW3e/i4dfByp/nrbrr6IUN7JUiNl7c2wCGkMcgn8HLJE065NIA3Hb9wU
	 gAZAsqnZ+AhAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FDAC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297491368.18089.11505799288022137602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c877e87b98dd0f92f764e234b0ab20ed73a119d1aaf70ed23d41b5d5da325653
Date: Thu, 02 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782974913
