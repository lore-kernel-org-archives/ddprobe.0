Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E717D7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748313594; cv=none; b=YMV+HDcYXti2DFZDPUYwbUXN5l/RmzWovAG4vuL+0K6WAqrLsoTRb94xuaV0qX3G1DdtIU8e31QA/MGyXo1exA3ek5Y7WzXbHBAcdYCpGAvK8Hte5f4a/3h6QCGvS+UXwAx3ItZhnliCE7fuzdMlF52FZDgLEp5uOYymUhzAvYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748313594; c=relaxed/simple;
	bh=Wilpak/mxjAEWMJtMgWWWQrkPoQi5CEUTsrGIL66x74=;
	h=To:Subject:From:Message-Id:Date; b=CpgZoOFa24js6E2DLE/sTLvnapeFQSZ1mvNZLry6t6UuoEOoBHjRSXgQZpl2eLQEJxtb4Ow5e1H6orK9xS6HwAavTff8VuIKDeTpzAjKOoGRm/EJC+EwDn8RfA4SFC6blQu8SH1I2lEMnbxtVgc0bK8F5BWKGSS3ASbBZzOECv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEdxfu9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEdxfu9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748313593;
	bh=Wilpak/mxjAEWMJtMgWWWQrkPoQi5CEUTsrGIL66x74=;
	h=To:Subject:From:Date:From;
	b=UEdxfu9euFtleAxIsJdi+ARQHiepCfhtlyioOWMMmS/yooP3uDmU2Wyey74SXjqYS
	 bdzcq76/qNHBXBCfXw9TF9hHPJwKYAgF1/W+2ypFbRtPcnsa6Nsl2nxobo30Hq/V3M
	 DvqAM1piIuSerm3YaLXUCBMEU8BzWcBHWn4Q1sTUetHW2XJoMpARXuRi+Gotli/TKA
	 HkMQ8D2ivUw/CNm1bxGU/2T56shlS6bytJiqCAczgMB+VOAsT7ph5BMri/kgQWCY2I
	 oJulPkZXo8g6Zapp8CJlss2Qq/MnehUg6lQtNTQPMgYkQHp4/AGp46tC95ngE9ignz
	 LPLUns/QbWO2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95756C5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831359358.32199.15815165853388419376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5cde63692b4360d24a551066b9f7544d15663f78cf4e1951a92009476ed98f
Date: Tue, 27 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748313593
