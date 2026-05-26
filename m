Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D05B15A864
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779776554; cv=none; b=bh2DOSBrvHdzGxI8Znn7VFTLfGxexW6s960SwqREKyxSziZN5MICpGicm/VzRuPAMxNprwrkyttYKd5b01VGTdsq1KBzvttfnNAj3Mjn5wgnB2pWscDbqToGaoA6phEyp/GhdqQv89lgJfwFSLeNNuc4ml02b2H4fCLZ+rqZtdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779776554; c=relaxed/simple;
	bh=wQ7COeC6oM+TKsH5wncknuOTNxL7L3Mcj9FW8gRVSUE=;
	h=To:Subject:From:Message-Id:Date; b=Cc4GF+cbr+b/4496a0cRydl1FREUZEzzZ/0IXJAGwkdmtN63B+A1wPOr8bANFLQcc0fzGLW4nZYMYIMOiDnJT6JA2V1vEUzPYGMwW05Eics5VZQ/cKTNY2W/FWqTC4pB/JS9yDzFKdLaGqCIuEipPw0KavDXPniBHlfgTD9lX20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5r9UdaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5r9UdaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5A9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779776553;
	bh=wQ7COeC6oM+TKsH5wncknuOTNxL7L3Mcj9FW8gRVSUE=;
	h=To:Subject:From:Date:From;
	b=O5r9UdaBLCwRWrJQcfThRnBwy8kqw7++v4V8T9keXOXWV3BpBwxAfutwZamgjD9hE
	 ahDTt9CioB47r4nAq8RrujTvqkqzkq8G8wUShZUIMd2AeoeaJIK1PEKe8poJW5qFdq
	 iLJaglGvxoNEZ3raEOGsx6JSsRAB/NmBfVkNcZ/IlrJmkeO4aqY2RCUJ1zGvyQMe4a
	 4PKFSvDkqf8QS43KUnUU4sC8cVr4df/ltzK8AMgnYz/XfkfuNft5AtTsHBTC5+Vohr
	 jK+8v39q1NTctTgTNOjyGL8JUigFHgxIuv3YdU0X/k1WFV6VB2xEDcPB4JTj9t0SLN
	 INrGvgyahYjzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA87CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977655368.20132.13205679053980109289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f56476eda88cd9467ad5c86eed2e65551fd5dc49ad3dbd763d55c993b447f76
Date: Tue, 26 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779776553
