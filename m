Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681BC7A715
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715065943; cv=none; b=Xf0wLkDOptE7n1p9HePz+zzyg2iqyZSeVY1Zv3d6SunmT69qb1/13hZAuedxOFCrTP6BIisENx9mx/KMHDgSiF648gtF31gteokplsg/kBFNSedkWPlOFX+ch5T1mU3+UWqmoTJqmzzF2+dp7LqPPDBq5sazwEaCjlYSPvKo3HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715065943; c=relaxed/simple;
	bh=Uyk5yoU4y3hIcS1Q8kw1HvP+MekmPmldWx72M65Q+Bk=;
	h=To:Subject:From:Message-Id:Date; b=E9MGs+kwEb/GoSfrYVBrImz5TI/e23TP7qP0fyvuMVFjXPO38rZ3fVVeWlaJUHJmKzrW6F8p5bWj9eh0VFckqfrj+OZArlP+DrhVpKrzye7HPC9cL5u+dnz7OnhXzxDTXUCwOecqRE+El5iZmHWJnAgSidwMg5bt937AoICRm4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0Osaxws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0Osaxws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA049C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715065942;
	bh=Uyk5yoU4y3hIcS1Q8kw1HvP+MekmPmldWx72M65Q+Bk=;
	h=To:Subject:From:Date:From;
	b=m0OsaxwspPLIeKqARpCrEMc8x8n41sUfN+QgjinqSh1FZ9Nw8k51jbiQor0DBMAZh
	 ThUMszF61FQb4CytElDpyqRSaDR6AWFTnpsQrAvlRAPHfuCQ/9OjQvLnYFm/XN2R7N
	 QhCkFFw3AdiP1PXH6rk8SWw6SM0W3jW7ce4TsRqFRiOagQhSvEKVsv/8Jyr9SZLzIz
	 ctWZVbmrW97Lk+YU6op1oyrdq081TFiaQY4TrjkHZpix7UoZ+yjTB7s/aBkJnXzo+7
	 YtMmifHFTgThCQXRVA/ylXFsDmfY2zq4VO5AfO3KQbRFMmZCSLi23wUydrenulObfP
	 QgzqgQMXz9TRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADBCC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171506594275.22451.2125173269185557498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe33bf43dd9f6f7112f0d9ed6dfbe3c7171951ce6eb27c6fe72bb88ab3c458f
Date: Tue, 07 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715065942
