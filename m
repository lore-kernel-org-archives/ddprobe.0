Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5798E1F7580
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768114434; cv=none; b=ZDqUbUb2IgDn+5uqDOsbCPdnBAJ2Z1poQS5VFKHt90EYpC2kAdBGba3hwLUedJsnSKbeQIIyTMLfQlydirBV4PQEWtDIYkgTeUBPyF0YxkhUeVkad7jCXcf8Xm4GN72NTyiIO6XjkyIuUA5JKWLHbyK+3nNU9CeSKYH0xFpfMdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768114434; c=relaxed/simple;
	bh=iR6YdJyyz3Cbut4Iz1ZdHG1bERh0xA5cPy2DlfJU9dQ=;
	h=To:Subject:From:Message-Id:Date; b=W6qk8mjMNL8o2LS0wnMrokK2NqsbK6zS5EoOIYui3Pk3tOYVlf/0Aw0xkCeGsR5ntoQqXH/sn6N8I+TDl/hXbfmEpPvUq2ck7WyIFwhTVFm6LbUBRAerkZr+MBwFkSk1XVtH7q4AF6a1FumkzTknOF0MPB6zOdIpNdmdPRtAxTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPk+tg/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPk+tg/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B28C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768114433;
	bh=iR6YdJyyz3Cbut4Iz1ZdHG1bERh0xA5cPy2DlfJU9dQ=;
	h=To:Subject:From:Date:From;
	b=OPk+tg/AxMSMftjOlainsjlZfdSd3clVsQrdEpcVWhUn+oIyIyWSvCJzkvYRVhxC4
	 AqCxplwSp4dg198xoTXdKwTsq+tV+IZttezYnzqq94DAzKIra6En0xa9JiAIpj4B55
	 5h9L/d6tfD2/g5BHfUw/fsVTSe6jWWqYuCh4pLx2jkdyUZ5moQYfUjXLBUSyENG0DK
	 EJ6UgLzromB4AsOMY1fzo6pVXj1rbpuMZCmfhNwyjhIEmOg3BOgARnsO+cNwGR8EGH
	 qIK2KXGrzjrCJfo+e19iaYfDIl1ZdZ34nuK2x8eFmhHMzCQM3+QS/8ErqkZYlnWKIk
	 UNvitcinwY0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4FD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811443357.15317.3380011558355657113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d3699b7d77aa2c71290f788eec370654c514f480904528921826d268383397
Date: Sun, 11 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768114433
