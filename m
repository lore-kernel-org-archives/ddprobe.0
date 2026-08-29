Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C462175A88
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787971834; cv=none; b=jQJkgHNQTz09jOeNLvZ+Mpq1RLDVVTLi5jm1TwMVtUE7pAP/rpDSjFM2bB/i2t4cdGg7SyXt2VnNfRKSgj41BzyfpEDM/VMN25M5ozyDdARRRGHK/I6l+8aQkh3FF51+H95f5xisJKZk6veMPkqvGImdqNut5BY0S+BfMVw4u0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787971834; c=relaxed/simple;
	bh=yaJCOKqxCZABwZMA6BPh+692vYkxKUvy1WvHlz49KyU=;
	h=To:Subject:From:Message-Id:Date; b=g0sO5uMrEdmibbHF/RGQNa5ZjaKEfjVLuVnRalhwc7KYoAKTQM0CWf7zhk/e48h/ij6fa4np6Nln0qzqN1CsNujlOhQYsCPXcYTzsP9yDvi/Dpz8djlOt+fXaHEy7rH9bx3tHM3P9+Yz/wLxSmvZBv5yqRSDs7QCzqTUoSXBDh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR6RabHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR6RabHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D331CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787971833;
	bh=yaJCOKqxCZABwZMA6BPh+692vYkxKUvy1WvHlz49KyU=;
	h=To:Subject:From:Date:From;
	b=QR6RabHyF5v3QnQSM2iRn2iiFlC6X78EXnTrs3Cw5RyCupOzgVpjJOmP7o1fbr7uy
	 gpGIyIWlb/doBPNYf/7G7XkpHM1fnItnvTZAM8OPHQxclQrQu9irSRchcKIMKLqh6C
	 oOtAiHKv6ypKgF55gbBQ+n0BcaG8cKyudX3Axa5Y9GLUo/IYhfQc0zHjTQmhN5Xlg/
	 WcXDqRCwscwpy8MKtH7Xzl1IzaNBJS2/eDjBTT3NDsu15k/U+QrRZ0IpSKmDNmcc9O
	 gFye9i8zTHONLglrf3F7jffMX2Y85lHTT+viO4tkoMQoZHCwMXWPPSZo9wbqknA1P/
	 sdJr6PpX2h37Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B066CC61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797183368.32038.11069711431230091466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bdb805e3e4412c48198fc1a19435bfe7cf4efb9b6a370a9fcc97c9d6d07dcb6
Date: Sat, 29 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787971833
