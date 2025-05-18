Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB242CA6
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747611594; cv=none; b=OIni1wFN/gT09W9tmPYmpTIE4bA9YGmvTH4IskMTs3ltFYddfyEq9xUxGwa+HytFg0FIFqYBMTLJcsHdIMnFCDT9csF8pyNWtMK8Mo0l74mqR7SQsctVBTSTs/e0TPnODimESVb/XozVLnuvlsITULA0jWoet1RQbu4FCb2r4jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747611594; c=relaxed/simple;
	bh=IAHk3uRBcj2rQhLOnIWHA9p+l5dlANderik1p8R0liQ=;
	h=To:Subject:From:Message-Id:Date; b=q8kUH5HfBKpzBcdfZ53Bc00zxMuJ4x0dAJ2QE/qmksAsEgkzRl3Xd5oYP+nMUAqkn0ge0RxSBKG+SrgH1gVoe2OvUHaLyq0UAjIbTSpq9e5fINafdGpKToyZ9Njfoekmfrq1lIDlBLkJYvjR+8HtGCP1uUTIlBbzvD5YTl0decc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncEpAbtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncEpAbtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7634C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747611593;
	bh=IAHk3uRBcj2rQhLOnIWHA9p+l5dlANderik1p8R0liQ=;
	h=To:Subject:From:Date:From;
	b=ncEpAbtNjyPGrhLwGfNiFZUkejnsJVShr+68xcqXtc9MjlQzSi8cF+5iAops7q59l
	 qH/F6MgRsvO8rFADSLL5wnocwUv1H10Z29TnBhlkXl9dLRe8ZUO9941gEmfWeFSQDf
	 02zFmmYRzn06U0jRfvF/KOO0bnm4Sivnal/0if+/dH/ItO5rMSaXMTi48ACMFGuI0O
	 aN/4K1Co6GwvQXhRb23CBoJopPsKCzc2PA5YHPfKfpGK55uncyqcyNCPcdwK+ooFUG
	 E63o9S7PtG82PCj2VzF5nHgd/5s0VYrisQnnI7y4eks/nKSksk1HBdVzj3JZDVx6MW
	 SEzzs5b9OGh3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94625C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761159357.19664.10574023422075809609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735a8daa87075cb296ba8dcc17a9e8cf6f2f4e846edbe31e2aedc2b469603371
Date: Sun, 18 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747611593
