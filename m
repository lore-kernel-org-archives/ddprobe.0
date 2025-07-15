Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE0B204F73
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752576594; cv=none; b=uaf1PMLAkuGn0N5P6wIKbykXVJ0eUySRusCpfiZZzPmk0b5TRRcYsfxto7uUg0E8Dizew2WjvalnDzDeHkISi9r/DLib5JvfVLLKNCRjdDUJsJ9KmhBAknJxpXq1bbOqWddEHcGVAwFJAjtXH9czPSY7KPBqVBd+YJIMUvP0Evw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752576594; c=relaxed/simple;
	bh=SRTdEpJP3qPrRyrTkVMq+X11KvsNcSK6RXDjhOKFzQ4=;
	h=To:Subject:From:Message-Id:Date; b=ZFrGg75JbeWCkHHYE7EpN2Nypr/DB3hisIEjKUrNy43beUPEIflxmasgngMWj46SBN0PF/Ty8bUvPPBUdgNouz3B/mAAX+AT5hDIgHJRnSQCST+Dlf0JTh0BT1Q9Qun5/eT8an4FZkwu79sUM97wG5oXlWNRR6dzbz5nisJoku4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+VnAQ7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+VnAQ7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752576593;
	bh=SRTdEpJP3qPrRyrTkVMq+X11KvsNcSK6RXDjhOKFzQ4=;
	h=To:Subject:From:Date:From;
	b=E+VnAQ7CBrpc7P6uxqvruVv20YGO92tXXb8a+RrnYWYqx1+pDX/ef7pErioITzI+K
	 3OMPzRvMl1XP8j2WFRjze+N5tqgN8EAOLxTQHKdSiT8mYM6UqMBQ3Vr7BwNQ8tNJEP
	 krR1np+L9cuGKs2+PUZDacfQgZ74/ZexH+e9ZHcByL7fy2x8L5KZLKdaT7oBEssFn1
	 395TCX3RlBDZC8h6JIYCAx4XPPwDWb13mc1SR9VtrCPyObp72V4e+IiNN3Z729NviW
	 rh9NovwRvbkGbtXhB6q5KkT1m5Ve42mheimzfI/MkW9CnyLm8Nv/7kzxkRUhkjf5Mp
	 BeEZrbh+38ozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A21C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257659359.15880.12712999831092036600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f8540f62c9b2e248054be8aadec21ffd59086ad3625deff3feb2e576239a1f
Date: Tue, 15 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752576593
