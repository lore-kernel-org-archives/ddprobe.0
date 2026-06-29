Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1247F3CBE95
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782776314; cv=none; b=GKjtbnu3xyUHmVCnK14TCgHMMgyH4umIepLlA2cJcPFZgaJPTQLuKDWmuDUX9kqQM3A6iEvRmy9P0SqVD5rg60cnHkd5n2uTb67CjuUplBVljMzxAtD6L/8X68zMSWkaPv9MyDjsx7LAY+pn9TgwAaNh2vByk98NLURGHKNlp8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782776314; c=relaxed/simple;
	bh=Mx/VdCLEdeFh228ULytc63Kh3FyZ8+PFw9e1XUEeW+E=;
	h=To:Subject:From:Message-Id:Date; b=hJZZDYMO574VRlY3ntLXw/m1yhPQBancKGb1yqswvwYBpC04mn9xJ5fs4TrMcA1DfjUw5PCtOdYsHVijy3le1ZTkXcWVr84qPN0a348MUxJMCKGy/7Nj3qbM8k9HCjYFrqC5pDdSTjCiWfkbLGe2gKbPNoE2rhOUb/uRXzCJJeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRzYdxzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRzYdxzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C656DC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782776313;
	bh=Mx/VdCLEdeFh228ULytc63Kh3FyZ8+PFw9e1XUEeW+E=;
	h=To:Subject:From:Date:From;
	b=lRzYdxzkCHwBiIIzIoVQ+AQcuI8UXBN2oikdvPR6sANkQYdqJFF+kQA0rwq+YqgRP
	 NQ+f7M2auGyTsGW/htW5YT5d9aAM4R+33544CGq9cBQrlHVH2bYbnESehxPK2iVk+v
	 TCnyxuyqUVhGOT6UaVwth919hKon6siG1bn8jm49GRluri5MdsNXxZE/tCtcry7Oyj
	 8FmXlWKQU3V9Nq2e6Of8asySB6dccLFOIVBC2yy14754O5Dc8+2kRCZt1OQu6Drhej
	 iQqHOm4jhJFBMEl4zHL20XpyFpa+SF6TcPlRg+auLEVZ3XS7hKbqZKIRhtkvQaj8Aa
	 aRs5HPv2a61zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D37C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277631368.2038.13097005076978428279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931fefebcb6f9372586f59101634190b328f591eb221ec844873bfe0baf9a9e7
Date: Mon, 29 Jun 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782776313
