Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B57260592
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754658594; cv=none; b=Pl6IKaUQ+SStuCN4qKCk83U+sy9NNv2Pjhrm33E7DKbwxidVJJ14WeYYFPVoCjmUfgFocBGqWHTcbvT2tnBH8jONi/a9m1HAB4NzDXEeWZC/s7pfqc7BNIIVlkMegRKgPeehLiVm9F6KTdgw3uaIphxW3C8hZrmMG2+s70oIMwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754658594; c=relaxed/simple;
	bh=vVghbd+TJmUo7+c8aPe3s48wUjGurEsep0vOg9jd1xI=;
	h=To:Subject:From:Message-Id:Date; b=BImYxRcGlLA98f5GB4tSYuLoIeC8FWAMUMmxHolruiKJIrVfndForK1rGj1Y1cHiAYidwjdB7dTxk2sQFmYb9dGq6cftVEhe1jPsxqzIsIoJ4a7sgUda9nXgxGGR5LRBn5nkq/sP2eqCoB+Ai5laAT71Av8W6gDZV3SIjaDuICA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/3muzZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/3muzZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF56C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754658593;
	bh=vVghbd+TJmUo7+c8aPe3s48wUjGurEsep0vOg9jd1xI=;
	h=To:Subject:From:Date:From;
	b=p/3muzZbur0gst+akS2C2SGTyKlBsQYqpKE93VxQywwMEwcSgI8W8Fhyqy3MFuFz6
	 Wyy7NOJYxr0JZIkRYMsP85YXEiqNh5S3xBLAKN0es18vKZK+gQetB8FBGoKHcyJdtz
	 /vcfLEyJGRKiWePrxdLkUPJDdCz7os2JhfDjMjwnwStb2d1Ib2Z7WOtmK8U3lzl9l1
	 aOTNRO2ADgv5tCCPDkmQC+XY0kdRVSGyymQPH1DoQuowqCFEIyVYNQeZ99qF0VsKT5
	 Ec6NDjgqtFA9WEm3MU8vEOl/BmKrNOUfGZNVKic3mPEDc9UNY/OyBoVjw9t5shd7/N
	 UhjJhudayo4Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB20C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465859357.11093.3350157528903066101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8e3e265691cff2ba7b3afdec19cf1c07eef508e8a42997775a549af022daa7
Date: Fri, 08 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754658593
