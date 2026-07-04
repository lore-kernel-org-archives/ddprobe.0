Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E411FCFEF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783202314; cv=none; b=WfTF4tlOt/PEoIPK1zH8hqIesOcGSIHh8+eq2DhVe1p7eJo235BTLkrsMBdTE5i5o/Pi7ZAGQ1iWvFgRQbHE6Tsnb0LErocscXeC0Y4KZTuZbguogC9JaVSBH7ey9DaDQ0YPoTCT4Hs7YxAkiFHOK+hYMV36ztAm4ywZE9eAG7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783202314; c=relaxed/simple;
	bh=YDUVSo6tvvEYczW4IJ34RM/slZJa8+Uu/bbMbRDCEik=;
	h=To:Subject:From:Message-Id:Date; b=aanKco75UKkvaFahNab8eTOBKbQobQfn1uB643V0woNyCAXlIf4CjHyH6tRI4lEc3u8LKmrs90dWdpVvSnPxv2q6uXV4U+lXXBmj2IzSfkQEjCylrA1HeLO1bWjnENTxl321hn/PL89bwvM1NZZHBk/GFwwv+HdWeSBP1c0kMHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1XLLQkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1XLLQkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C33C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783202313;
	bh=YDUVSo6tvvEYczW4IJ34RM/slZJa8+Uu/bbMbRDCEik=;
	h=To:Subject:From:Date:From;
	b=W1XLLQkE033RPCZLvo0kkXP3Q7jSsmVcsze5sO8IS8xphm8CcTriD3YKZDDW4NXL6
	 u0QW6O+Xh8JLASA1NSQVq0jePc1f+OekKzwfYPZmTiM6LbRP/poLrWe8naGemZbfp4
	 L22lHqFwXaMen3PlalEYKvDrMTrsa9yDJNGmMXnmgohpZwgpg0NZqzHjlpDyGVU+BO
	 bSHYh6aaiYNio73cBRnHZQksTOg4FTkPjno8UowSs4Vphz/ukk3gj/J9EmdF29Mbm1
	 FYqgx4/z8nzami2durIZCPMahiAP0b4YDxmL4m+O+CxP/LqoiZok+U6tMRD6JNkBrh
	 giSWUI1NV1HqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE87C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320231368.16927.12715265189359369411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a472e5a9850d54e933528376829da091d5415dc79e81e2a2a31f1dadb288b4
Date: Sat, 04 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783202313
