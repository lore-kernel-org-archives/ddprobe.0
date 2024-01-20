Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C673137D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705727897; cv=none; b=KeVMTcJ4VJFSkOL8Yrtzf2K3UElhX3G4tgH5u+I1B+FNC5nnT4YyqqwD9nG/tm0N+KLifoHHmkrNbB5cJXABsh0JBiXmoShBd8IYRlVHPgdhA6mXRPGDXgQCp9ic73rV9I251XXhSR7ky7A2BNjhIx3sZ/mHpcCXe4IJnQhHoMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705727897; c=relaxed/simple;
	bh=fc8ETKutE7E7uk2fc/shMUr/xObXMBVR3/7z6S2q5bg=;
	h=To:Subject:From:Message-Id:Date; b=i0B5r92ShJ+zmT8DkZEPVxWUGo0r4DVRvnQ9kZU7YuNR/FZyIXewNJaNNfFZtTont1o5s/ceJ0N1O2/JbVsDQ6yXlPjzeuM1sISCkqAYkVJ1Q9QocRGijBjsDVhfFXUOtdADpUsUrvYR9SChWpVllpEK4vJSMeedGz70fvp+M/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMKF8CYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMKF8CYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F29DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705727896;
	bh=fc8ETKutE7E7uk2fc/shMUr/xObXMBVR3/7z6S2q5bg=;
	h=To:Subject:From:Date:From;
	b=OMKF8CYrAEWaHncogOkKPOKVE49m+zIhPb7lbsLrrU9+lKFRY/acmh915PI/sz9u+
	 zyyrvPz1TNERTDPvulGrOCV4h5j7pZh/5TRBC3FDKGhWYxs1/SSjz9qVgbBkfv+8Ha
	 LNW3FakWdHf6rcOEfhVjGkVQ/5aGhaC6RtgNxRkF0Jh4OJHiFxLoOj0g8CAYHYnC6/
	 ZgPoTeB2d4wYJBdtF9MNmwyoztCR3RKuBmwcBg3N9U9XZJnpviTfhNL0s9aOjmmShn
	 bGDLlhqcCK/u4vJCUrQSmmPGsiBXly26asjy2rnZ1Cr5Izru0oJjKRigHNjc7UhSoi
	 D4rJwUsWD403g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EC6C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170572789637.31261.2141996224468599922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189bda31d67900e9960eb992a40014f0b182f0948507a8d74096f2c5db664f78
Date: Sat, 20 Jan 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705727896
