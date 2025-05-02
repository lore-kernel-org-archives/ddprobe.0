Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EEABA3F
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746164994; cv=none; b=SG4ETPbA1m8BZFPkGGmcCqCOzciZZiYLjhMMIumGSVFvuppVSGuTg1woVz0l57pDnA4jnW/GWfUnX7WG8f9OvCmFIVWAIo6egTc1wDK0AenTk8A3C/ypGSSPVP5iYFs05G3ONZ1YSIuOeC29qfY6NLhJYoUd6igQrmZStTRDyjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746164994; c=relaxed/simple;
	bh=7Z6FCtPEb6j+jp1zI8CiN1LnlQNjVL8QvPaT0fnBj3A=;
	h=To:Subject:From:Message-Id:Date; b=RcpxGa6lgP5I2cFFSd274tzLDivoAeebjgPqZkMlyN6rPZsxaVGme+sQHw3DafpxdjevIp2eHMqkjWqAhSni6dT0YfPf6LH+df20I67YgdrvbC6KdRdyPrpwvTYO8fSCJWQR//8wOnMopdZ+9O+tlAbCTuK/rE1l0rXRPjWzk70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2cGrzH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2cGrzH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0CFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746164993;
	bh=7Z6FCtPEb6j+jp1zI8CiN1LnlQNjVL8QvPaT0fnBj3A=;
	h=To:Subject:From:Date:From;
	b=i2cGrzH1qnTGf3L0J/Q1gWFqmKv+744/V4TlGnU5Sj6+5So4NPFvoDAwCvct8V0bZ
	 1rqtkgqmo41fuPQWMfsMpgO4/apYI9WzOZRvsFnGkcD8OtuIY3cyi5dvmnuQPuIWAh
	 3nZ07PgSfvNukRvsSw0rVB/qdjGN79rVPnTLZdH0+IfmiIBmrUm7NDsZEP3Qn9vcR6
	 P/zY+trPonxUdCC+fGKLolKdYDuyflZQFya2ZD11/tnC1QSHyhMJZ04N59whjeLWTE
	 THoiJpeDvl4moGjpLzNXb45Ii8yLzLr3Vwa88hj/FXaQdzwCi923twhiINxl4Gfz3G
	 yeYLau+dYObdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B2C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616499357.19022.9409679251833611747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8974adc0d462d12de3cd03af60387f82a4f51244ad83c1fb294718f4106015
Date: Fri, 02 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746164993
