Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D15A2FD7D3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782440254; cv=none; b=D9CsF+b521Y6Gh58ebWY2ZYFrg27s16XSI5l6QkeBMjsbxDy9LMteL55be+O2nGnjw1n03NZ3niRL35CDnxOjkPOubcxzgH7cokm9G5vXN4eukjdGAvY63ppoPdf66na6GnNRctlkmhSxZ6KrbDccXAhRzDEon2EII1lknPHq5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782440254; c=relaxed/simple;
	bh=LqOFNDlV/NfpZsaKQKDwaLey4JxsuMIYpvvG9k1X77A=;
	h=To:Subject:From:Message-Id:Date; b=kBK+eDU+C959QGpIZAgH7MjTFYpjZCtV+a1n1XiQMKJjvch5VVazcFDgGtB+PiiOGFut5sOdgLXwcgwo0PsYzmKAAeWLozr2tKOJzWaLY+zePTJn9ga1UFX7MumCnLGIQ2rpgLdQVrf8k+bKF8EcU57B25BAy17MgVD9lkO5itM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZiGzmyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZiGzmyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B9AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782440253;
	bh=LqOFNDlV/NfpZsaKQKDwaLey4JxsuMIYpvvG9k1X77A=;
	h=To:Subject:From:Date:From;
	b=iZiGzmyY6dAYOeiFZFRkLEs3yFu0rTqgXpaDr3qnXg1bVzBxifDAANmfp0no/jPN0
	 XDirK3FgDvs5iXVcxr9mqt+rpeCqLr0oSsC13DgF4W/E4WYWnr60s9/BOGKbZp+cPb
	 MnBLKMgk6fpI5WDMbyqD7v9SM8TLM04cNNd5CbloKYm2GYutDqFnuDf/oVot25XbZW
	 ROjLp1CJtDAQx+mwnVLdbyxS37/qhj6QRBsSgwMGV1UKh4vrS0J+ermFQpHxPLcYS7
	 HElfJg+qkgXjJYBVUgvS7iYCQbTnYs3wtRin1KLenkQJE+OyHvqC0y/2xp+GTOidL7
	 TPCXyQ4HH0aJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9BCDE00B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244025368.27497.17357184268273278536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df8d06b7f438f02be65770002e9ef8aa41033092f71efd2c1a137855394e490
Date: Fri, 26 Jun 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782440253
