Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A523B1B3
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789276234; cv=none; b=pPjG48ri+FFrLIxbUh7EPjiyiRwQivTZz0aJGJHW2abBtKOajtRTZ87ZHo1sOdq9sQjUBCR8kjJ1O2osQ93kaBx7I7agmNNfAGms0p1rJYM3Oh6saKogYyoZeFd482PiIN0XC7/TLYaIJbM5+JyS+3XgSZ/VCig2b/0CRDZn9Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789276234; c=relaxed/simple;
	bh=VNND51j/khb6U8W9rotWLdBmiEWacLkfZL+FwaHsJbQ=;
	h=To:Subject:From:Message-Id:Date; b=gyLssBLiO6svN/Sv1IZPd1G/FxyXTNXe0NAnjAi7MzXXSK3KkHtsP9nmw+eFCYPGd96lCbxDBWYJZFcOqIr0v6y2ut9c4aiRDfNNXC0R5LF2EH0s9VDS+4DUUw53sdcUDH9rNjSW6duVCDQ9orc+mvymil1R4I3kLF5dtrv2ogY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CznBv4py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CznBv4py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D273FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789276233;
	bh=VNND51j/khb6U8W9rotWLdBmiEWacLkfZL+FwaHsJbQ=;
	h=To:Subject:From:Date:From;
	b=CznBv4pyMQC033Yu0MrcWBDDxReZ+O2MzrOuNrO8lwuYUbXKXq9OaFT+5WY/0XzeM
	 cx/vDVImOGf6U0e9cGtH0fNH/h1niXNcd2807QjoHNff7CxNB7ZdzghuprSUnISiXB
	 uKGbSHnv0oz3J36SLN9KYoJEQCOxGIeoqxfs1a9GRfiRWnfeTLlHcikbUilMx9Raba
	 WzL3IoXgbZOQNHg81cxBu6uxDeudCEAXZ5cFYEWb1KFJFBYthQZXoZr/vAEmKo/h2E
	 YpVKMgscP4fQNiTdKikfwPtGkcX42ybOEvvCkHOFUGvQaX9AbHCpmN5A7aV1716td/
	 E9i4IzTRJT6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1E0C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927623368.2877.3251519927172192530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826ccc7f77fe721a09d5c43506db572e50e9f71308cb9b2b0361268845b944c2
Date: Sun, 13 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789276233
