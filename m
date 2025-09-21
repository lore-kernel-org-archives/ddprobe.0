Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B55182B7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758414593; cv=none; b=NAi9pLMA1JyCfCiA1S4B2jYKXRMGd6IcMhnS5VnfTliHamD01v8kMVFuas1I1TnpjrkGZq1eVa1gXNi1Cq8hX1Kg+nWoOw1UZBHPLrekaasqLuCjGR20uo/ctiyMiD7ppZ6cNwZhBWRMAXnFhy2CfucdZk9YyxSSyEIDJiESKZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758414593; c=relaxed/simple;
	bh=2Pcqt6I1IQbkGxs8sl31rdanpERQCmRzSAZfwp6XRxA=;
	h=To:Subject:From:Message-Id:Date; b=Pkx/gDWJYByYvyUshsJ1I18LBJ8KryFfkvug9EwTlXOh5f0TLmtduTrc2wSP6/fsgHmPBhYeY3Dz5St70a1oIchlkU+oq6rPFRqHEAwgMb7SfZV5dzCEAZv+Hy7KhaZcE+M08YZdj8AI8QbfFU4s5pLc+QKCsNakwFvxHKNA4iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtroRjbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtroRjbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4113C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758414593;
	bh=2Pcqt6I1IQbkGxs8sl31rdanpERQCmRzSAZfwp6XRxA=;
	h=To:Subject:From:Date:From;
	b=XtroRjbD+1vzhecqDsLCoavNQLNcpWbPI/G3Dm4R7f/2Mr3fNbN4N73wa3FBSzO5V
	 RKh8MBmlxIkpvjexCPKC3iiP67rNnl9i0MgiE6lf3Ho8iJcL8DwS6JzVSOw5xQSNX5
	 9M3oAgfthHJdfP2S0lRo8DOUBGEoq7w//gdaI6G+VBQcrcQ0QFQ9uHwgsYoRQ7bK+H
	 u0xCSpyZFt+j3a95g4QUvsbzfzNLwPvXZRf/2V2S6I096JyWkjyKZFxqCBN/D9sViH
	 b5Nbph5wTdXX+njyAeLWlJ8MmudqjaZ+NjA7q/VYbElQuRjVM6abnMnp0TqpKYcGIS
	 oZvjffN3pMX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D61CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841459357.18528.11200930280440015374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31de8b2fc951c376a42ac730b66a39c21cae81877231d4b0c9c6d0de5daba898
Date: Sun, 21 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758414593
