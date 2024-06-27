Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6473813C9CA
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719487463; cv=none; b=SnlzXNAZNy/iUHTjM08J/B6YtQihoMGAXJtwfWFrurCbhatD217BeU2glRj69CUnT/mvKOMXFNKOaS12wdCnrD49GiJ3V11zGt56DKIsHgZsrMa8cmw3RlMl75CM5cGTc6gefX8VJ7ZkKk89WDJAO06gcFigJVd6o4pomQ7xqG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719487463; c=relaxed/simple;
	bh=GubzVGrGiM7KfKKlKJGt6/adCXB9/SXwAf1pURxLbi8=;
	h=To:Subject:From:Message-Id:Date; b=MgMvUdoKsL6VklMyYgGK2eBeCsi3ToGqwQy2xH9Ylmj3l2tn7CC1pQojddTAlB0ugfZNTQR3VVYjuoE5LCS1ELu15SCtqWdbY3C78ypRqsxXspJvg2UzIq4pb9w8D0rK5+N0CYC2HmVMSpMxux/HOv7zT2ZIydmx6BJMXb6kGhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbk45rr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbk45rr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DB5C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719487462;
	bh=GubzVGrGiM7KfKKlKJGt6/adCXB9/SXwAf1pURxLbi8=;
	h=To:Subject:From:Date:From;
	b=rbk45rr2EeQdA1Ncvgv7mA02o/CJkoztd/Cj4gh5nwFhI3x3crf698ReCIfa2sB8y
	 rvySZipFkzvZCiFo5pi4ULhMQXhIPeuYb1dlmFYy67xW0HOg5u00HXsNnYr3tN3src
	 h2lTE+ZPalVMCKfjD5hZQizvMhqivxwiDypGkCuanqbOAHNPPNzLwN+HYUpMI0J3rA
	 scQVMm9L9cMifNgS4DjS3pKhJLLxj140lUH7EP7yYpjMl5fuDge/GpRQDqeT5/TXNc
	 gzLoyWJ1gkJuqdZX1xrX6peIxyLsf0AfYmol3Nl1BjGcT0OoSQ3wnfjW/o0ScSnMwA
	 20ybdiGV5PFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0319C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948746277.2950.9563374477762728062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733d1cde619c9a76723fd0ada242b5f8ccd668ceff090516395ceb3038a82468
Date: Thu, 27 Jun 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719487462
