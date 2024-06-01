Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA061D6AA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717264523; cv=none; b=glXDUeqptCA3XKDXA4JRdSdfAg2/aMmRM16YEUnqaQ2BIXnCE3WXelmnfiR4o/p8Zys6A5GgEgaxBFjOiSzJdoxQ8quoY54wlmyDPDk8Kig50BaiYi7iS9GHWHVxlah7UYG+SGafzod4RAwbYNhBEPP5CnIVijIwvNBR82GufTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717264523; c=relaxed/simple;
	bh=hZ4i3QmV8s3j9c2q09ZHSGWCv1sS/6hJet7qNUtyCfc=;
	h=To:Subject:From:Message-Id:Date; b=nLmWo6sMZN5DrzvsSs1TA+O0BIkVuNEPLoQ4CJcgRalyh7yBdvCBzsinhAR1HsYmkduuzusafFgRDVan8Hl6YKbUnG2RtH2OX0K97DJUqmBusOEx9vRrlkMUVboPXG36oGrBQlDQehUdIxQhMPSvjtfku8y7EZK4pJwZDCOYzrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGkm/XBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGkm/XBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E041CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717264522;
	bh=hZ4i3QmV8s3j9c2q09ZHSGWCv1sS/6hJet7qNUtyCfc=;
	h=To:Subject:From:Date:From;
	b=LGkm/XBPnA2ltbwKMfnl7fbpFDe42PJnJxntAPqnYnJgVhV7m95+PEcOgJA9lsYIh
	 l8i1tfQt2rr3965e9bOAoY/QQPUgLt/7/68PquTxwmef1Kv7Hx1ooVA0uucZJsNx6H
	 PXIa6h9glp0YQGjMGJWRwzdiM8Vs31f+Docg5eYtY5JRem92hl6PGekx5S2F4mlPD4
	 tmrmK0gwNttbLU7OAohK2chbephxCKftRLe8kokoWFACacMBytT5Wy/m8G1X1h3cUW
	 hA+KIaHR5ekbI7uIJMomg83Bxs4QOfzTXRvJ9ZA3tBNlmgxCGcowL3buGRdunyeiqy
	 G4xzt03KniO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB27CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726452278.28799.1081442808464114431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a444797848f7b1212e488fa1981a24125d94e38951041c664b61c5676afd05a
Date: Sat, 01 Jun 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717264522
