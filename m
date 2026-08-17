Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415AD21ABBB
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786966234; cv=none; b=QksZlCtkdHEkUhLbwb0I/Z4IzKRCF0TbuLHXYGZSDnHYS+8vUvCrruZ1XxND5HrNcuwWJb12/KJovjS1PLKWCWX4eb5fsMDepBKcT+rJma7Y1YMnABrxAUudDWcnLSTf2orbtUNa/vEPhoHBQyyTsPRv7/Os5auyStSWSJiWvvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786966234; c=relaxed/simple;
	bh=qUHxx28Bc5ESQTWxpCn0pckfAD6bAY68pK8MeyBPL6w=;
	h=To:Subject:From:Message-Id:Date; b=gvbnN+GHY+okWjoXgmEKfqHXgLTVTd8j71s/s8JP5bHdDG1otBUxo8WC9YX9XT6rO3ir3A9UPl1HzywinhClJVzI0+AiHdtT8ujtT6T/yWc+sjXb9NHKgu6OV1eUBKq1vA2Fc5l++5XdaQJQe0z6rFozqlRZ1vLaFh18PFOjWz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbps/GVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbps/GVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB39C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786966233;
	bh=qUHxx28Bc5ESQTWxpCn0pckfAD6bAY68pK8MeyBPL6w=;
	h=To:Subject:From:Date:From;
	b=sbps/GVK546NlHFV3IcajmTdSja6EJSGjIXQBIFrTL5tsOahLWSK1w1jqKRWmtflg
	 DgAjqp6GXJJVq4D3pwfm3j8gceZf0YAZAp89kRWSDoUoQe6ovnO+JLYKrMNdZCxopV
	 exan/xjbE+FH4qctXipnkUrarCuJ4AE/x8r4o2l7REye0sCyrSxIuoXLBEkzESiAor
	 QTwEMV7bjFCVq9/q9kOL9avV3/7lWCtCUAskAJ1kZR6VfzwJ2VEs0kgelz/6H+Fe4B
	 dAXY3mGzltWL6FN8Ibujb1mDNx4MDBZVhHjBCe1IrYNmbIPDUREbVH533cD0F3WGkX
	 u7o3iyYF78psA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86F9C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696623374.13245.7395766933397301343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77458b7ce723c225f5551e81112d5e0e72c80e696c4d5f481b54ea71071e8b17
Date: Mon, 17 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786966233
