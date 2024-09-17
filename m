Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD047602D
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726607755; cv=none; b=id2x75K8r2Cx319LcE4+6/jTGN5g0IBvjZGssXfBhBRNwejVYF6UvAy8ONsJo2suVFGbDPUkogIA1FuhtAKqztN4FbE/KxQLUe3cka6K2rPGY4L7is0PyzGSqKGOphScjCrxRtCtoOXC7CAJJpwnpMIGNxdf/+mFVeifnt49eAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726607755; c=relaxed/simple;
	bh=Z9rVUwEtSl08ol+UeDuDmc8yO/ZXULJ8fNFiyP/LKCI=;
	h=To:Subject:From:Message-Id:Date; b=WkAkIRCq6LeDmCxgKzjjLdwJgbX9MSOt0FbcohjH6fByBwPat+M/cEcWQaP7KsaVElBmVBAAO4YcA49u8lcpfDx+QqtzqT7tKkG19jbh+CReoqCJU3NnErpQh3IynRBVMG89EZbAVVoRBlF3VZw4CDw32273vs5PbihYX1+dR5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA8eXKPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA8eXKPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23A7C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726607754;
	bh=Z9rVUwEtSl08ol+UeDuDmc8yO/ZXULJ8fNFiyP/LKCI=;
	h=To:Subject:From:Date:From;
	b=dA8eXKPMk+09ydrCxh5TFylQgFI+Rb2wqkUwLox5AMQ5DbYqEBrIinxHLdHZ2iPyt
	 jhz9DhiFwALG1zM5h932elU/ltQ/HbU0wTNV59YyKLBHMQeAQBUpZalw2YhFp7IECI
	 TtJBPwYtPcrE42UdHqUgSK9qNVFuV8t2UNSqj8bVvsju6Q93u9daEjKynpQq5ZA7Dk
	 WXRYjJevEJXuxcE9rplTeJcT/0O36ZNG3Goh2ABPCmc+1OPiXB4yL5Ed6BjYo3yby/
	 4QX8WgxmX/j0SiTeobEQSr0Da8NKo3ECtRLzsAenG0XW1uvAZo3JoPiLX3mA7TE99u
	 UbgEJinUhMgbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369CCAC5A2
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660775359.9637.3360784553371834386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46eddcea3a55440c4dac65ba4a9d2c4074d0f2221e7bf87556266d1b50ed87b0
Date: Tue, 17 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726607753
