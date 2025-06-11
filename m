Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FAF380
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749667194; cv=none; b=tt8N43uLXoem3jQXbXOlestvml4g8IPjebDdPyj+7WyBY6Cb38D4jRX7uImwd7aJxzlSeH6a0lTPAnyotujxV5ypoTFhdNfpOSteF7VrpcSaWH1CnQMZvKM01MfFMnsDKd08AxY/78aBFCjy51y0p+Tv3+mLzZ2Dum+w7cOhyyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749667194; c=relaxed/simple;
	bh=C2SWMwuNJc3NvljaUuE1SSNIr01UOOyHxxpoit48uAk=;
	h=To:Subject:From:Message-Id:Date; b=G59o8TCWr239VWeIB3NBHZ9LR/F1r3TaJCN00nF39F3bFSze7fEh+yKAhVAJTpXIObgkX0M/ALvo2xGj0DntL1zzo4OTPeYxCgqfA0uH5xOfJ+7SSKczqFBJRsDgvgHLz4O/oZN8DXWSCR3PKwOC/TNacFVJDGd5gPjLd5zpGL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt/M40AK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt/M40AK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E967C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749667193;
	bh=C2SWMwuNJc3NvljaUuE1SSNIr01UOOyHxxpoit48uAk=;
	h=To:Subject:From:Date:From;
	b=Rt/M40AK3784iMJm0nMNit7dxwYs7yO4qLsxuo0XxsTE4Fe1hZz8eRzOPfStQeXSI
	 P5OlFvm8U/AnMEhPKFZq/98vJBzHYBp5ybTxKLyZcEgvBBDPW7YmcEJ5XnGPyoGVlF
	 RO/9mb2o/3V5azS+7HFRZ8gyhMPw9BWQkS/YQMAZMjQnovC56UylWw5gGNRl1cZ5NR
	 axzRTt3jRxBHp5Df6rlI4E1WkfcGeXuKk7xZmF4J/ckoOGIGfYNMQIMH6V3s6YKoyX
	 aPZ0vywwlA/iR0Ztk2xO1uYspGknAzt0DJkf7F1DHIsNkNMa3JzASHDhj6QnWm2oiu
	 1ey8NRVQtlKVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBCC71141
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966719357.5821.611401993367442809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d004ac757a03e85e7fe8edb5b5d5e44ac659b15de4100a7b48dd7040a8530aec
Date: Wed, 11 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749667193
