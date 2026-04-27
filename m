Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E682EC0A2
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777325854; cv=none; b=JnsRKasSRQ1X+t7kCtXVoT3ezB6BgqKGRwD7UHSH9fPw9SHECajKJXKeOJQRE0kX8oK5fhz3vtDO1YO1Gh+iAm+jpGnDrpTNOClQtjkH9ARF7/nDK/JWQaA/cIMke13SN2LS1AHrisb7McsfGLhzKy/f5vXSUR7b0gbstw6HUZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777325854; c=relaxed/simple;
	bh=9CB8FNnx4axVgIJf82iKQB12YFgaJnZHdoB20AmbcnQ=;
	h=To:Subject:From:Message-Id:Date; b=D0h55ybc9T4Aw1HF93a74TKY6ek4NdSrFOnlhAb4r7Tu5AK+kwWP4FO1GhhZ020XipDCWnhMKkBv7ASEmR+Dh8AOw5xZqVkYRLixM7+ooYI7dMDaU3zxWCOgOd2ac1BPCLgb4eWwuj+bFdvTLr4YACQFKdxbKeUfcq7lvcg3z4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF7NBx3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF7NBx3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DD1C2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777325853;
	bh=9CB8FNnx4axVgIJf82iKQB12YFgaJnZHdoB20AmbcnQ=;
	h=To:Subject:From:Date:From;
	b=iF7NBx3oQ7dJDJBzBFziLeNUN8t28nmwekZnvip76UbnqKQmyrXRKxCVNuq5jZfVz
	 CG59batId7Bxj3PrqvBNQSAQRpw6RDcWoR6FeK+Q0FX9TsPykQzKZGfYYZiVJKLEro
	 yzP+Cw2nNCoIoqR4DndNQvrfvb8M/1GEfeqCA+5spiRRbVe9G7DZcsmBw42rouSrcA
	 Dz9TGRNiuyrllrk2d9DnEsZsi7X/d527e+Syd6dsyOKkSDb8IGaeSwuMQurjqS0zAD
	 cj7bnM6TgVBscvbame2kksJR3x+9iEznWZrJNARDVD59aPt2r5anq5PSBXGICA+L7H
	 go8PdEPElYJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4FFF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732585369.10804.14483515317334848666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609e72f948b2bb2d971f20439d9653afa20a90c4d42317fb96a9ff4c8f1f13c1
Date: Mon, 27 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777325853
