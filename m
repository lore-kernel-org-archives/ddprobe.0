Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4402515F336
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717786643; cv=none; b=Y1CEQxhePSOmqsuinmXp4So/hdeR/uFDDlxDBd9h78WpZB9tZwOHjTEqQdVSIz8ZrQPMzrKZ6qVokVtGGuMh2/RCsGDT7Viv3lWKBeJU1syrTzXbNaUmI8da1JhJV7tAbK5FNCYhhpLW0PwzW9CmEFYwoRlbRkVxAA4cAGq4+MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717786643; c=relaxed/simple;
	bh=iemY51uVPApf9ervQoqkXiJdp+es6auc/uzm8tuYVzQ=;
	h=To:Subject:From:Message-Id:Date; b=JpQ+ngAL7MTTpFq9xRseWNsIljfiIA0OaYLr+ihTWJhX38+FsZwMKuyP9TlFNNy5YXIJR6HEne/sliy1TvPIJ2pLBJuCHMIM0O1X1yifQ7hCfLoitjXmHn8XqGGQ+VDwzIWL3AHwgZdntI+NoBRlctCT9RmOPnnRX4Kze4xDDEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCXnFgyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCXnFgyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14ADC4AF08
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717786642;
	bh=iemY51uVPApf9ervQoqkXiJdp+es6auc/uzm8tuYVzQ=;
	h=To:Subject:From:Date:From;
	b=uCXnFgyFZjkYv1ZNrvZNdPnA3AisinMcCmMeGZRrQfwQEFeRevxczXOdV71oujDTi
	 fJRD4uHcNhfhlsmValDc70bYxZYizga4b7lSitJXprYK35n9mdlZKcSbwC6k/xqS0E
	 j/G4Mutr/h6HMJ8sPkgUiejUklFS04mCow8Vs3blTD1/SvbpsmJJJf/IXtzzkyZnX7
	 bK0nbI07fkggWbirlo6V+/CUuAuPVlE5KvTjBeEt99J5c6ci8Eq68mlWUK0mkGgRyG
	 /izXt6q2OdKT1OjbNQPjIDsNzxwAEQ27iL41VCsonvhxsu9Vdf6ErKfM1Ke53H5Cp/
	 Qd+C/IPWyoKOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA1AC27C6E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778664282.13433.9542784340586295306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe4e81429969054dd8a91a52c1861ed3dc7c8a7c9bf7347e141b4844ec9c435
Date: Fri, 07 Jun 2024 18:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717786642
