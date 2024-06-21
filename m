Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2A2197
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718931023; cv=none; b=pra4nCl+vMERtiPmxA0ecU2Zt1jiKnj/KHa9I89N7H3w2720PLBbp1m1ucRdCqsGCimxP3FqIg6Vcv1QOR2uGa9HLM9qgDQV+Qa8loMst7Q++RtNXCybApOVbOmjLk8jZv2ImT4P8JnN37FtDwPA5SX5io658ujR1+T7lHDbvAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718931023; c=relaxed/simple;
	bh=sKZSpcJoOQfQWVjAtr9mH4mshPRrd+RUnKNICl/v/Q8=;
	h=To:Subject:From:Message-Id:Date; b=V2exSJz7OmTqxUKkpiWhbPJCHjEiRoKUQeT5vwzVPhzaFO20DpMcAKfOo/04mnpuuupdhfnTv0PwDrUvelkzZDb8TUajrBqvNOmoQdzDlH7ucRqpP5K99spR/AUwZiU/PTaYHgTgt2Dcg2aZdRkKW2KJpCVbgRqgQozjwq1IQw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQb6qnvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQb6qnvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB159C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718931022;
	bh=sKZSpcJoOQfQWVjAtr9mH4mshPRrd+RUnKNICl/v/Q8=;
	h=To:Subject:From:Date:From;
	b=tQb6qnvyaRuOL2JrKxUHu/K9vpNNRUrZadoiwamWwqK2W8MnVe1XIGuKIxE7cckAK
	 6q2+WH7HSFndjT5ngCwWmXYjlWvSKLeOjAGzUdN1wtpWNRBoeuLXDlVi1v1ZZeyC2K
	 CuxwjoMQhdddT3vvpwcbkrjau5h46I1bhBJzic6MJoWKT/YvzVm8RZlqTiEvNinqcZ
	 lxby6tpfytB9EiFaf5qWhUWuot4gp/solYTxHndrMVu4ASrLj70x0fjR2fMRQ0qiNp
	 DargI1ylxGknf7LC1P8rs2700pu6D7hj8YMTSj2NQ7EojVokTs9GWf1chGUK31tBP2
	 t3qHkzcbOjtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44F0C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893102279.20566.6614136320332995626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f582340034f238606696dd49770c6b991e206a09038296df5898f844ac40de3c
Date: Fri, 21 Jun 2024 00:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718931022
