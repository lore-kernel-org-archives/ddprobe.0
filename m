Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5220D145A05
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718346503; cv=none; b=o6ZQibFqaugLYDyGXo3fWCgEuJFJq++k7vB//F7B2qySyrLIsPlcL7atGJ6hF++D86q6tUnXJ94sfQD4YyU6LhFoL2p72ov5z/lw6dX6wjw/XzcJu2T/XW+osugk0YryE/j0JZgtTQYsDjBIbZ9BHFi/jAjchkicRVvFyqLu4P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718346503; c=relaxed/simple;
	bh=w6LqBqiUovyeiFBLQpQn0/unoAMpoP9T4LluiOqoEB8=;
	h=To:Subject:From:Message-Id:Date; b=qgUiuUgrvVJFKCQZP2T8axXqjhgGOY44rCmdPQFloXucLU1IyxfEGafRZKQkhySbpTRXj4Jz8t3/eC0u9xpdGPcDgjDKFrVUl+5JLJhSh8UA5+XcwEyeY81/49GRnWPUU3/c4NRRG/J/q0FDqwp0jiBRL93rAuw3L9YkZlaJUro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ax8nITSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ax8nITSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5136C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718346502;
	bh=w6LqBqiUovyeiFBLQpQn0/unoAMpoP9T4LluiOqoEB8=;
	h=To:Subject:From:Date:From;
	b=ax8nITSyyckuDdd33Af/kuPvDwsyfi0BWPFXhtZG2eThTE7PQA2MWJXq7a+AbrgZ6
	 ldJn/Ic621ogMWjp1cbMvdQANrKv8G6LQmiqGawo8w31hXn+7R8l10X2RXnUprQUrL
	 1EM0SnV+o5FlOy67EzHgiFKosT+OZp0+Kjb93y/glHtfGujSCbBKkwnddalyoemNRm
	 Uf3952yjVKtORXkSm7BayEkDnLEfd47hWeWqADQoYr2ioSqNih/dtBJpKmy94dugp6
	 9IusdYOzlZU9CJkCwaV0yhnm3jhKFHhTpYnTTkIMtzgfpueAYmCUwCJLMd74xoZfLd
	 0/TlWnG85QlWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7AFC27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834650277.28684.5750967794953768904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dac48012a611fefb3a40255899555dfd7b924bd9bb357b087c2d28aebd8e9d
Date: Fri, 14 Jun 2024 06:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718346502
