Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF963101D5
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756724394; cv=none; b=qaRClHfdc0o8LfVm6CpdTcEE2N5odKGD1bXJjJJuhjMwRk6m5SadeDxBzMm3+o84wnuUacWW1Rs1jzXTTlKriENnXIWHwyCCXYmtiAGT/58aBMsmxl+5mbQe8sSwCeKC58rUt88PD7jiyXXsuMmIXcevQvMZAYvw4c1ZN8LoKeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756724394; c=relaxed/simple;
	bh=hZIX9fEYbi8U4WgSUhtWrn3VgBZNd2hwvJBWv6xJJBc=;
	h=To:Subject:From:Message-Id:Date; b=Rm0BsDc1qF0OGHby3rVoNpWTT3O2zFxHWPWhDsRwKuE1yVz6PfU7ZffKQmNTizeSsBYC8ZF6ZMfroJ5ZGlqsOIiPkZ5WfVuF5EzxcRh9Dk7Exmsu2UNHe1apZzGv0B/UC2BPXnZmNNQZQN2KBLO26l6qGZpBQ0uA+WFyXjt62jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8fZSL2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8fZSL2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B7DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756724393;
	bh=hZIX9fEYbi8U4WgSUhtWrn3VgBZNd2hwvJBWv6xJJBc=;
	h=To:Subject:From:Date:From;
	b=s8fZSL2A9lmJp1cLf0OIczOHJKxlSekXWtwYmC5N4vfzgjCCbsPoE4/DMPH5k8Apb
	 KxdN1cg568xN2b0eZuiMFOOHKphcR9ax9fUXh6nDT3idORcY9TNxnrucht2zyUy2Sc
	 G7mEBg5K4zowB5TDwJhWtH+p+LD+MC0D4FDKDGY9Vn63/+Qd72U3bQe5hRU/DFNUeu
	 h8Wl5nLOuaadbVTz2eXnKVGo9T68UAcxry35EH4aLHZr53dOu+F5haxll3S11KqiGg
	 GL5hyWxg4NNhaSQeaPXUyONbgiKUluduSRA1IxdypvAhQYlcdidFh6f/uQbt8RhWqL
	 sUHEsETIZRn1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92382CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672439359.16556.5030687399486238490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def0e76b0c5f169b200c7c7016e7e2e101d47d2f4904f1af4e61af7b9a50296a
Date: Mon, 01 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756724393
