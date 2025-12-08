Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1219F86331
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765204974; cv=none; b=g9qaU2W9RuEohsVhX9/Vyv2TQnMEvAefkvzReT4BeAv5P1GSjqVggAfBmSQx8CsPa/rpqeiONFimjYiRJAdHk8ZjKu5UdbvQ+itggPH/yldOT386vjlHju2b1XUklzhSc6J9ci1OOMi/070sRUeLzJfzoJRij11nrG9Q0CJ2kc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765204974; c=relaxed/simple;
	bh=UuXq1iISc4m7oY5r9Iem3VNP2P7Ll9oWBUfv+94xdHo=;
	h=To:Subject:From:Message-Id:Date; b=R8TOVeldGzHEzd9mEcVJX5SqS5q3yyINiUIGwW2/3c0sSaF41KK91CiDpW6N8MxFqysJHouDghqd13tZ/eFm0FAeVfIOT1NlCj8cZjVFyEioalQgOQmE6qgIduAGb7nxOkBNA+ASZlR/aumHi6TPPRa9qdOWW7Ip+NCFJ1syEKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqbAjCsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqbAjCsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC546C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765204973;
	bh=UuXq1iISc4m7oY5r9Iem3VNP2P7Ll9oWBUfv+94xdHo=;
	h=To:Subject:From:Date:From;
	b=FqbAjCsn6uZYWqyLFYJV4GeaMbbTGqpMbu1HVK8bc+wZ8S56suTi9RR6fd3+rdXAK
	 VxhjAGnyw79+t3As8nlcholUQeqrohhiLqhD6SjBDpQI0LkdE9c+o5IsUxRuBlhPvF
	 ZbQSIpLpum+eRwFQpZh7Q/7QvrM8oNAk5bQl97aB6WYAcRcLU2zp42wmdToqeEwaWD
	 xMk1unHh3WBlT14UL6Hqaoo604adEBa1CmUMm4yYl4ErndnaAYv4b1Sa10Z7korQA/
	 MJ88Wh0qWh1WnBApt3g/lTeDBuG3XBhRb3na+cgG85p3/sLhN5TtkTBAAnvkIKBHD/
	 TR4+tqFZMqFpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956EFD3B7F3
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520497359.23976.7294054095784865670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1a9f7bf3ed6889cdb6d5bf85c5a3649877fdc84badb3c906668a301fde3413
Date: Mon, 08 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765204973
