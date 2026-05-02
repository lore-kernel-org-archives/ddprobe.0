Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BBB30EF97
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777764454; cv=none; b=iaE80Fzo4IKQ8jAko2IBNUu2JkTQtm1F1ZpN8mPjtRciYlw7OwjwEPATyUWOLbB7hjb2oL9GLlURb6/YUfB+DcdFip4HnwXnbz0+DHiouTNNi3bXGyR+eFdx6KNlp5dGTM2kTgv0mg12nj0CGopQB5WxK92Z0Z0a51D4GGqixpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777764454; c=relaxed/simple;
	bh=K44Y6SIzf6nqQ35t2TU3eaojlM3lfXq822HFivwn1Dk=;
	h=To:Subject:From:Message-Id:Date; b=G8m5U1Z8rd0rBtNUf9KdIvCp1p2XxdtS3QuOUvJB7m9+n4tdg7DXApswiwn9jE3z9Zk2/n+5DWZh3UXhMtEdW6mzaVjQhac61lMW2C0UrHQyFf0ECr0qUzGvZo6VGTNUr7S7mV0N9rBKMuFH9RE6XRpDLDhHZg+rftNPdWQbOfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUr8fSFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUr8fSFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB54C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777764453;
	bh=K44Y6SIzf6nqQ35t2TU3eaojlM3lfXq822HFivwn1Dk=;
	h=To:Subject:From:Date:From;
	b=IUr8fSFeD6t2/q04GMuA2G0u6x1PE5f+aJ9NWyZu0DMuHikPeqg/Ye3ZQrp9c0hnA
	 z9EZGOGXDkyQ0Fq27NqIW8vqYxCTZZmuhavTWcHo0+16l5aWwD6o5/rnWonUREXG13
	 L6zbnPAL1Z23hOtAq+PAX+jFCGDAkp+ytrDpj8+ZzRxkbtetM6zDnL20Xo6Pk8XkP3
	 CdUBo6qd2R5+PO6o9ASTWpEIxKTX2KqAH2HDHBkXkku3x89MFOzxOcTLAHtpq/SKEe
	 nVuxHUExbmM77k6kh4RFmNeuctz3iXLEGqvSIEkPFfnB3sIrepjnssYpywNsOwGyjj
	 nPfPOQOLH1ILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5B6CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776445368.2543.1021773338744771744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8380f4b103711586a646954232154b636e98f823bdb8a146d9363c3f3cec5892
Date: Sat, 02 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777764453
