Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD433D5676
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789494034; cv=none; b=ANxvXZZTs/tYw0+4f9Iq1Y1HZQHw4nYic+6nUVarHFHiGuuHuS9R5YOxbcwYwx1Xi6iCH8UAMrudSAf1/edvdR4OF0aN69lzc2lnWg3QoBq+xxQpTbejBdJZIU9Ud0FnAaL1yEE94QCO9Fuai3lwn13WW8RW1SDpavy7c4c6zkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789494034; c=relaxed/simple;
	bh=R+emkfd0qzH6SCvstpaZf+B3ijx+FcTcCM3+D4TZLO8=;
	h=To:Subject:From:Message-Id:Date; b=p9gEUzMIAi2p4nzLFYzJttP/YM2fMga3X7lJJlh9iAt0S7wA727mmUJP8J+EVT8Xb3CHjKL2kgxJKFWtSL5R7NX54B9Cr2ErgirKpYrcy/b/EhfvhyS1/WcM5mcFMS4g0decduJrr3KMvkG7Uk1MqZz2usQUb6BhpM9slOf24iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQMhrdOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQMhrdOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB5EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789494033;
	bh=R+emkfd0qzH6SCvstpaZf+B3ijx+FcTcCM3+D4TZLO8=;
	h=To:Subject:From:Date:From;
	b=AQMhrdOXySEEdWcWRot67oXHssVL9szpxduuIphKQgOrCl7KvpVa39PjXhi9pOkce
	 RiBx2dcKhjvvYElo825SSS9oZ+CS6J352kpOJS3YIG0CYt0RQqnWqvwU800y3Z5vkW
	 tynCfXnpWXv7G1iYhKHZ3VpZBRzidCAFTOOsginVNstSMxrOAW20sFfc3pxjjULo/q
	 LpIArwZdFn0cmcYK6zv4GmekFi/FVz5/9Pvizy/gFsT0Lx+NsECKVAAcl2Rn4RrnJi
	 uG3hAzi0Uzxj9jal602LsqiNhw7u9q7dpv+QURMHAz+EkKKVsVQwzU93d8S42ll22F
	 xnC7VyFIoQ7yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6FDC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949403369.3898.628865463612111724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acaf3edc27e1788cb8a80fb39620dd2b00ffb18d76871f03281d6ace5275f184
Date: Tue, 15 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789494033
