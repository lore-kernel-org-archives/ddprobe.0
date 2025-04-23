Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441381F16B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745379594; cv=none; b=KBXMCJG6F7a/cY0y4tK+HZvZ/ujdKiig299FV7qULfhgub1+qoDw88HySttiijNftpjkmRyq1fTxFmLjlAAfIjEmuo6sq6KfETRDrd1uHwvOgp5IeTeEZBI122vR9PD3WVkjolRwrvNFwDp9RjnTMkITacTQSWyTq9TVpZUtiNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745379594; c=relaxed/simple;
	bh=7jYU3KBT+LoUc3jbhbg7XlCc0zTabscEveBxWfQ8FY0=;
	h=To:Subject:From:Message-Id:Date; b=Z4LsBZaEKkxIUM2werCwnhAs98iaoxTMYbmvV9XeB6gvi90RBRTxSeFq2fH54JkwzAU3PW3t7JaygxSGVJUkzezur2dFtI9bQOP0j7yD+V80WqZmyHuLXsXJRlfIJfGtPksptjSsgCao61jzqjvwg45by3VVKY/yTF5uWnOrcVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpiMCVtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpiMCVtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83BEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745379593;
	bh=7jYU3KBT+LoUc3jbhbg7XlCc0zTabscEveBxWfQ8FY0=;
	h=To:Subject:From:Date:From;
	b=VpiMCVtOS2hgsFcSI1CLgyLMlf9dN+aq/ZPYZ7UFgIgm2eePH64LIcYAdKoocFKhX
	 3T7QOgBHyjPs+jRuXQroboZ6gqRbMjh03mG1kxuWrUFpRdwt+Eqs7Xd7PVPEmX9maP
	 mjkt+XC1oLIHOFmqjBT+CCsE0+Casy+XdUDPPpzbYdG07AJQ7wfCvOdBuWpABKAH4F
	 MRWC60uFPlGEQ97lPmWeeYNqS/FeZIqYfERn90eZBXb1hGQ+dxyHgKpb47DVn3jmxx
	 xSETuYsm9AUkOzuvQyFTzFssGiY62BOIP/21sWsqhsiRl9wQLLx3D0RWMbKCUZV04C
	 vUuzd5D2cQYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95315C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537959357.25217.8729982530077398895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef1a485b3cde02660822064f48d1a43832c06519f94e09228545503ff91c06b
Date: Wed, 23 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745379593
