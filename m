Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321FD2512C8
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765314774; cv=none; b=Nu1XFRVAKBxxYTeIbwaIh0CzA44lHlm5ExAtQ9SqGNgbNyGE08ckcTBjqGzYVbuXNQgLjDZrHBlzwUgdfvzOF/1TYHwVvaCpc1eDUieyJDOJnt7gXulrqTxLkVrsdfWvV8tr2UqI9HwykqtQ8edP6pq5uDyROXdEX0NusoOYf9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765314774; c=relaxed/simple;
	bh=0xsEC87YeSQORhwrdBN1xknc24k4rx1/UQiEawNQ13E=;
	h=To:Subject:From:Message-Id:Date; b=Q8k0+TOCC7v6Zuzy55w5xIDcncBJkH8Wna0UD3DDMyzwiikz9JBlVDUZE2XO1i6qJ1F/42WdFYReQ6YCnYZRh4dDcDR6gYeco2aFDJO1ok/OA5xiWKaLW1rDJE+XgUazxzPGQJ1/0gCK/0dXOwPe0wSbYXuKzsnB0J75AZYyXJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOVQrruX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOVQrruX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D1C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765314773;
	bh=0xsEC87YeSQORhwrdBN1xknc24k4rx1/UQiEawNQ13E=;
	h=To:Subject:From:Date:From;
	b=FOVQrruXjalhitEfh8KvMck3JOTVcII01CNRy4Rlcusl9oTuWeQl35WzvNpOY9qS2
	 Z9yqoH64L0uORmrkakOEJPuS5i/p2PbqbXKVS0JzrMDPCNPrAGatFFJh1kqSZzAudU
	 UUVed68EAB+ib5Kke5FA4n1xZFpo2yAfdLiYwuch5xEpZCnh1asUHC/3n2SQPyfsX1
	 BvCHM4mwchR62R4V45ek23VyFCk+uB+hwN5JcGlcJ35itX3ofcW3FWf2ucG3u6qq+9
	 cKg8KqM6ctJycmEd6IDzbuthNF46PJqOctoZQDK6hmIXvgy726LlNKrUnojkBGT90U
	 wnt5jxlvgqmcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91806D3B996
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531477358.18184.14360081144103873135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d88ee9b33a9b4e59e966d1e5dcb811e16e8e12f09cac0401eefba202ce405d
Date: Tue, 09 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765314773
