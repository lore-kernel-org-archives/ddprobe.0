Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60777143879
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717044263; cv=none; b=BMM8Wi1Bw/G1IElT0Rtdb9NGS/z7CuYbq+/UFmnQWZeRet/wf5AftWATAJKCOOGq3R/SZlxS4GlAnFMPGajo6pYqtW9zJHTbEF10tsYBWqywv8N1Sy9/boRnjeMAbZsNbhaF/g+AKJpBn/C7AHEIK4iS7wnPGLR3nOntaLdvn6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717044263; c=relaxed/simple;
	bh=e5ABCoaxJgy2FyiYkn07M1q5uiTnHvVNsPV/25XEE7c=;
	h=To:Subject:From:Message-Id:Date; b=Hiy26fEBfQ/fuJoJnbBpKVnQpXXffIU5lR8+uC6VrOn6Ux5OIbOVtT6aJUnuOM4OOOUSa3gCSqbwNYuYFnWLKr28SxWVVOKWJMOx48cyhfCV0194eDLxFh1zgmiHIQznYgRejidNMv54TwBvaBy053i71zBWIomG5uSgnlJY0xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFx04IB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFx04IB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF341C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717044262;
	bh=e5ABCoaxJgy2FyiYkn07M1q5uiTnHvVNsPV/25XEE7c=;
	h=To:Subject:From:Date:From;
	b=WFx04IB5ZtlbAcwKkrp9WdTl1d7SaPuIjLs8tn1IAFJnbfCA3ZwWX+FN4/8SJRHid
	 DI2ten7kJdr6zmRArkuYu8QSvRLRX8w7NWRCEI5jWAQiMMrwWU1gxo2nndPAXwMusT
	 0kQd1125RUTaqm437Xt/5s3UI/h701vFqgMqF/fKCCG5gGRK2o0qsq45Ov+oc8W5Kz
	 r5GUPqK5HANdi0dUf+HW0NRnrEQy9zQMd+4kTp/PwG2pByhX0f1S1O7Ku6C/Xktojs
	 n3xqMfR1jU6pWj0Tu3K5RsPvcyTOXK0Z+rlcXW52iD99i30kwV2pPX9oXVDku4q4PD
	 z8OKWWNSlo0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DC6C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704426279.7037.3239601356169657298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0a5f1272637e83e3a678ea43597038e91ea6fbeddfddf6121593a40a4c7a64
Date: Thu, 30 May 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717044262
