Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF7F17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745087994; cv=none; b=cbkuvR0DsNXrVDU4RHVMNfurT1mq5KQVfMN/duJ08vXO7m74LhFrpiMp0LRIDPyfVvqix8AiI4wjSUSQHA9sjtox6RFsszsH8R27oW2jJYchBrT5L18WIM8x/QoRjeChPIj0XXMvtIoLREA6BneVis5eetb1BBJ/7pEOZiXu2ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745087994; c=relaxed/simple;
	bh=0ixr64t5Tsf8IM/Kv4bly8PScB9LVOxJJhh9G+EAl1M=;
	h=To:Subject:From:Message-Id:Date; b=QxsN0XvJRprIzGoBfzXq4sTzUeeR8lqDim8QHl6zvdRX7hMdKAqetj1wNaSe3C0EC0jIYDr2mF5wygnFKzPw68uvCR/p6daLIilxjGp0nMjf33mXoFuUNkMPri3/eXKkRwBPjPP0eolkbkfc1pSH6vO16KZc3B5WtBfRu7lXXyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjMAvSpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjMAvSpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9950C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745087993;
	bh=0ixr64t5Tsf8IM/Kv4bly8PScB9LVOxJJhh9G+EAl1M=;
	h=To:Subject:From:Date:From;
	b=bjMAvSpKf45LOBdo7Ley3Lk3dmoMFUwdA2gi290CM1elYMcRi/cdKRHqdaYU35AFj
	 ArCw2AAJc344Za5NibYqv0geIuDiSJ5dfyC6VoVBX5M2hGNdwjppcpPKoFF89da1jn
	 aXu9QpYKZe7VkUn6GtnwNXvqp1FnhNH+kf3iGPaCN+LsiKvicam9LH9b3/DWCiOazu
	 HfLKSTd8K56V85+tEMcWuVdjgPTNU+bw6nYXNElq9AHo1UiL3W5TIV8U69m3XWLGqV
	 fc0g85BEYsN4ccN77bojYBhglqJ5OAtN2rdDIcLfJCZYJhGWObQeR/R5ho6HPSMU7n
	 f1ZNVy7y8yNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1BC369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508799357.301.13720417417190911332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889bb082146512d7a087d936e8ffa1d1855ece9ee22c922c29930bfcff9a0cfd
Date: Sat, 19 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745087993
