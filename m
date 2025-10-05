Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D528126C1E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759687194; cv=none; b=sTN3ZOBazx1VHNQvKW+avEnqykW2kptxPNBAahqfquHLgxhTbr1XbaAiP0mj6PP7UFIS6QQsjKppqp8fRE0zUn9gR6Zo8LOwY9hwmU3V6Nq9aOO5syjyGwyEQmKMBLzmdmf4JWKhNvIdFE3hehgNZqvl3RdSUIWKwL7ZhGoOO/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759687194; c=relaxed/simple;
	bh=4QljTYzZ0A4rx+0eFii/bbqo0jtf6HxMMN2U9NcLxO8=;
	h=To:Subject:From:Message-Id:Date; b=c6JRs6xdcjmTv+oAuKNIo750yK4JBD6AKUjKh8g1gdZWNz7CZd/s3mamZqxLYFddCrD6X+Gvl6GWPx31kbXlnnYbzIV++1o8fSCtrO91ocYPWqD4ii12lrYvrxxi2bQ2U0qAxQk+m0GO2AirEQkXNjqpPPGf0tHZCVHJl6x2gU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjRU1ZKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjRU1ZKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759687193;
	bh=4QljTYzZ0A4rx+0eFii/bbqo0jtf6HxMMN2U9NcLxO8=;
	h=To:Subject:From:Date:From;
	b=cjRU1ZKXnCUxI6aRxO0qSn/RWlMpcvsJgY7mzCZgTnaue7KSS6SRECq+lms/9tNU6
	 tO7jFwI1m7bVusJMpOzdtUj4YrLIx4JZFcP8fc/oT+9mngK9I23eEbigkdwlmOcrO/
	 6UdEDEcBmaw44Tmr9Dmk8lwkYCN2HShonl6urkH6BEG2i8ldJ2lDJGC1W7kfRzXVVP
	 yWoU9QSNB9Lqhtsz6bZRhnhlSCM29Wzxxg1hExhkqJiE2zObV9jYVQ88mHaGGJnQw8
	 t2qCvl2OziMPxg7F9iWktQLg2BZubZrAYEQozeCH1jzSdqBTg6zwScS1ij+X3FqF0u
	 AEMp8bSGMJVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94902CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968719357.20720.17265075139164039613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7afc09f36b19087ad48c3d703ea1a80837c3d5432f0f31089ad1b05fbb4622
Date: Sun, 05 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759687193
