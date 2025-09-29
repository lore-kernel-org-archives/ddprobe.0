Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDFE22172C
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759178394; cv=none; b=Ht1zyd2dwhhWkCwv+8Kz2v5JeNrzO+rPId+e4XIFN0JLGS8u6ybuMM2rln9Y6i0IMXppuhG3DT3e3HnBy80QowV3PGSFL8n2R1QE+AcZbMQnc8uDYOleA91saHL4ZVJXUqFRruhE0MIFceX3A7YBOcg8K1aHkDpEq4khjMRAHyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759178394; c=relaxed/simple;
	bh=PPmCgmDLxOJjIkjGXY1aADKLlNu43DFlg5cnpDaHBQo=;
	h=To:Subject:From:Message-Id:Date; b=p/tTM8IXwPSrvFjm4luyu8NwH1XcsKKIL1j9DDUoJmouFY04U+zn6seirsDqijuI3eCNpTVcu04X3Jx4DJIFoQDHRe6dk3qYnX7Jw4XtsooZkDFqJalLuelVIp4oaaDeonpOyX41FEslonuCB4P/iZVK/M+qNKOsqLH+MuBNcpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNgHq9sM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNgHq9sM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8AFC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759178393;
	bh=PPmCgmDLxOJjIkjGXY1aADKLlNu43DFlg5cnpDaHBQo=;
	h=To:Subject:From:Date:From;
	b=tNgHq9sMf0HAiDqBhN9NDB9gDwILFHm1IFrnDOeu35HVDGaGYU5vQPBrBvUb837mG
	 H7PcqU9DYpEnejSapy6I0SERf+EVCq+6I2sml2B0ztvu0IJhE4cJJuU0nfQdG6dXyy
	 gnaaEB1qZxcxRjvA/l5lGHKmrki4vK7PROyL5WupdG0jfZlumFd6NcQVyuaaOMZ4pR
	 QS3RLDtgEJZS62Y91+83n1CfmEYWQJcVzOgtU6ZTPeOw2WdgQbrw93TmYrIMch2aYS
	 PjTaNZHoDHrMf5o5eYDoRBv+c3poUiwFVMUxei3HW4iRWYsFgvHLr9GaPQOmvbYZrU
	 IuvIT1gdvECAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F66CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917839359.20691.10009318832014932469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea291c9b1bc1dfbfeac42b52f7e1627e99c052b43e310a64b74c1de2bca3259b
Date: Mon, 29 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759178393
