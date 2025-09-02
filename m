Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247E032F761
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756786794; cv=none; b=i3IhABQbJ5BjxiH4+ceBUmCt6vWlqdhZ/w1mBsKCu5MUIAPF1xZOx/qiTcpzhg6Tn/BXYEtwWtq3lgR3otOA1/Krk4ptpdG3g9vzfzhOEtDATLV0U8ZMvx4/MTfhZ773N2PhuQbHAeTLtG9cYkssHIoaFMxoKjc8os764zT8oGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756786794; c=relaxed/simple;
	bh=a40wv33u+9Q+TkyCqsNK4syf9zyXheZtESVYIAQZqTY=;
	h=To:Subject:From:Message-Id:Date; b=sS3vhjSxmxZwiRCOZnLwaEYbAM39G1zXIe2cf8/v9LOSD8Xpxb0kvdKATgpTI2t/SabYUd/cllYmH5uKX/1Y2VeDNfa5VAFLjDO+oo972716xSuXB7oW4l40mT+BeUN0sSglN1uG2Wi+RpUFeL1Qmmx5b+qgB1s+28OwdugfZ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmghMGUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmghMGUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8588C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756786793;
	bh=a40wv33u+9Q+TkyCqsNK4syf9zyXheZtESVYIAQZqTY=;
	h=To:Subject:From:Date:From;
	b=tmghMGUgjb2xkYfjikTlyoZUcvfLTNcTJTJ+YSe92CH4FX8IIpJg/dEAlmI2Cw52H
	 XTzQ1U/0dLrgSWVi8Re/GwHo9D+njWzU1jj5Q03HCQjsWb8U/F/S2/a/siAFWLmv0I
	 /3ko4ueSZyPIA7mKrLuuaHVCZ90ug4J55ODIwliifLCF3w8I7pUGuexFfGZ4sbEOPJ
	 ZWzDl9B8tdx9R0RNs8dEi4U8qt92aQepgUJQ2Qw/KZ12fZmZbQdya1jRjm2NIP5nt7
	 IpkKDL4rsqxeUGN4cOOp/yJRYB3u4XZj9RKivY5rsc9pkQxYVQZv54KOMf8Fuwep4Q
	 Xsp2FCUur7vrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B7CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678679358.27411.8701111673022078303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3614263f7dae660dcc23f13d0f11bc6f5c3e9c67aa1ecedf0df9bd1a5f83fc32
Date: Tue, 02 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756786793
