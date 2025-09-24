Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451842A1CA
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758683394; cv=none; b=K1e3YQLjP7FlxiuNSBPt/XJdkhCpUTIZS4gK1yc3TSxSLLOvUgLAmlGJGZXmKpMCqsa3LQR83hXWiclGfhlkNWymJmz80ccwA1Mno7a9MrIvLLDFMSdEZOlNXjTQOEzYe/u0JTP/YUEuozzCb41NdZ7w9SugLa3R7CAFBvE7Vo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758683394; c=relaxed/simple;
	bh=qqu/16q/nwiVq9LnDUVJRu0ieA7jHl2nWY2Ft/7ub/s=;
	h=To:Subject:From:Message-Id:Date; b=p6E51toBP3wFJtg23MlYXmUS+yOtPCJo7B+1h3F2FlqgfAynYEpvhLMf1VwRgxHG8cOmRR7H/DSQhk9l0g1oE31spWQtUmSmkP7QV36Tx6bln6z9lg5lUo4gaS9mtj7Hq/BRN0nB1j/oygc6YkNyuEp0LM5tV7JAujVxuDmWOIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQQwNg7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQQwNg7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB779C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758683393;
	bh=qqu/16q/nwiVq9LnDUVJRu0ieA7jHl2nWY2Ft/7ub/s=;
	h=To:Subject:From:Date:From;
	b=qQQwNg7nJPNIs0Ldd+RoxVSWGKenS9MrJfXBHZP19MWSVIexPPlBLjLyK1DWXxPu0
	 JDMqlfiuAcfi7zG9LSJ7ngD6TD/zsMS7a7iIY82BDlglTkBZl69MkG+9e15TlQFg6Y
	 jJA2c9xZNRFLM8byp54nA55E7ntlPmjO9z1h2fAX1M3R5r8SLRX68e5HYsy6rWvKFK
	 Faz0QfaQTZ7TqzJSXo/98dHLTMbxGvlsyZVWiMYZGRq8nQQVK6WZ+vuVqpGKnvwKV1
	 yLhh5+ni/lImQKAvObfJnNjlg+hDS6hhaiYxhVX3/58IzcNljL6DCtWuIKtt+Orvop
	 RA3x4fmMzHnew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96166CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868339358.25329.610938953651257613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823e65b844a1fa99cb9c62cc8f120487fc625143308aac9011668ff570e0d3a0
Date: Wed, 24 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758683393
