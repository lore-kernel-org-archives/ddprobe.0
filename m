Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C6432F75B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779209434; cv=none; b=LzCrlxXh1Pc3HOYjYbOeoluC+j5CSpUKGbiF6CX7plQnofXN5CTxjRZlQryczOKBMZ8IuxjOsKTW2fJNFAhPZuhIjSyy9KC6bedYHa7gb3toPFBIfNdJXQSB6/nO2xSbXSDj1NvX2GYZHyyddmvsM4wd/Eez2dNSfG0yjtJiEv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779209434; c=relaxed/simple;
	bh=U0XN3bp3f99aXTGdX4mqbg/BG10SkbPegewpYOqpQg4=;
	h=To:Subject:From:Message-Id:Date; b=myKlMtA16qgzoLonMBr7m853MNZ7+coPp6B2lOMCA4IKN8GbIIbS+FFCCbQYCMdtjUho5g+IKTSmRolSg/IqIHajlzWOPnd4WP/3s2/s6A1oxeoXiX95dWm1Ck7LG9jhijsTTSwkMjechIDC1SxA6WMiu/s6aNdimVBsFF5EAHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIS8jUr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIS8jUr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9692C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779209433;
	bh=U0XN3bp3f99aXTGdX4mqbg/BG10SkbPegewpYOqpQg4=;
	h=To:Subject:From:Date:From;
	b=lIS8jUr05e7wOKGeIgcsnTSeAOURmQjF4b0Q0uiqTyfPTtdr6qekz9nh+jQVxWlkd
	 URwdYGSGZqTXAZ4Ebvzr9Co7AmL4mlL6KPzhK8pztwNHNNX1vt5Sysy2oxevoOhvcO
	 RA5fFR6N+611/blL7UZ7yqZ7US26LIr2qo6FkxW4OAGQcOwNuZKXDyPr7ewLBsO3/e
	 JhfHjNoUIsLu/kyVL04tmkLFVjEm6qJw8E33R7EDvYR369Cb8JEcx8HrYAxzKUAP/Z
	 w6umO8SQXkGj0HRcu2smMaeEIdXJ5510QpEGPqde4BeyEq1tEWSzHD/GBG5O+2olHR
	 c9Xj8uWjJepPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB73CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920943369.32089.6135565578695354908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d8b07efd967f9e9223d14070242615ca76c88e7fc4d8c8fc863ddbacf03c2f
Date: Tue, 19 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779209433
