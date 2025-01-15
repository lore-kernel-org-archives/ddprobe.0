Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7DC156644
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736913954; cv=none; b=cGj9HDdGdThzW/C9n/0ipPPB12sBMApQKIdMPJxuR4NxZ6738001MfL/Tw+b7ntuHXyOFsTq8Q2lGAAJEqjJ8eF3FyCTmXSCQorC8AARIQ7C2UdxoqBm3J/FyAwoAYzpmf8g8DQT6fDUfWjRvjoOo7tIUz7AIqo9zXyZhdEOtjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736913954; c=relaxed/simple;
	bh=Y0nhkaeAKXbG9YuSLszXs+daifZV2AKttXg78dzxQ/0=;
	h=To:Subject:From:Message-Id:Date; b=na94m9vJTkWuRzp7VfithRGW51+3PHeeH1SAzu1nfYfjC+g3ae/xUPFhHg5hgxQrLEsjb61p7k5JxSmqR/T+ucEUZSmITd2hsgUza3/HyVID/f3Z0P2Pxv1Wcm4dna4zgTvvLZBTZaQiiMXVAC+O9lTq8/xN/po7ehhy/0BQW5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT1nlDvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT1nlDvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBA5C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736913953;
	bh=Y0nhkaeAKXbG9YuSLszXs+daifZV2AKttXg78dzxQ/0=;
	h=To:Subject:From:Date:From;
	b=BT1nlDvcV20qmqgCnGDpXaoxAgpW5AVVmqNB0jIy3OM7tLxanJJ9lWNt9uqAj9qOt
	 SQXyiKBfhQRd9A5fWhhXrs14Ap+sN/E943X4eVgJEiKR11ejWCCbC9T/Lh3d8ChV0O
	 4U+pTulNIwbIZPjQ35pNKF+A3io6MHy4cItfXmwYLVZfZHilL5u1UzVyoaNl40brOj
	 ZYonjJ2KHfWrNzvU5lXmSeXbNdCGxBpHdCVeEJr2UauttSDAq5/NofeglKUcJPTJor
	 qbyYoMppupliGHBubER4dX+vuTL6TX9ThkgmIWFWapgUOiJPh49JHzhMH8nxsNgo0w
	 2ouVhEnsb5f/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986A1C02185
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691395361.23934.17625564158611396440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27dd2f3b1d28b234caa7636268e33fc9409f47d60315a88ed6d3ee05ac16259
Date: Wed, 15 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736913953
