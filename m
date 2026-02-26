Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFCA8287E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772148294; cv=none; b=sq3GR82oYSC6RiLa614RBDmtHt2Zk5ZZSfpHvUr9Wbih0IiVwt6cHcI4XzZaOezEuLAbIXf2phRL4fLY873HdlzYvezfSKqd5pgIiBYnUXn4pnwpHaABv/MwWwNLcS9eUaDWdZHZHyQJWp0UMQeF3xovTaYB0MB7zFGP9E8faxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772148294; c=relaxed/simple;
	bh=YQb5A0uxxzBKkQ2TkL/+cKRtNNhKy2BQPrig2eDa498=;
	h=To:Subject:From:Message-Id:Date; b=qDetrTjGtYpGDfkyggrzwiCo0VF40YsfAJWzpNnTr8/RJU8Kg0mgfs1o7otv01L5KWOiRj2ShEoR6x2ssp3TOKn/iLP7PMPUDaURcuNysLATIb3Mi9+CDhen2/1syC46ZopUXL2vxKvGzBJNAh+921Sm0IZIKbAWrPOCvBqz074=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8vf1Ynk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8vf1Ynk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3691C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772148293;
	bh=YQb5A0uxxzBKkQ2TkL/+cKRtNNhKy2BQPrig2eDa498=;
	h=To:Subject:From:Date:From;
	b=C8vf1YnkK4sqickx06URur6d/u/rBHJKRLTWPjYpTK4UDpsGXEhVwCMx933UjsT6P
	 rWQ24AbmFMKdYpjveITiZKXYvTWNrsGUeRwYAr9FhavoAeNoina+aQzRfNYo1zYY0p
	 mmDF5IyGjrkW5YFI280YkZ0mn5K7MUyY3BReU9XOWameX9MZVodPwRRtay7gcoSrzU
	 Xw4gNk0XsVl7TzAQjQqSqOElA1lZLySNoRjCLnwls20Q2TguI/tM+IvdYwVQQZfCj1
	 WgYD4HS5uO10USCEaNYqEd9Oxf/TdRogClGkkN1xPQMqOYwuwnAf98S57Efd6fRlql
	 7tZAPfPZ/9+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9443BFD9E22
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214829359.12075.12617056270305819667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e745ea67533a75c884cc8ee9c089bb44dfd7f4fb719f9af248f89c41063cd39
Date: Thu, 26 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772148293
