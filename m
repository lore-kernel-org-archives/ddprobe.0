Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC09296BC3
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754941194; cv=none; b=Ql650c3AZhZ2kVpnLIIUMiTV7gbi285pEMPHmgd4YAxMxX11bknZizBRjRCaBwWVUy19JANt2u+PhQMI07BhYlOPc6uiEvsLYBo42f/tnclgAENjZpfbTbY5uOIPN1XtqRvuWLmt0IRj5Pp9maw+3UvnIJhwxxcwn7cIibFD+Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754941194; c=relaxed/simple;
	bh=yEQnngNZ7NmGVhK/1C4I9rdsX5wpnbk3TUQZBjB3gT8=;
	h=To:Subject:From:Message-Id:Date; b=RBQ9RO5LTmWx1aMlaFdOuDkEm6AJYyLv9n5bUBMP0soeKCV0Bh+yPysI9B74r7dnLw+1O9gG8JjnNIWdutaiI6k6v4SIWIOcz3RnelQ8uNxwJbxQfW4cAlUmEvefVPmTQYsPywkEwR5nF0UZgPHCb3o9KCyu6K2Z5OXWa/OMPEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amgiliVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amgiliVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A038EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754941193;
	bh=yEQnngNZ7NmGVhK/1C4I9rdsX5wpnbk3TUQZBjB3gT8=;
	h=To:Subject:From:Date:From;
	b=amgiliVox9F11tleHPvYm0sL0z9jftO42+Cv1hqLDcukpC/h1k6KFG8b8h8+QHx+Q
	 izZOLv3EHE+qnsuJo92EAAR+o9A3NwIAULwFEN4Zr8KxSG1cCaQ/vCnb5Dq2UHZfyW
	 QYwsybSacRArG2xlbaxztIi8/deXGe3/bv8xnu00/OemctyLQ2dm5E/iQZyoWiA8hL
	 kgeMncQlwevACGfXSqr/oVWe4CNSHeHjAU15cBx6oHhLCIUrpF38NQkRK8Et5eVzff
	 ON9xInd36rH1ptoXjp4XsUKtVG6YnrpTd1hkS0v3P+WaVNNAGmx0Ep8cAefUvVm42P
	 W1POSYbAZ7lfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90096CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494119358.8615.2234122636477594753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69704699cb239df4ce0cba4146d2d2a4beab7b90cf6b9428e042b8eb9dad7f06
Date: Mon, 11 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754941193
