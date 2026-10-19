Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F893128DF
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792399234; cv=none; b=TJDnyd4fYWpQmaLA3NpNmrxNxVWWfFCo019giNkf1vGt5YfqqcQGGpFRXdZqF9SJEi11aphDptguiVJFCivW3QlZcibD1OiCDEKT+LDAB8EBE+rgbNo2JUKw3CjiQt5MMr7VhDZR2gKlDhcBbdDeSYkFfgld4jPiZteaXaa7Xjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792399234; c=relaxed/simple;
	bh=6V2W/h0qDW42kQOkoKqMgjpKlyq/J5KjTVnTailR18E=;
	h=To:Subject:From:Message-Id:Date; b=jgKDMC0sjy+bBu2E9jfuUmPZS/Jboqu1FNnnj5kWEqdqfUHdOoBWiZJ5Db2yRKoKqJiPTCSYGAAACEpsNuXRH8rlK3QbkzR4kCgyvMDga96tb4gGQGfJ8GmFsA8hs/Vf/6i/NGHMC+KpcOKrQEsxPaxvBa+DTIQOA3bCbFHHZs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GABbe0Kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GABbe0Kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BCEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792399233;
	bh=6V2W/h0qDW42kQOkoKqMgjpKlyq/J5KjTVnTailR18E=;
	h=To:Subject:From:Date:From;
	b=GABbe0Kv00tToHrCqGZlMM5ZbcidJQUsTLtKC+PjZ+zHcWq1uU/6jgAzYJKnq+RZE
	 IulQm0SBcLzfa8H3ul80BrQGBsV45UEnGco5VdbQ1oq0dhYluGIjsXcSYWB1OdVDm+
	 b5QHS6miY2lwZLIa2UnOtGY1LIpj/CPyDKPETuBytdoOL7lYHF7/z/qXPOhZtwlIBx
	 R+fdjELjzL4u1mc9JO0osRpiM4bMQSA2nYPd9N5Z5XnjlsegQP75rdkedO9CPf6Tej
	 iBYPqW3Nv/dSsdJIWHhtsi8skzxJfqzD1V9V4Z+ozm35jUxMRLa54pmQwa9Yu+UMvq
	 yPRl5xHThZnQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0F4CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239923375.15753.2926262246584418517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3dc1e323fcd2be42b522c7506b8e01a3b7f3d75862244040a252b58d0207fc7
Date: Mon, 19 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792399233
