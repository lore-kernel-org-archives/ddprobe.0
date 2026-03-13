Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FB51DF248
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773429294; cv=none; b=b7d0Rwe3DdtZNbxItiEXIfdJOyA4ZVA9Pviq9CWDrpDVB5bB/P+615qTl707RRDwsOkh28HeCt+czJfoGy6Ha7wn/SIaEb1ZE/+55ZRxiWNj9kkzu4FMc01i4DBv73h6mhB2LoscZmEHOGtGFsrQByJCuaxthcA5hHzSSuIcGAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773429294; c=relaxed/simple;
	bh=m72ckChoQOubHafgR930N+V6Zkkk5aX8knXbxaG6hhg=;
	h=To:Subject:From:Message-Id:Date; b=JJauTNhB2Q64C8gK1lwwVhfqc/vyFlAaCLO+vPDiYCEfkjswdje1qKaKxOVuYwiXcNmt2kQtDlgmSFHBg4aVL/DDf0HMTrhnoPZ+rQJtfTEfvjHvCvXCnxGv5un9SQrpokul0dJ4j2v9TR/9kD2PnZuTV54AC3jbXZrpi5YTPwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujca68Ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujca68Ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E19C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773429293;
	bh=m72ckChoQOubHafgR930N+V6Zkkk5aX8knXbxaG6hhg=;
	h=To:Subject:From:Date:From;
	b=ujca68Efe0RMMUqdjn4pT4MN9uFB3TtHJ9HQXvakEH1iNqSiZjN7/+fTeoUPBol0x
	 T8evB+/Kmm07HIVH58HJhMUUWgHHBibXvaM0KqoyjkwAHxajh5ZNLZkqfuBnpMx0/e
	 RtJRdk+ZYAZMbnzuLdN8vW6a/1QiE18bjaKAsgpuDODwcIBSjWLyk1t6Fb6gcPFKXa
	 7EcDFDIBRHb8dOru4OiThEoxx2Td/BPXHNqWVHDj+bpAYkhFxP8dhA54XTivuBCYId
	 sOjJLk6Ecw85EF5oDBksrVNPRZywYFg6iWggY6Jk84dEeeGGR3Mi/jDmaLWlbbS/+B
	 Ss5Da8bgQ+DIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECB107BCD7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342929358.29182.6983931735565962741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeacbb77df79cb55a8bc97a8d7eb67171c360c1a63abf6ec3b93f1e59e54cce
Date: Fri, 13 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773429293
