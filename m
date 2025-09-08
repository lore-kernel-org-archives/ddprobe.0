Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C4F199931
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757296194; cv=none; b=QNcGMEqnpgNuljzU7UEEa7tX+XdJLr52tI0UAzHsJyI4W2setva4tRDQMtaDvRQewCd9PnGTPQk/42qZQtaj1e+065obEOY8xmPTnrKYarqzx5wzrRq+gjf8x8Z718roGkgiKhUnE6Yn2RBOaiO6xlbgN+zUM1HuhZT/8bY6h74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757296194; c=relaxed/simple;
	bh=dMEdUnBH1sNNPLlTw3yFKx7K6M1SK4zNhPlh+GtErsM=;
	h=To:Subject:From:Message-Id:Date; b=n7d+Zc7GZXGevAP+VqX78QP5lqcTTR7DFginrTOoFP576fNTaAVzX5FM17n89hGC2MMf51f8Dgu+gXQYbLPLF6euyj9egoMlf4Mg9++ofAvv2ZyT2fmu7x9x+8W1933MaW8eA10cLE3zKzCOHXlyU7QTXi/YAXbgakdNrEKJIxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNkDe+tA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNkDe+tA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAF3C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757296193;
	bh=dMEdUnBH1sNNPLlTw3yFKx7K6M1SK4zNhPlh+GtErsM=;
	h=To:Subject:From:Date:From;
	b=ZNkDe+tAJ4GFOLpqWGDTFeT7w8/O+Px583a7m43KfOCrRVYT/APq7XO03+xt47bAK
	 ZPP7hZTH+t/QXcz05+Iiu5cYxTQWeqn/utopUjamMBjVazWCn4SCqz1p9IO+lbc6sZ
	 nLYBUAh58IswAKljVdVuRJ/MpeXQaucenr+tRn0nGZ9nDwBH9+Ot++LmgRi5UiKK5s
	 0v+OrHcFIoNlbJrFYZbEeTvq6UvvdjMeC5R7uq5HttkOvNqhVv1sF9nAI2gxEOcKmT
	 8NlLCsbQvo6LvpoWY2r0tT+HEIDdH+IDQHNwKuzRuBBR3YbJHM/k6tVLEkYa7c34ya
	 cjHJw7qJ/WiYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE17CA1017
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729619357.9689.3896908566388828411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0414ca950cb20d2b805f7922eee25f15d423ab6f40e16a0aa53c3be46f631f
Date: Mon, 08 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757296193
