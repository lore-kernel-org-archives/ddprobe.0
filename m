Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F423EE1E0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778526034; cv=none; b=TG8n3PedgYAf6XAdThzQEx6aon/TGpJmOkw7t3g8arPiPsHCajkvOaTOyb/81pI2P/yBwUdcxGHUqIWVcMEMuBo4Cv++UxQLLuYcP0O5y6rkbDWekTJNb3RRNtzJn609rUZN1Z+aDUzGmo+DybOHmrKRI9dRZST9l1BaKr33Nto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778526034; c=relaxed/simple;
	bh=fJ9ZmmU5jyAKIp9C5pH72pUJOUUhK4aoq69b0xCNinQ=;
	h=To:Subject:From:Message-Id:Date; b=Wjw/74K50ETUh6T+84jYEw5fGBfDgZmjQ3GWlyMufahav7ekmKYNMWB7C5kjzEmrfAT0HFQ+fzY82+8P5Mw0P+ldzWOKLD27SMuFO5rLbP/+qlWPFJYX462b8eH5IytGECMniL9Eabdkl/uTntmxbHmrbPc6/esGw9pjuk5i91M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJnIWpWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJnIWpWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BA8C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778526033;
	bh=fJ9ZmmU5jyAKIp9C5pH72pUJOUUhK4aoq69b0xCNinQ=;
	h=To:Subject:From:Date:From;
	b=bJnIWpWdAiB7+fRowpdUc6zzH0p3/NcQw2Cdj7/v9biMcG3nj98yI0xAxlBCDB4aL
	 IG1LjP/jYBdi7M1lbDfQ+n1HhGBoD+IXDH/Oe6VUtrB28VxHwJAGUojxw6zdMd/Vjz
	 SC40IXrYgdbf8e5eI08SuJOfLUfJCuIWYzKo5I7o453u61OZ2yWf4uziAPbHO/6dI7
	 miEqb1bXumgxDPvhXkFpi8SZDasZFzCz/LjxJM5yOsVn1PT6FQSbw5IQUfm3x5Ados
	 b8UXkVLxhshPROEnUUHxdCPmqox14evm3HNSCm+PtHVG53UCp7YFHG0lhOQtiI+MNc
	 VA1/keuzE2Y4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED96CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852603370.7716.479373114459417131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b8573c26b2268e91a61a70885d01af937cae460820d998e3cc496ca7592054
Date: Mon, 11 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778526033
