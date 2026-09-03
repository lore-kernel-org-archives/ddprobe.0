Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C0939281B
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788423034; cv=none; b=SS+axnYPzpuXxV/LqTLoaXfFkKewYKQlLNocd2dvSOxwiDl5aJy6uKMChRDzWFr9JUkiig8UXu/SxIfPS4fc2P1iV5e5S1nWzHjihFWYd+unQo1kzZ9hjxdvAUHn49QZdqNxIpfnvAdLpJJ/yHPwYOLno3T80DIYf+282BD2bW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788423034; c=relaxed/simple;
	bh=Gq165Y9uIs4qiI8S5oK8bLcyLMPmvwOnEt2yggJEw0k=;
	h=To:Subject:From:Message-Id:Date; b=btIBT6WwWzDCmvSAUu8noWRvrkqwLjIpzRMsQETF1b0U5jHec4BbTXDadPXytGdH9aY0eUmohq+Bv4Bpiu+XEg3tM66hOgpg8Ua3TvueSfU4GGywekM0hMKbi4c6oWU171pXDeqpmHzptkOVLOHVw3ZvXlS40JPD0Tax5MbL7Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwSmb8O0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwSmb8O0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3E9C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788423033;
	bh=Gq165Y9uIs4qiI8S5oK8bLcyLMPmvwOnEt2yggJEw0k=;
	h=To:Subject:From:Date:From;
	b=lwSmb8O0BGyFhFo9zVNC0pC/3b8rmul16qazzcerMG6ERF2aUlxDacrUnHXe9ZGcg
	 rhpBTcloV50wQY/zQHRJal8FQMc9oazTX46o7aNqo1BGDofpCdG6tIAte78RYN07Er
	 UAu7Qdrcy2EnYXZCQGlde9tfdiG7scslihcsIuVMiPIfx6D6pNAGr6KqLNEn7WBbhL
	 hk8naN+suljWZdw2dvrDeRG2/cdIst2oQLLFM/DNjB0j7QKxGqw21epAPxsBfbIuiZ
	 fdb2bQts3bWX7cpCR1wCKyAKvte3sTwdGcv3XRlWStKmD+wbaho8vRu9C2CIKBjLOg
	 BIO94goOqDfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF72C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842303369.7143.296953102900707745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10eb2d0567d17139b92bdf8588eac145627b31c3a0527f1b706494fadc0079c4
Date: Thu, 03 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788423033
