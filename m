Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6B54C9F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747020595; cv=none; b=XjRl877V6hIfX292P9oW7LfOPtdzcjOc5IkgETT8r2EtCLiPCgD2HdPHa26hjt0J5DnupzJMZCSLyZA6U5PN47J11UHnrtZ2UZLx3upYcnCSTSdbTEuV4sad5sj1o9RMuM7YtSq7RiyHTHIvmO7heUKT7gsZCZ5Acsl2t0hftLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747020595; c=relaxed/simple;
	bh=m7WBQmrFocc0v1RRQSIX2GrzXEFWxiXQwtxmYAKrKh4=;
	h=To:Subject:From:Message-Id:Date; b=Vp7DLyFLVQq3p/TGpNTP8Kkpl7Ja+MYoGwgMkkS5bZuqlXDLU3IV5CFVKXvr9G1Y3mYQLs5m6mQQRA2LyeEmhk8W7RK7MGQnHkaeXlZg3bCtDqKON5MjilKi1r+/A1uAV4h6EHpJlgfnHCsgj3H8wfLbs/JTdfPthqj8YWfN9IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peeQ5csX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peeQ5csX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747020593;
	bh=m7WBQmrFocc0v1RRQSIX2GrzXEFWxiXQwtxmYAKrKh4=;
	h=To:Subject:From:Date:From;
	b=peeQ5csX/DQjxUoU1XKeIvrlcm/41AFcCBBM8HJBZhuzLxNF63FVcaKFT39wr1kRl
	 abUlNXahkxDwkx4YWNXqxQ+z9PMJUofvbcNLgLrPM5U4dRHMtLeZMjt8AfCPxHyls2
	 nOyjlqdaDmc1mwmIY5V0TKRGqlN9BNC/XLa3f+b/xfALlQ7YTsvGsZSHw02wAqsNfN
	 HjdHL6P8R8eBZqq18VMv7aYTOs7/G4apiABekYTnBeKB+9MC0hDwA3MoOvZ2+BXQjT
	 FX3OGGmcbPNjpy4IMg67mTvtuXTr20wf5LRY3mSiAOfhFfpokzEMYpOG2vUG8JjqNi
	 r085kKBoneY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF2C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702059359.10674.12505169899143771626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5753e462b73039c71b3fdaa4400b545eedba9e3ebb9d8ceb6f80e89a3307b17a
Date: Mon, 12 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747020593
