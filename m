Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E375425CED
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769003634; cv=none; b=VsBm0ei1vzdaua09HjG9G5MPmiuJHTHiw4ij8ZaWJUtd4NGKH2TbdgH1soOr4SK3Q9/ZoIzSXGNBZCrPLrYLqTnk49mxXlPphcw2Lyypp9SoqxPLV5tHdK8rCvLdr3h5lGw43SDpdy0/pspVYz2yGFfpI8VjquM7GKG8RItbkB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769003634; c=relaxed/simple;
	bh=Vw+M3XZvB1mrq7tsWBxf220tWuip/OdcpABroNUTitc=;
	h=To:Subject:From:Message-Id:Date; b=RV0hcW8KBZrRgvQvNAHFh1gL9AWeXV9hZBYHkBexyT6RpwDRrKmErsoQ0zg6XRGjSnwtMNQtqxQPrpcMbWFVfTxoqKWtlUZ4Kgb/2XMfi8dZ4UfzYBPhpqIqapMJNf08ff/yyMd1K5T600geGCfEh8AF4hYwRc1n1E5rtERSQew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhgm0rXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhgm0rXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C686EC19421
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769003633;
	bh=Vw+M3XZvB1mrq7tsWBxf220tWuip/OdcpABroNUTitc=;
	h=To:Subject:From:Date:From;
	b=qhgm0rXo7uhIQ/qZkc+iNFwchuH2hU7Zs2ctzKjdD5QF5Oc2Vnlo1kNFJcQB+2Cva
	 lwbeUmDQbtEqILMsyVeQ0DnAKW63xasrC/8cWL+5Xpf5Zp+uzVN71MmWkX4Ij0y2rV
	 hUyJoRzbhyGB+g4FcpTRWTt0npsqH7Cw0vReE6NBMrUZVi7FpzPp9t2Bf9JancBDm3
	 oApSwVKxXj1GQOdBrtr51BNUEC///O6EMDKOWgQC4ZoMtYNcJYKPmj4gt2mD7jgFUs
	 qJq/DLP609pmsKFzoPjP1HEZ8imZ9zKrewDijQlrOHl30reOW/dXiKBka0VXQMf6wx
	 RJHDNlkQxbvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99970C4453B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900363360.13272.4753149115398176763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48d6cce42e4a1d72bf79831038dfeff7fbbd5de9ecb73fecdfe9649051d8103
Date: Wed, 21 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769003633
