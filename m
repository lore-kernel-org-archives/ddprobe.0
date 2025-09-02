Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161AD2E88B9
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756801794; cv=none; b=hk+VDeoeooSHZI6CDxMRxzXjM99f2T8zVAwRJPZ99DlQh60kvxyIz8CxkMGDUMldmu7fNgNUfIL73UwrZSaKH64I3U9CYiQQDJzK8MWOic7jlgS5vNZYZc78XP3qam2e+GIZGvc9W4szHpyUEcJHOFYQ79O/zRZCfQiE/mwftiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756801794; c=relaxed/simple;
	bh=/Dlu3eVQKystHh4vkrS2gePlwqDd0iNwbd7SNdIbDio=;
	h=To:Subject:From:Message-Id:Date; b=QsmdjIBaWLjhvYlajQWkTnSYSyIfw7kS0Rf873LLVqY0idPaQRfCt1QBnkR7cwD9h3Z59sEzWE3GJjOoa1Iev0MpOltHhEj4HDFRgiAOWhJJTGAq5yVueTmsvgMUTsOk5qTyOudOPrmHj/Ldx+oFEgUxA/1/QODV54ZEJ8d3xh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVmJhm86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVmJhm86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF076C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756801793;
	bh=/Dlu3eVQKystHh4vkrS2gePlwqDd0iNwbd7SNdIbDio=;
	h=To:Subject:From:Date:From;
	b=FVmJhm86YNBpOR7ecHHjRJ6krdEOYqxIltXAkbMS6j9zU1XQ9rmRcHrOJFIBavtyW
	 XeSnseTZbQqG56BuM96lVfBKyKqD6g334tLy+IVGO3A+Bzc8SLV0gTVvkqB2dpUc6W
	 BVf93q0yG46EY6Oiq7uP6B+HxYbX7oM4pJ3tQ3NWM9h/OA1yXUxvCpwz8Wf3BB366q
	 0Ny+6h+dnt+oDCJ2j2pzAgJ3DGQRZwyLiDYasG77ZEnSlJMsojr3s2LFIHTeTG0HsY
	 YksiyxuyI4zX68SfBbU2kOyFEtUYzKMa8UunkFm7GIbqp8spvr42x7VQQJkvh77x0a
	 3Bh071AnHFT1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9A5CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680179362.16132.17317039292640249372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd74cdf89a77210cf8ad5501367c6cde1edf2802bc5484a51c68df23cfbac7b
Date: Tue, 02 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756801793
