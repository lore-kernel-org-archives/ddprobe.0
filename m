Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F2A4C81
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713145163; cv=none; b=QJ6PM7BzqmRVp3KRiOe8BNMYk6YsZ4D+v5IZw0Rl+PemWM8pCK7DVl7iIhp38dVye2y2KuhPeKNl5bB7oYc3u7QPrG1heVXyR0z/ECLnofFvpPZaYW4cImKwbCJLLCYjpBNRcdY4g+NUDYqi910io3lZrv1aAevzC4tHO3PKnm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713145163; c=relaxed/simple;
	bh=TMLZP/0rMiZKTvKsi0VC6t8kIOotvZCYBxCdYzuMOdw=;
	h=To:Subject:From:Message-Id:Date; b=VyL04VxnvqkxFNY55Mx/qpY7HzRiftofCxoaFB144k22hOcXkBbF38lG5Cjb6RQkUe8K2ZRmOeNi2NcLoj9p35G/OsLiyUFzNBmNUQtE/aOFXryFPmFT79w2aIHcrjOcWlVs/yBfPDMgdAPAfS/Rwxe9K2guqRb2ktg6mfvKTEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOMGz9qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOMGz9qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D04C072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713145162;
	bh=TMLZP/0rMiZKTvKsi0VC6t8kIOotvZCYBxCdYzuMOdw=;
	h=To:Subject:From:Date:From;
	b=pOMGz9qnGvzmkFDPuEpeREVaLg0d6+QKVezh3lrNudNug1UKFKlY/V7Y6Hu58oMpy
	 qN3otURTCOhVzeNNvmdZIYT4a2AcC0N7eLXmnTTASdrz3xF308ZGOvPiDZkRrq4gRm
	 5eZjRux4suSSHNcMekOQpcIDU5j7lbK+5jypCiMPW9fneaxlN1c5pARlH2xAvonGo5
	 +fvFzznPeOg2FOFAZKglquVGIGVTS49MWGsVGMemKSWOLnKodG3+iToWFY8b4w/wsB
	 7ybvUVyZVyl6fBpV4hJcw27Ng9U81shKrmTXGLR+M+ER3ptdTiNEtRUTZrCLqGd9lP
	 7Yp56kNJWGS3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3950C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314516276.23501.5000752272099879310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9fb7c71781a77d718c91a19adc3eb99fefc68027e2e88659c928da7d5b2bb8
Date: Mon, 15 Apr 2024 01:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713145162
