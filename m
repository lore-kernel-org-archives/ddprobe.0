Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3294C322E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745672394; cv=none; b=BFuUldXKzgKEiEjrX6Hd38uhV18VdZzDVhHMvEN5JfEh3Q7872J9yLfi0vVYknGdrYvHvuiy7U4z/ZqfH3YWpJdoKaQVxkvFPRxD5zfcqSiVhpDlqX9aWNwWYmbCBihPbX/CBpCQtCnAmKOYjbEdcsC4cAghNuxh5a+3aynYx/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745672394; c=relaxed/simple;
	bh=qIHXRoO3UnMt3sH561bNNCN+CP+cE3/RIE22XFV1CB4=;
	h=To:Subject:From:Message-Id:Date; b=VJ6MvwXneJn61GNPmMQ0+iozGV6wH5/NzW2Hq+VZ4v0Y69YwlDtvPPKm8qI/T1PaXuOf++nqBQ2TuzuNNrvnh+y4B6jV8iDl5WKPnBKY9FCpLceEwr3+VLQHxPx9oH59Q3oN8+hWW0WAudJwfBdO6/RGmh5Scpfi5bl3XB16K6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttV5oJRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttV5oJRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8D4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745672393;
	bh=qIHXRoO3UnMt3sH561bNNCN+CP+cE3/RIE22XFV1CB4=;
	h=To:Subject:From:Date:From;
	b=ttV5oJRcw9mzRo+nfFhsc/8P32K18MvhTTTrlQ73eKpivvr0DJDh8SUmmOaJnFtdu
	 DXyF1az0d1UIyeimaa+ZOse2X0eYsIls+iW5r8oCbwpPfuohTRfABZRxtxeKVEhnn/
	 QneY7cJTATIK1ydzm4mboEto+W8RqSUZxUNB78XE9YGtZklTRIzZbu/NtCOEQggXR0
	 jZNTeXECwpbS0ehz55j12F2JEdZVRQuFC0W/aw7WAg9/rmuyHPgQRRoOBNtokUXl3O
	 iSTzX/T5uX3AXXicyN/uOJnBNjRXNOBMIhaAAD+Oj1qPg7ivluyHrHz77FU3Ym4pg7
	 ZE4gv3LaHRklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E087C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567239357.17932.4391524719275091724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f11bc959cabb5b43a0fb7d190a25b0eb37d2126130e066ec52cf40749f0bc86
Date: Sat, 26 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745672393
