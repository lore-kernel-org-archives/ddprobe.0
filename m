Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB822E717B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782279394; cv=none; b=R2ZjTKso67n9hMTRrwAMrc4qAc/VVStLTBelpb/GNj8lp8yhrVUsyPYSyRkQwFjUVxv8CTKEed4yOyRmggN72S2aOUSrRkjzpBcOfHlZivgzATmUGizyud5v3HScsVxSAGjlS9wKPtDkih95Jt8lG6p9HykQRtfmQEuXK+T9Lcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782279394; c=relaxed/simple;
	bh=4ZAofSyRNpjUFlFlzffbStqj/uYPcnrq8GnOU16jZPg=;
	h=To:Subject:From:Message-Id:Date; b=d8erw4NmLUauA+T1OYN8CkntksQy3PszhF3RHeic07ZBRXfJjxPYri8z79Z1I6wOb9asJ6T+Y8nnfcKIUveKIw2+/ffe1SpJ0/piA3MqfDXo8pSZKFLgYfafS+Q2bDKI5neO2jyO+BoGV5jBzgGxp+opf/Z5qTKn+WUnPwoUOoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgwppqsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgwppqsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 055ADC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782279394;
	bh=4ZAofSyRNpjUFlFlzffbStqj/uYPcnrq8GnOU16jZPg=;
	h=To:Subject:From:Date:From;
	b=VgwppqsYIxjvG9MarPTIDLdN+pyG8AHYguc3TJt6TuYn5bNXxgzeJBNZTl1TYWgds
	 0Pje6Hk4bmOL6miRIlQ/lI0b1NSVppAuhvin65tMQNC1vUeJs7My3bQ1ZYlb/j2yo3
	 P9sOMbSlTzrTRXbe74Ug7icJqilcHQp3qKAKAP3MNL2J1WTpHc+5ZH8FdOC1quvUKt
	 t+0eTG3cVB746JYwvZ5sLk0ubhsYJvlUTGkNaTRxmGWO0MVzKkcVpd1U/cQFEbUNFF
	 Jhc44fNR2xPgVB3K6jGfzK+SwEfCDyvt7FVZqIxUqyE28ELtPQXMCJ4LhnkxdPY/DJ
	 OXz0BqdkCn2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1434CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227939373.18640.5553713295817115417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4968f00d64552c2b48d6381fbb0e1a807414bd92595b83d6ef5fceb053f261ff
Date: Wed, 24 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782279393
