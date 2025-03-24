Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E75D61FFE
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742785195; cv=none; b=GnAwDUguPzJjX0bStkK0fIQreRZQr4uUIM5c1TCwPzaJdA6eB3dWNLVgf1rR4nuIT5mzDBxTV8Gd2weH7q8dfi0VL+LLwWEWhsK9gMQGTwHYa40zp+6cSRzC0tOKXC59uM12zhUhrpA3MtoMK1AM2XT11S2+Q463KC1JctrY8ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742785195; c=relaxed/simple;
	bh=TDospyvYg+Ftgx01Pp7hRJavClbXCQyF14ewv6I7Y6g=;
	h=To:Subject:From:Message-Id:Date; b=eyPR7zZTpWR7ejcMj0nEtS/i0rEfPxk3AJ7BavjV24IT3E0t4l1E2+/BWGsFb7Rz1+tcg+4/+mLiqhCHyswsKolrGIyO/jr7rXqw7ykbc8m8bQeqjv6QssjFeK9RaLG4txYBz6gbaQWQciyiU3YDYt7MP6Tr44vQPPF3m4vgchw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKAgF/oZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKAgF/oZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B18C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742785193;
	bh=TDospyvYg+Ftgx01Pp7hRJavClbXCQyF14ewv6I7Y6g=;
	h=To:Subject:From:Date:From;
	b=GKAgF/oZdGG3Q11id9dRjGMOtzdYXdML/Z4XDfztgdxwt1c9U9hu3HXjw8aCmX0fT
	 nHL9QImajlcfrkselJeb+ImVHNccFYDSGlg1J4kUPICRGe63ymBzCV229f116aW2SB
	 bruuyoZSBA8EV09BiHlTsV6fHKw1dFfhhUV2X3CdCp/9BAHTjw9Cg4o495IAIv7EmM
	 3Zti+AuMUSEqAappMxYBd2TMxXsrrSxpi5JSyp7AiZRZf4X/+++FjtyahQ9FbRNOhI
	 tNINNBv52o3HCdyHY7PPdIqnjPBHojUHKJd6C8puVeTNqrU1Bj6bs0mOkgx3HqD972
	 tLZXjz3TI5S1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCF5C28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278519368.29713.1627553920469012795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d500c65f1d442713521bd68384c08e019fdf42840504606a85313bac3be1359
Date: Mon, 24 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742785193
