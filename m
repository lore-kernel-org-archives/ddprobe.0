Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492AFF9D9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748221194; cv=none; b=GjxIBxrYHIgWfxwr0oUKdtDRZxcxxNMZ+RHu0O5HvU/hjoZfmQDp/IOXvLnlp1AVYAjretQuOEuWG5gfQmokySYkRdKMNSat+qdjy3E2+KZ1QuVIY3793pV+fspYIhVg0MUEkhLTwrq8Uw7P9OIY4aCZy5bGlCEM5jtbkY/QtZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748221194; c=relaxed/simple;
	bh=6Q25eGVpyq2PWy8fEb8kvp0sv0t0onODqwCI5aY4D4g=;
	h=To:Subject:From:Message-Id:Date; b=C65WPZenGgf1DNUma2IpBj7Hletld5XjNHc6Dfyy36A6g1Qc230n0gco16gtfVOH7P6ymjvwwtena9mvEsmRJDBKsMWcmrraDbooafw/vR0hQiG+5N9p9RQXfH7ieSdcpealpKZnSxlf3Tj4qgcaEncRa+YJa4mxWnGrTlRa78E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTMUeKrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTMUeKrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8862C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748221193;
	bh=6Q25eGVpyq2PWy8fEb8kvp0sv0t0onODqwCI5aY4D4g=;
	h=To:Subject:From:Date:From;
	b=DTMUeKrBEMFlmy+4O6kL37pBJWaZzWWNGd0GrXh3tMDNmdvfAs44kvCRymlP8ccU3
	 FJDOngzehWtnCUoABy4JSyBP04YlRvBfZI2bTU3YhTf2/yT4gj+JJ4oLRfw862XpNF
	 I3FodcBINnVXolmGGLMLtTscEJ/RX4n+s7qzF9tX3A75hstqm1G5mKQLfjDUIdLFSf
	 3QI0kL2flk/wH+TksvXyjfZ2hO62p84PJ4v3/B/vIS9Vz4VKTP0VlqvLwd6asY5oNi
	 7Ko6SxMUdVAkTPc593XN//L0RXmE60q2vl14/vsNJd5GVig1/KtdSCbZ3HAzHxwQLT
	 cLkX2hqC7BPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BFCC54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822119357.15138.1821046123743799655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706496a78278b02c82324ea905536fdf26aa8d605c7249a23f7d29c82b74efa5
Date: Mon, 26 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748221193
