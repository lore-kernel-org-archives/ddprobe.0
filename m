Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E63D1863E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756592994; cv=none; b=u7sByP973Zq+dXnwUf8oFUlQwfuTsBL7sVDg0slLhkSxx0hXxoVEVZxKe3wnWKW15ONvK/gAv9CFVzHd7qNTplMGbClZZso/vwupdi2rQLk6PhXg7ZZPp4zFay1eOyFOsUbhMp3HTeKE545ujUfB98Eb7Bcp4qXSLqa3dS2XTqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756592994; c=relaxed/simple;
	bh=QCGfiqMd/z9Ictku4KajiAbzG/346takgQ+QAjBSdQo=;
	h=To:Subject:From:Message-Id:Date; b=F51ALc/8SL9rR75QtbE8WvAggEeMszUR+H0BtzICGzf1HkS20GK+yCoQc89ieIGOYBphJFv/zQQsRqRzmp8ta9znIvTRIdLTQrzDNDw45D9EgWpBTDSMVdC1FhhiAWgvkJ7b1n2Hy3u3uCYOubs1MbeU8NgkOSv0nLXWGjTLCW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGzb3nPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGzb3nPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756592993;
	bh=QCGfiqMd/z9Ictku4KajiAbzG/346takgQ+QAjBSdQo=;
	h=To:Subject:From:Date:From;
	b=UGzb3nPDIeTH4BI3OJjybp0PBU3T72DLUOqG3BWWdYl0En7e5YUjjfF2p5fU2mV6O
	 n64FWX/LBKT/MBqjg/y64uy7uJgXvUUtLvwuN7s+eWqnG/2IC7wjmSnPr/DFdAPVtp
	 eGZo/Z7w9astz57Wc+oPlzxCM2uCScF+Ah9fxWvcuXen8s6YqS9Lerm1wFZ6+C7Wpw
	 SP/RIeiJjh9tvKjD/2y9tmIoH4MVkstpG2aascSoCnAvjd5VHfR+eGcutkcVD/nnG+
	 9Sq2WCvp8UpWhRKnx51Hl2fD6Stuwk0kYvFfZi4gGNAIr1tjBaXf1OWm6TqWbiIw8C
	 TvZiwA+gC8rgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90241CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659299358.22367.5700642409608484347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b169922c8087683a3f62072cf67c33e1fcb1e1db219810a065fafd6c8731172c
Date: Sat, 30 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756592993
