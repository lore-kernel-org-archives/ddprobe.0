Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C6135A53
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766760234; cv=none; b=f2n6Ig7onnEwS6Y/pNZQDn6SuUb8Etcv2/lvQUcGq5SNX1/EH2rVgEA8zJIilk/hyOXwJ3gJPXpcPIe/v7X+pf9xN+6aDs1oJXtQbYrxcxL3sEZCy3mNctl2bhwlFG4h402YG4T02RR6GhAyGQTwmdi7Gp3DVTWiLWe3Xw52v6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766760234; c=relaxed/simple;
	bh=w/bAtr7QT+bWMIRZDXBl68k8ASEfAW6YXni8sVKtxRY=;
	h=To:Subject:From:Message-Id:Date; b=VGB2giiDGk8QG4pWv3N1nBC0QainftqNxCYyuYBXLr0H7QGOO4N6aKd8pfSZ8prI56Urkq7ko9C3ubNcT9mAqg5PYabu5zWCrdqt/7Xish93Tr2oXl7xohqPdM40MJpOd2bJk/GtUdnOxQdWrhOpZz9FHHXz39x2Elvtb7GbmC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rl9SXTT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rl9SXTT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC5EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766760233;
	bh=w/bAtr7QT+bWMIRZDXBl68k8ASEfAW6YXni8sVKtxRY=;
	h=To:Subject:From:Date:From;
	b=rl9SXTT1UpD8mH1TUiFP/pKFkIosN62PdzkGy1yYShl0juxcf/vCPZdhjRPc5puNc
	 DAAaL4PEcuNkFsT33vQVduy0GVOUYdR309DUk65HwAoQhnql1SkuS6QptCum7kMErN
	 gEWk+BYWIXjxmO9GexwWzugwMUa44hHgDDdfPod3iFRTuzT4SnYhS9H/jQrydfhEVg
	 petITk2y+C16BHQ8rkZlpnBpEZ+YaHSRQ3SKqX6rUL2HnQGYtMGBe/8uwOjsgb6isq
	 j70WDDDVEA4yh3+EzCBdFjw/IPLnSuFcEFiFXmuEEUTvTxDq0S3HZgsmZg0q1v4H0i
	 nS+WJKzBXLx4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAFBE8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676023359.5067.11514252875362852181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b721a5bb348c521bd074b9d5b258ee9e98ea5dca0523d5ed09335ef6d3c7a3
Date: Fri, 26 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766760233
