Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BC6E545
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 07:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715670143; cv=none; b=dHDymg8IefXEgKH8UfTgz8TOdW5mSEdICge5iQjYkeO42EOIcGBxB1unsQqhILb17q2xA8wN0rFTlqlTd1RJs8Kvc6bSSZccM7CSWmC4bnb801kHDF2PPKCBe/+rHGXo3MgTASvnaIpoFQTXwrx4qh9Ex3XLRaCY/yFmLvJ8XBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715670143; c=relaxed/simple;
	bh=FkpEddK0f3wXrrp1a7J5pSfBovjVNJKO2WffWBLWQYw=;
	h=To:Subject:From:Message-Id:Date; b=j4QS9RS/WFQ0CjnEDsEONndGHuJ6ABLDBogYrFbdhqzPI/61SW7DqgPw24rxekIf3NKAD4t4/ZyuKiBymm/R2of92Nz3AXbglScNJ7H2Er7pWST6KfM/W6nyvTc/msK3NXSIlpSnSM06VX1nSq8quKjv6AU8x+rrEXWlmHYWVnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPLDJHM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPLDJHM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF99BC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715670142;
	bh=FkpEddK0f3wXrrp1a7J5pSfBovjVNJKO2WffWBLWQYw=;
	h=To:Subject:From:Date:From;
	b=NPLDJHM5Q1M8CTipF5o/H1y5zIIpxdmqKhGOtEBEgSptUIW8bdSPIjpua38K7fqx8
	 CbIcKraBMz/1Mw4W2+0ewCGqm7f2XNtfgoYu6szsaJOySpgL+hRbjVLlo5F9hrVba2
	 HfJk2CQbImElsvJpoHk8tO9NksV1SJL5U8BNRIQTRcjRlAyzJxssKtlGNLNnhOA2PK
	 dq2fWfnU9ou6GNCgxETj3oDYzXCTHWlLY825Al5V2e3Nk0mkvjCL1Fe4vh3RWBd2aW
	 CGR0RQ8Y2CpanSl2Rf/TF1KzGcJ7qWx2d4NemRFxSKzg2jC4vNIR1Z/RhJFjl7Wpbo
	 kH225Ujz6tejA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FE7C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567014275.24383.15328467329042427613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56989ee835cb87383a00742979c89bc4b0f2699afd68d5ab587b98687b5646f4
Date: Tue, 14 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715670142
