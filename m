Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3808A345CC9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782185794; cv=none; b=V6J/iv/9P8/pbniDcbNU0pYv+gGL6NoyVjDA1TqGFWe78ljad3EZVn2c8y+SwHHALpPFT+fW4gr8msPJgq+7E94MRI2i3qTsg6C1BfaFAk0PL6TuGOcRKRbhRjB8V8dHe4Nc0grYina/FJvlXG3nfpd+Ji7DwzHdLLEDXRbx5Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782185794; c=relaxed/simple;
	bh=5GMrlDS43lEjTRtWV3jGVnzOpSrSGObZ9SQHngnkjbY=;
	h=To:Subject:From:Message-Id:Date; b=mPNXe4HpRcBR1J9QbuGe+nEECh5hAIfLvoHxq3qpWPfRaLqeauZv24YpAh2VOIZB23bhO9oYMh9K4m8Ne/tFR5atxn9cUeZ4KsDmyJ4A2AexS2iKTpwi2t2NJ3I07gWvHxvlvAysUoZsCSVYeOAXTDge3Q+XWtkpFnQ/NogI1fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XD1y/NFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XD1y/NFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4189C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782185793;
	bh=5GMrlDS43lEjTRtWV3jGVnzOpSrSGObZ9SQHngnkjbY=;
	h=To:Subject:From:Date:From;
	b=XD1y/NFLx5Cb9XqoOy4WhzeXDDH3pBl5MyrXzt83tqgYdJGQS5C3LNn0xjQrDwnMO
	 /7/kCWf0B/WfhkKAuRDv4CLxnTRyqGalmchvR5F/BG3tO05ULpJVpPzSHuxcTDiP7n
	 yuPNdWzlJSiqpqjzQh2EvxaaKjwwYLpbFqjBksc9ia4BP9hTXi7WppMlSY2uvf3Fqr
	 iB0HCEn9qVmN0A+I4RwLu9ZhrGNKL31dpcIr5feklblm+XikP4OwGJXVB9WT6p/hZY
	 +p7i/xQ2jv1W7V3pk0fkKy8LL6uPv68yt7TIuDPgzZYCxBrrVxyNUfw6W1oeTtTaai
	 CpXEhkjIOT4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2FCDB475
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218579369.8912.15415485791190510900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af9b4f83fa6beb54584ac9b515536320a057f532e0558f7011b1152a05aa13c
Date: Tue, 23 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782185793
