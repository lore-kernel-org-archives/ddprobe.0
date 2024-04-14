Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A9717753
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713070763; cv=none; b=HiDEw8UcG8Q675vcwo6T6pKcNxdM/tD5jayL0Vjx3pIme8aMFag2Nr7JJ6gnlTu1tXOePHf1JCE9gvVxoDxyjszY21MXeu2TgqANvoZCSOJXp4iE3WgEG/m04zyc800/bwJMWpVgsDWeEQ2sbBB+8e4pPxhBdzr+QmjFkPy7NMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713070763; c=relaxed/simple;
	bh=6J92KhXp9CMMFnvGNV6c9N888QQq1TfSjPh9qFZBTQo=;
	h=To:Subject:From:Message-Id:Date; b=OmGjpsEAOHej/sd4CaxvaEsZ7hX+XzoE1JYR6ylD4DXS2oL1lLwSrDK3NmV5SQ+NexVQxnNp2ninRU0a7dzZNqvWDPg+EyvHxupDPQihB6YGDysQ9DE29o0QsqeeIMyIFWiLgTMImnoGwQcoJj0uAD8bMhbZLuKsu+t/0l6rPK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FODOS2tV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FODOS2tV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE295C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713070762;
	bh=6J92KhXp9CMMFnvGNV6c9N888QQq1TfSjPh9qFZBTQo=;
	h=To:Subject:From:Date:From;
	b=FODOS2tVv7CAc5N2S6+/bemJQsRVXVbPcMWOcoTQuCdBX/xyiOElEtOcr6Mwqu0oj
	 N9xySaZhRedswXvQu4TSgn6rQkGQzc3fmHOy9GxhjEkf4SOzRVgfVQNf2ai8Bd6vE1
	 FQ+vtNzNzWPJp5rE5KmZF9tGneiXp3dKruat9DSOtnbBWteur11dIsQIQ9znJyxVLg
	 iSY9uARNpogYb9iUR3ls4Ulhnnb0lbzA2nVCfa8LHNFUfRhIGlExHhDRlacp6cKJQS
	 0J531a4Ap4eyrY4UI67qFNWSFpM9WrtcHM1cwu8rjxMeDuF/VVnJiOjLANXdiocyMA
	 Se2vFtxKe8pvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE99C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307076275.15617.13207177584759680649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c95dbb4518834532f8de3af04320c50d7e5bbc7900ae2b0cf8d02e5daaeaf5
Date: Sun, 14 Apr 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713070762
