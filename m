Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD99470454
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788249634; cv=none; b=RdHYCiM7DLlp+eSUXsAi3SxmAcZ0nDs/5QxSA4Z5J2TxOsCdeo9pfK6ebTb2PAFf1Bcj5BcaJXmudgmA0XPmKKX3uYhmETJRUWt3p5+nXyplQJyK9vwCvbAAY3B6k1GwQItAnVdbJKSmW9EL1DvzM4/gVpBt82trlx1hQ2n48+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788249634; c=relaxed/simple;
	bh=LK7ABPtrmLDOr6X1M6szwb69hWxgBC9JO0gQ9e5Uy8E=;
	h=To:Subject:From:Message-Id:Date; b=u2u6u/GMGtnm8uRUmAEWIDXxFoPWEne4b6n/qpGn+qm1mZwn33HBd6f0sKq+qP1FEPczRbqWF0Ze22Wvyvs9R7/p6krUHuiB+4X2CoMJJy5orRSzTotAf1dZ7BaIN+5wE/yMhobgmg3kkkLObBe8KBGVCXO12Oj3AFWVrVJcO8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5y5Fj1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5y5Fj1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1E9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788249633;
	bh=LK7ABPtrmLDOr6X1M6szwb69hWxgBC9JO0gQ9e5Uy8E=;
	h=To:Subject:From:Date:From;
	b=W5y5Fj1McrnzWwS6mngpQEvgBR93dQrxue3TzynnBknAj6Ul+M5vlY0W+CGR3Rr1R
	 pbwJ6tU4mBJjo4GUephVDO44ZZZUsLaOEUlKNcZfaGz9b71meVEckGaYy4Jvc9LFHm
	 U1Jd12PKs5NpQ5FzXtzStOMJ8zESETLpoVlXdBRKvDqBxN9f61gi32AwURtZ3GIgSe
	 OEwUai7qtrW6vNPSUdRbvQuP1kVrgcNzrpeTLH7bBK42TLLTXiyleKosfEwX8ca8Cw
	 vQ/ICOOgyL/GAqmk23PGxZsYTbzIB0TsR+QC2apcu8xxMBclcqYtA9W5qkSOxaQEsK
	 kcl2uL2V8MxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0BCC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824963368.21843.1979843915359151746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e30d7739fef7be5cb2c08728f4e5b1860eb8ba45bc4e9a0a0f3ec2739b006ac
Date: Tue, 01 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788249633
