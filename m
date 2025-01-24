Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4999329A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737690354; cv=none; b=s+3KqCCnBgOC3K3/6OmFf+aKqGXPmx9R1gr3yXfpbT1ykzTEYmt+v4f4vH/RWXzVLTw6htSDUIlp1ol26XxJOf+7OJyXX5TJUYHBT0P01jEDp62xrHS/H5B5l07StbfCV8XD6Oc1zpEjAl/mBUjcdW75BSyQ/dz5sGuW6yhyH1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737690354; c=relaxed/simple;
	bh=GQp6OzsGmhdZPHQGQvmXaXQBo7f10LFWUo++lekK3Io=;
	h=To:Subject:From:Message-Id:Date; b=KIo8h5o2kASqwQREAYvQpFs0nmi7/Ro01lda5SupO7UtqvMLfbc2LC8FL8MZbNVfF0InLdrNYSjRiIqS4TrBlAPfUOzrWY5DGqdlvFEGtM3VDLSo6UITcPYZVT8OOxX6I1b3/T3eBicexXKEiv5zJeY6T14bRV8Fz8+v9vjw4rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMlC8wNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMlC8wNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49F5C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737690353;
	bh=GQp6OzsGmhdZPHQGQvmXaXQBo7f10LFWUo++lekK3Io=;
	h=To:Subject:From:Date:From;
	b=oMlC8wNqZocJKzHw7aMqZZ7oUXcCn3nyfa8zxV0uem5lhoLCVaT54X93hpjXutAPQ
	 P34zNdezz50TDivuN3MGiEYCFHXyO2zDcR8PNXTRykc08JBFJwls06vmzict3Ockoy
	 U/IX3PhftmR3fPQxe1Jz1icwt+aXpC1HxH4zF4Vny2Gm+ehIKbsYuHVHpeHGzAuX31
	 MvbVb+HzvQ0k2/p9O7Cdvaty5nU75EOf2rjouweQXCXsvYfQD8gVYHZ9qbAa3ZK4ib
	 EB9T8rCrercRzfHOfbiGdP8fWsA2+p0tDnJkVocjobKYCQXvpE2pw5WPu218V6J3zf
	 Y+Ru1dBMRJ55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF90C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769035361.17597.13361784192252554157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2624dafdd62f838c709ce2b9b688b100edfa645af8215b3eb8ea4a055f2824
Date: Fri, 24 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737690353
