Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B3CB663
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726813554; cv=none; b=fSmUg4HRqFeO4ajggI6MaD7yFEBOlsGipPrIO6tiGJRDzL5vlMG0+Qsn2onBxi6Deh2vWciITtyHK+5CkwNy8VsYr64Ql8sD/fQOvXpbES0mgLEfqRJvOos5X2gN2BJbmlmQrT3RisbqtQzZN9QpMZes21Zz6rWonq37koFAjtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726813554; c=relaxed/simple;
	bh=Kdqq7QVaGUmXot6xXUoGmx5yGs72vb9693ChYaoPdzw=;
	h=To:Subject:From:Message-Id:Date; b=DfWmhBauGDu8Q2UFgspS0/CnMcME6Am6+ex8CRblBEFPWZ5+ZjHTWCYdY1eycMWffmDBVnqICxMWKbgyBPoRWsB/6DNmcz8QbbyzbYazDLKb5W6PfFrU0YoV6sb1gd+hbllmSbH2O2u7ak0IPvduBpTEMZF4PdXuKE5RnYrWf7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDWMwq0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDWMwq0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0001C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726813553;
	bh=Kdqq7QVaGUmXot6xXUoGmx5yGs72vb9693ChYaoPdzw=;
	h=To:Subject:From:Date:From;
	b=jDWMwq0/MZMQZpzoj+97gGt3GwQalfWS2ah9a/cl+WXnHTlX51uKNT+NY4sXVJC7c
	 Vbuof8EzBXRwf9AaaormFfEfySaFKR1yR7u8OL0kqCMZUwb2wPzvVWO2TjOQMLEARq
	 e1qa1BWRCUlIcy3419gqvNrbKvHXL+w1YTv1b2BVQr2q7My7nDNfhYlLQ1qdpEvUJI
	 tPHdDoOLlFjDJIk+PlcCGtu+0bR7SWFOfdkgPapKBgCMG4lhsoA9U3JeB04J04F6nB
	 YLxfc0kSVRQtjuYoySeVzDdSg3qbsI79U5KY+u0Q+oNGdqsAF/nNMP0u6r1fc7fmLj
	 epThMHvFcDOUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9804DCF58D1
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681355361.17763.840686330880514070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5fee2e272f04d552821dc02fb7d217ba4ce456740417bd3b98c8403ef3281d
Date: Fri, 20 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726813553
