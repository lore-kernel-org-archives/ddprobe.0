Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2053E2367D1
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773090894; cv=none; b=kGtj9ymD6DjWY4R/6NirCC73GEMJMa6z5JJfEdYkGXkjZGCp6hyNxzrph1mD3oqqPMbOQNwxlST9ll1m1+Czb/2OXCPhU/HRLehI4eEwuojw/zjfeh85+bADzEhaVaJKASc7ttm+Wfc3+v4r85C6OhLudEV0Vl3FVTukz1ccVVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773090894; c=relaxed/simple;
	bh=KzxsWrDktvJhMipPIDKtFsQDaotG/gKZY+OvUwai0OQ=;
	h=To:Subject:From:Message-Id:Date; b=l/PG/Oq+MUyiTGOm3TV1jvzAsG1hp38pH+Hen7/skYsBIgdRmvO/DgCy8HtiPOD+Mt26uP5oHhQKSNxISexRY9JL+P6Fn8eZ7u8p5+jpKQ/tILzLAkz8OkVneNaxihgHVT9vwOuCN8CMDOZfoBwQTV2MILqSJsi3boQs/HHoqT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJy1Fsv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJy1Fsv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B058EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773090893;
	bh=KzxsWrDktvJhMipPIDKtFsQDaotG/gKZY+OvUwai0OQ=;
	h=To:Subject:From:Date:From;
	b=JJy1Fsv5am2QfLBf7KK8sUcEuae8Jx14zU+1fG6JAu0WWMEeLCxtlYwf1tp8MuW4j
	 +tGDlcUK7CNViBLA+NWQ2hdPNy0LVkBtv4WfFGrpcj7DUEhz9DouBrsO5AXsSRJ9Yg
	 m44btyA1PoKgywAc4Lz7J/awMQm1NEXpFZ3sVa+LJmBihrHFFppip9iWQFwunqQFxH
	 0w+LCxhHKYd4FNmlJxN/huPekveOhpWmIKlFKHxcpQA2yYZ+BCqXhvGwDnSkmixh5t
	 2uGCE31TEqt8bQ7HQQIT9lJVrR1+d2NCwnD7CDwtf6EfuwbOpDJ/yMV3I/NDBE624u
	 jXby0Flj5DctA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA2FFCA18A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309089363.2309.16337628159620649939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b7e190f2c20304334de8f122e52dd1982c02b71a728c2dff04b410791840bf
Date: Mon, 09 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773090893
