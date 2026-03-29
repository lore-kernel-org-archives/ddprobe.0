Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC6672617
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774754094; cv=none; b=Bo47tT0zZlrHM4ucdGXRC5wsImDxqi3s7UY8dSYO4oTwlBvBLzxHoR1OossE7HL2Rx1HdhRQkPYuzSNt9wFkzPxilIuh+MDogt/5ewwhwQ7RHcDSSXNJV4nO+ZhiWeuzzadSgUUCvEj/3m61ECkymM6AGXvCNIaLLi8Sk8/mjhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774754094; c=relaxed/simple;
	bh=6WF724yTZ7XadMJhpw6SA90QKWcg/G16oZA9BpJLbcQ=;
	h=To:Subject:From:Message-Id:Date; b=FJyH9gfU6TcN22i/s43vTu7BCDGewSaEt3rdFtjjPvGAo3+ch0L8/fHdS5UzMAkJ6dSv5S6NOX3LI8DvC+KvWp1bH5mczIxiy4P2xTpaSDrn5wpvptFoIuyoewFFc3GfxRg5ofSrCCpmad3G6mJQzqhtekobJ/I0exfMTfVbTPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDOxSKYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDOxSKYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7480C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774754093;
	bh=6WF724yTZ7XadMJhpw6SA90QKWcg/G16oZA9BpJLbcQ=;
	h=To:Subject:From:Date:From;
	b=QDOxSKYT6xm/2o2nzlqRcQsWBGQDnMZuWwSa1fBc1bLsfCgNtlkOk+tnzx/d3Ka4P
	 kndCam6gHa3Nv+gaAbvwg5PRSklV4zJ31nRulkIshp62Tnstdvq20dJ+9JKM+C6XoV
	 XZfI5kY4s66QaazJxgdhPeA8i7MMLJReajdKYHA+1Gtd3DKnrSN5GhDR39Bw6IZxyv
	 cPiFOfpXxXnvp3RdqrimEgbWItsZvhNqdsWgyS283tM0XYGMwoJ4UdiUU+YJz/t6NZ
	 HabqVyJ2++2vuwn5i4yzgb1DfJ8pFzgpEmfrwVejwfGHLKwgi2zOCLuDpsnSUS/Sr4
	 0yq6AqRppvolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9337210D1487
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475409358.1497.11072583430338577549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c58d9a8dcede6d30227b4c3f05e93bdd8d7ccc2886c325eaad1f0475b34a66
Date: Sun, 29 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774754093
