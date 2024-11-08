Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312881E0E0F
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731057954; cv=none; b=TZzAy4QxeMj7wMn0bw8Yykajw1fEvzqe6k9XIIp5YYK0CF52UgdBzDlLyfDOKT7zoKqc4b/oAmt3CPJj3vRgiW7e1RTxRcAdLM6Ddv566I0pYBQhePMTB2sspS8H8redfCDKQiUiq1B5NaO+l0u09FKLhN/kSAevJZJ3CI90boU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731057954; c=relaxed/simple;
	bh=QHIcyP9r6JU8jm5yRQpJG6RmfEBZHelTrfOY/0/djUQ=;
	h=To:Subject:From:Message-Id:Date; b=JBBGV/dqFPauXxU5Q+1UCi7Wcp5JDs/OjEYd1J9balR7wbXRWWeptHJb0Ip2mpeyxZoL2LHF+p3tUSIdkoIjyfl9sy7PEew3Z+QxSpUSjJxLvkqn9BicKJZWAqcvfWg0vNqErDlipduzTx5gJQ3iPboxkRpw99hBaeP2jhRLK+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qS4VdwLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS4VdwLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E6BC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731057953;
	bh=QHIcyP9r6JU8jm5yRQpJG6RmfEBZHelTrfOY/0/djUQ=;
	h=To:Subject:From:Date:From;
	b=qS4VdwLtvBCPj9uyfNXFmH3mpMkiV4HOpRs1dyKKsvDlpEUzhE/9JDH+1IPfW9CLP
	 AKbGMFpY7ZmGW3QgcKry+AupEfHMVq94n3b7KPR9MUdHxYc0z5iVlMTGDNfzrdjhkv
	 6K9YC6bwClhsb/F8md+hxNNAVQSgtTzJYjni0DY3qNkMQvYHK8/LrzEoD9pFIQI2rU
	 e+ivMFH3JfxXqe7HsoLWiYBG8te+bjx7gHu55fjdu0NQlKFkBajrfKGjHVNVBkkhN7
	 ZOn3eHVGARztXDKYRGHJKBtvVgNi0Q1AeC3qUT1XPSXDPx5+JlXO884YHE82BNA9A3
	 AUglA885FDopg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F1D5E14A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173105795359.16756.10325865883763495711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569946f4509fc60c1c2fe3759a7c62b4a6f32314fb97ca12e389d35e71e641c8
Date: Fri, 08 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731057953
