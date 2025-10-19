Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351CC1F0E32
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760902194; cv=none; b=uwCjHC7/f9CYhdyv79oWuc2S0gWPsrxagi16BM3wnKzlpJVbDsJ33YNVBVVcG6zalu2oWIgD3rXonSmD/yEKrYFevaqGEV57aYsuh3WeF9yeMtskSz9mN70FwmtXD7yTB4SvctgWAw+hDBQMCnLGPKJbk2IXXIX0/3FfQoSFe08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760902194; c=relaxed/simple;
	bh=Xq/lk+Rm3cmM9XdGBdF5TEBwg1Q/mgT6QRi9bnBqPkc=;
	h=To:Subject:From:Message-Id:Date; b=hW5mLNtqkHx/yb9NQaim2dqTzLLdrDGu4+i+fFOTn+MyXBCkH5G49gN3+/3RnUGXSZumVv+NJczsndWsO8gk4HwsnJzN9G64EyWl4BgTxJPHz4Dim3yAoZCRSXeWCrr35NS1oYykxrVnaezKlvXG7TrQoruKkQ4SZAtzbYZ1E8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe3UOTt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe3UOTt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84BAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760902193;
	bh=Xq/lk+Rm3cmM9XdGBdF5TEBwg1Q/mgT6QRi9bnBqPkc=;
	h=To:Subject:From:Date:From;
	b=Xe3UOTt4O6WO0b4/kkgYQ2Y6NjceR7ReGKjxA+wf6taVv8SVl4KITVn1wg+LOnkyP
	 47prPX94a2DBY3n5VHn1vv9fJxmBb4+g0KPjOJqxj0Konu+AGQZm7WyzZAXzHqJw2h
	 zu9ldlazfuP4Pj3+4VfDyW/aLILpgltW8uO/lOLv7aCPmFFh13gel/ODtxxD3IWwxt
	 YGp/HdcZ+5u64+BiX78S+q5elvtjUuHc277YsTYXFJ12o+L30Y9795PgZErMSRC9zP
	 I0YBy4A30LYTbQAGU9+qoleXR8ajFqgU2bZQLHJ8+FXsJrpLKMoLpqyU/Hq/YCS39v
	 PXHp8JXXF67Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96199CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090219358.29557.2751113999509623956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926f62fdb7f5a88a1f63827e78bf639cfe4f031c07829ad6c11954b05ce8c9b1
Date: Sun, 19 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760902193
