Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C6713A3F7
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740108534; cv=none; b=OLZedN6cbPkeChg8nr/2hE1xaZjPxhHgHeX39tFzJj2365eyFFOVpTdt7W3ZpkVn/w9ojVrsPr93hZJKEgNkRA8df+TtbyZMiQtDN8BbSy5Ef1s0VwG9NoUeVytSz8iQucV4LusXpjOSRmjBcoRu23m/tBgZ8Ph/UCfC7hdjiVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740108534; c=relaxed/simple;
	bh=muWuizn4nlshteb9Lbf8nzb0j1ImI+c5OUyS3GEK37g=;
	h=To:Subject:From:Message-Id:Date; b=ktWHn3/6ElTz8KhglEnol5QTE9MpOpiMXgvCSgEPiGGfVvtex/rhhgSGSbHSJGN/1I9Dlu+MNRMfl12GnAqHT0fh3e2vZCMQOKrj1vZXvTony/1QLXu72qHMxBQMZKMwdn66AMN77RyI1ECMbUL/dGHYQ4vhXs36dNC5hU5nE2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxplkUd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxplkUd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A52C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740108533;
	bh=muWuizn4nlshteb9Lbf8nzb0j1ImI+c5OUyS3GEK37g=;
	h=To:Subject:From:Date:From;
	b=dxplkUd3HX1YSxZsks9TthNYPxh0CJh4MECBMwVldGdcjYVrGmzsNUkHYCQ3zeo4U
	 seOZWweFF2xFXwG3qaAHJec1JW9HHC3BVUcyYw1pVJnLJbIvuQ3ySNpf+XlwjsPGy4
	 SOgd01w2syiikUQ/VOPma6G5K5HVm4G6Ra31eEfzDb6tmXlGSh9th2BPRGTOnJ/9FB
	 AKZ6UQVcuhAxIrUo08gAmNGbEiKdn33iQBeZxlvKi8UGnRY+DTIUPYw3vqCo04IiHQ
	 WYvikXTF1FKHCm1DUsEIHO477dE2+c9PnvnCdkQv6VAaXKqgNlDpRx7oqgved5styp
	 NMSIMHjOVH7gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056CC021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174010853358.16913.1982744174678854234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9906783276e0db533ea14ddfaab6c89bfb42a6a367459605d4da265ad5364995
Date: Fri, 21 Feb 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740108533
