Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D50D3C7685
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788171634; cv=none; b=gteT3wOLLp+2+SKC2/dBjHqeIaV3zYvXCvQmnisO6pYW9WwPJJDK3JQaDOSL+uMWxHYA4tn0bUP4oFWxYEpc5QBs/UUfmG2WzOiY0O7TDqhU94HhLh543IwaQwz3+PX6C1barAENOjDwUtF3+nLovbe3V+FZPU2bwSvTERabYsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788171634; c=relaxed/simple;
	bh=jRVlVGRshyYgoL83IYFLr6ZW5gqBGT3CbvOTF6g+q0A=;
	h=To:Subject:From:Message-Id:Date; b=Cq4svu/rM5T4kEFm1RH3BWuGci0k8EUPU74ItbntghBTkWl4KYf2gP7lfq+6bp4sZNsu/eo+FP6iewGyzhML4YJmp0Ty3djAHQUQXE5B/LN9zXUGZ7se/b71Gh6ROaZcwC5V5IkDn4wtxyQ58iev01ER7BGEGvST2O4oUlaEURI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOf6lQI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOf6lQI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05C8C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788171633;
	bh=jRVlVGRshyYgoL83IYFLr6ZW5gqBGT3CbvOTF6g+q0A=;
	h=To:Subject:From:Date:From;
	b=cOf6lQI+dHLx2veNUEhoA+gw8di22Mc9sGFxAscl0K/fjA6epMSC1uR24cf0j8YZc
	 FwqxE74QADRkfV/DY7EvXf6+rOo8qrb1jHumy98QLQZD5JKInNEgXfpz5jPSYq1Q0w
	 zwIYlbv3bJNLB9GLRLvJ014wMlFsWxzO49QXFh+ovnK71A/gtsuOvKfMR9QUCujZwd
	 y3AsaXpbnFvJP6GKp+Zp+NOHgu+OwhBfg5V/SVwg1ItATAc/gGKVWNJR7y1lZwhRBX
	 ndbCvbc5GdjhZMURWKfqtdnfNrBVqI5Ln+Zcr54/oFxH7K5IXFrtiw0x3NXmlNHf2c
	 17CdKPcIIzkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8BC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817163369.26692.6459069637144025773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9259719cc9e9c7610136de199303ab882c71627865e54350fff06f623650b9
Date: Mon, 31 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788171633
