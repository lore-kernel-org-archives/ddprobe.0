Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E2317A305
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751128194; cv=none; b=Gc2NN0F7mAr5jrP6w5UZommmUFVbLE0rlGFeV7pyZGJdIDgt948q9Z4bNkmfsG0DspZJjIP3d1DtwyeXSU7EM5oMsiSVCce3GOfeYsIxsbswRDiEeDmpTfA+g0SfHuL/6o1xWxUFuEJ9Cxn8bhw9j2Sp/CzkBkKrTiYSJpfsr+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751128194; c=relaxed/simple;
	bh=AkZCY41kwMkbtHsztzyoqSMW1BzhMAhh+emgNSrCfqc=;
	h=To:Subject:From:Message-Id:Date; b=MZ62dMDQVtRwLQTfeitTJK4S9+NtsrMIOBPMUlo55OaVCKTIHAvYVVKk4rGdC2X9ImHVFul46mBiQxMD4gbC8wGo05ef0nk7cP0Q59rTDoOoQ1Dbhg4O3NvqwB09sjRwufjuyHzsD0Llx1pMtLKdYLo4ak+7egQm0kp5lkw4Kdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siqj73gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siqj73gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6190C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751128193;
	bh=AkZCY41kwMkbtHsztzyoqSMW1BzhMAhh+emgNSrCfqc=;
	h=To:Subject:From:Date:From;
	b=siqj73gzasaWsshx2BiTfwq5MjKoJ+uLqQJ+JBjjy5/RzWQNn65CHybzWi846T26M
	 8yWKuYZK4tK9rdQioZVjvjz36DW5CW4I2aEDQYCJrBk9pTOBRAHaWQmSmxGOnWcIOI
	 1Oa3A4nhjifZY897WOaVcLdRBQV5EuzgEuwsOZEbecnijv1b31Sfq+gkf/0wBvd4os
	 IFIjjLasMaqFnJGxZsM27pR5UP9L4+xtYhIVU0/FtApbJv4OUR9KmJPHlELiQtP0/c
	 iu4zr1PKfaXw8SzOB8C9qEB9bTQU8lrQ9cFyYboTK5XmCPBTNwEJzAlbvrpIYAHeIY
	 iH6J9vTB1aJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A0C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112819358.4223.5838020738020635392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ddfdd6a46ee433f8f640ea6a9108714f166de8545764bfb32e3ac74ae58aeae
Date: Sat, 28 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751128193
