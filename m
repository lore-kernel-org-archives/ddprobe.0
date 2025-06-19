Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EFC1F09BF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750300794; cv=none; b=QnAhmt5RjKrBKIUV/Pcy4srs9dDOVw9/eQCzOvS6ZaUyIW9xwLE5y0mqvs0+Qcd1xGgoQoexecV0IzGYSb6bezJ+GEIH3jlCNGpQp/3j6bMK4aac+Mn3JbSrKx0z5C71qwG/pFsD0uvfN2/Acz6FSHy6Grwyb7s9QPcrv1Nfl6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750300794; c=relaxed/simple;
	bh=s9SGnAsSxAkZM4etaMieTWq3e6boay0rRlHXF2/eP20=;
	h=To:Subject:From:Message-Id:Date; b=DROPj9Bi5IM/VQKAOaMfapqZCzQUEzaUqAqdv24gBBkAKhiEd8HhNqqeK+UcAtS9eOot0rZAEPZ9DYApcHW0dzo+PVWzQHoq6hhMWKJ51lWDjYKZr+u7msJxiSHbB71qO2DHk/r5knfmvORq292lidKd/NnfeiGWagxOkg+9zwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgtvLjyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgtvLjyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750300793;
	bh=s9SGnAsSxAkZM4etaMieTWq3e6boay0rRlHXF2/eP20=;
	h=To:Subject:From:Date:From;
	b=EgtvLjykrAYBnGyZJM5lq6W0+AnmwY8FwchWRgT8nURbJwgbPxhQnsaL+BVvBGD3W
	 /ritm+owpKFvqnj7gkNmcmSBBEMBqW8L32+yC4Wz8H6Sih9DxdtgFZ8NC5saOaDgly
	 F5RIomfTfUtxyYHBVfquFlLPRUWduDmZOxMil2nw0KbNPxKXb52dA5hfVdLcHDYKmT
	 TdwNrWf1tYVXK21f9pgc1DNAEsz61VjGvQphmKW26BYoNMQmipAGP0SpXWl883ZR5u
	 rYHWHd1uI9pYy1KhlEk6VxCP4m7K/dm4dcRc1s+fWFm2maOznknmVXjzbv6ttR+12q
	 J7ARgvtev2bbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DFC71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030079357.22570.4700181983494809466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41536d1160bab4b80166b3ba5d953a84eec97d6d8d62e8703a299981d189d89
Date: Thu, 19 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750300793
