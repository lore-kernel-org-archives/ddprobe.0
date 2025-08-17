Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F5379EA
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755421795; cv=none; b=NCsUIrKvB1J/tAx6yNm77sYtArAtkA/d+B2yB2RrwllfpZRWFvX9qLV3PMoiFWv8tq+gI12ozRQAQECQ91q4dgY7xwpmJT9Tm3BTnhgbDzvDu9HCCJSxsMndNi0E0I4fmtycP0BLpkCEbZ47DDSG2+cAqJPvfyiCbaZOFT7Dq9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755421795; c=relaxed/simple;
	bh=UvZ3fHf3735xd1SreCrjCQyLkZKKAYJjqRWDRyir6+o=;
	h=To:Subject:From:Message-Id:Date; b=eptm/8yErmpjknNfGr/cLt3dIhtT4u+jvK/qZm61b+Wk8SOTDnYeobYQQ/wSiK62GJngpcVQejTjM0ANHATE0WuiufbxRV5zrxn1eXYF633d9UsVnMDPtSN/IhPGhA6BY7m7gTD+Xf9rATISkECI+pbyab37G9TCqRwmZZBqoA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Twd55CS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Twd55CS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A379CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755421794;
	bh=UvZ3fHf3735xd1SreCrjCQyLkZKKAYJjqRWDRyir6+o=;
	h=To:Subject:From:Date:From;
	b=Twd55CS+F92h3GmebnYrEMMa89PWD6sH9kU4E7mYjGGNHtVA3fpp4efOH5GmuT7WT
	 aARNoeNcp7LVOV/442OCmxXhnoEMuWn/o5HhAtU5ZQNy2vWI7uENMaMNK1vw7C8pPV
	 7YrZTX4/J9stE4sHxtPFU+/BaZmBw8cHNQhsxoKkZLLuQgYG3JLeSTA39gqIUxYRZD
	 6E06MYNJFd4XA1Q5bGOdk8a5vRfesdlwDiUg1K+uZI+Wr2vnH02mWF6F/CojzGFt2+
	 0wW5MW0HbDG2ntLejeh0Ng+1xN04s65sJAA95JJVCqrkleGytmA/pRZdD9qVJq4XtU
	 7yE6O8iJEvxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92131CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542179357.16246.5612761925077526433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3928aaf74c4cea03be51026d94da2dc01b7be5d98e8050fed759d199f609a5
Date: Sun, 17 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755421793
