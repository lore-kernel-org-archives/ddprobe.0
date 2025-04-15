Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C44221A952
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744736994; cv=none; b=O6k8oosv+439SxqC2L4pGjADp2AbUEDQIf7ZinatdnKL9rT+CCRG4qxBDlmHbdZI1uEQVZeaudGYmnb6BMXzCHg9oK8nLVYRS2U7kYORiFOZ63Icf7nkf7FgR6hZNS2hrw8bj4IO7/xQweZYz+g2LR/2mVBJH+3cFDk118IHhuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744736994; c=relaxed/simple;
	bh=84y1lIYkvvQWit04Hr7FuVjSAh60pfi3MWk40DheRt4=;
	h=To:Subject:From:Message-Id:Date; b=rUPyiRNGA4juBdew0/Lt254Xdyrq1p5N4OnN2sURYL7j3wsN+pqKuq28V84+oMwLgx/pB6874lwLA/vhgunaFIU8DoX4BRAJolyW/JPBVXrpeyktNhsRQwvNqbfQdomdvmlUYxBoEngtHBFHQg9L6Ro1RTWO+u234Hu8RkVmYSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJqxFVPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJqxFVPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBCCC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744736993;
	bh=84y1lIYkvvQWit04Hr7FuVjSAh60pfi3MWk40DheRt4=;
	h=To:Subject:From:Date:From;
	b=LJqxFVPq8j9qrxpIVmKEjbZJV9RSbdjdpEgWTV2n6lfWJf4OzjjYuzujhgYXo+535
	 IlBSXa0aR+5czmorteUbd3JTX3P4zsslpTjplwgDKiyfz92kL4hI0CA6+U1dq3CKgR
	 f6Nnd0N0nD/k4tBKyD+/m3cUXbbwBHwNizJAmf6tlVaQqktjwvInUTGSvkhoW/S+zv
	 rbuiC7UBEFN/3EL+2dMpo2pngYGzWJKRXz8QHGKKR88vwOK1O/cZqBv8ukvjmz2KPt
	 mNKNgQVIlrb4BhH6OQWy/Xz0C8ljg4kCdXBifpQhJqTrqhdvz9VYnlyKYTFHX9vna2
	 RP+SprIdpTY2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA8FC369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473699363.10302.17843602393549038951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d239539a5f600715b721db20ddc8d6899582652acbb0fdb37829a663b754e2a2
Date: Tue, 15 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744736993
