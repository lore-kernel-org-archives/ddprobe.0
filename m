Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449B159568
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728217554; cv=none; b=IWmfjkJGLiKeRgxayuT7jp056MV7l+fpoy/zKqix1ftv71JYJpQYpJWJvnHd9aB40c6hBerZdHTfAH/za9NZI40yatY8rw2Y//rXzwuUDNdPwoxQLy6GyveuVYgdWfIFRi5E+38UlPI7AW+VwBZtnhirevrUQPcyhY2Lo9XqwcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728217554; c=relaxed/simple;
	bh=6hMZ7lE+1sJw0dcrOSU/gN1mNTrRkITY7xhcPLpu9LI=;
	h=To:Subject:From:Message-Id:Date; b=k9dQF2XBamyUXalP4O/Vmc9GucZyW9HE6m67sWOzBTnFbXY+iJTN1EkNKbmLV840wM1zq1SkA1NFye7qt229Q05476CdTCI1YRYLV4ZsRZ6kX+/soscuwTxaUErsE4HqDM5oICJhM5qLRmJKiIpA06e8G94giwNTbFKDoBoCwd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR/H+3ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR/H+3ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFABC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728217553;
	bh=6hMZ7lE+1sJw0dcrOSU/gN1mNTrRkITY7xhcPLpu9LI=;
	h=To:Subject:From:Date:From;
	b=TR/H+3htKeMfrzcNp1YcBfUGHtrqp8Tnp5CXys7KK30DywXMsyS0fRoXPa9NsEttE
	 +FDNc5gH8P8EpGxhKT6cbuCqZp+QfgNkmDKQXxF2lgIxCljLfb40A86xrNnGdeW7PN
	 nJ7PQvTonXeHgn6UsGdwVWl2sYEe3Jp/5JDSrt+lSB1Q+Yczwg5AYGOH2Fx+NVPSIa
	 CSzL6GWRD7/h7cmOtozASY/O2s74i366hLumDUEvyU0SiqwL6PQ0eE2h9mWIlMuNRQ
	 fLzUPiNkKYr2nMCF6iAtKlV2a+UoWwbNgx37qA6D+sjVyaEVtZAnhXfntKzdYtSCJx
	 r+r42zhBMg4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6B0CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821755364.17572.8102468233644041117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f05133f846e0c1468349e1904388d73547590e2b493cf4452695dd3afd4ca95
Date: Sun, 06 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728217553
