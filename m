Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E564DECC
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726878954; cv=none; b=CR94Sl4lF8HebUKAlT1Q+E1Ke0ySSHenWLc9ZeoiuGYFUsD9Hh02KF8wne65cg7nA921b5FUA81IO98bzWKrzbunu+rIieOcpI9jFPpqaQUFelMuZ1GJTHUHztEaE1ianyUbZIAtYxH1G7lvbO3aiaw/Weasy1vck2RSHALo2bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726878954; c=relaxed/simple;
	bh=7x0dlxu23tOoSQJvM7EEFUmwfBNR0vasjJKfnpOztCs=;
	h=To:Subject:From:Message-Id:Date; b=uwcAYhyTeg4BlgPVHfRWWVLoq2vRpVlj1sQy23IvwlQ42W3EGUit/lqtBm8HKcr7LwBDi4cmoMFyGwM9rQsaKUcZnRvPaikMcTyjpQE9RZ3tO7cpGjdeb9j/I23Z/ljMuf9l2YPLXdEj/4JfYdbwWGHcVmqVF8ifhuWFJsdKHFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7S/KwHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7S/KwHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B542FC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726878953;
	bh=7x0dlxu23tOoSQJvM7EEFUmwfBNR0vasjJKfnpOztCs=;
	h=To:Subject:From:Date:From;
	b=L7S/KwHpMoPq2nS1HPCuouXmw6j9t7oFsoh+yPUKHavEAQv3gNlDm4gu1c7b/dBZw
	 C3MduZkTyOumZDtgIZP4aTs/gXwN5tDRslQFCtl9ZZCLedDOpHUVFlD58Fc3nMnGr/
	 bQWD7YZq52DMP0aDxUc1OirWAYo08sXudwb4prwbibnWOYuD4ObjQk3+x2U2qtAUiq
	 8SQMZmCLjjQ+93s8HAspf1xIQwXmbjHOeOcS3huqU3po9LWwVc1zTmcFXLMvxuzjez
	 kKd+pAoGp9Hhpjinqi6MVPO3+vQEhwU8h3pqVacg86Luu0OJoQlXsxwTHeExkKaPw+
	 FxQYt6VhnbUnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D784CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687895360.7391.16427644076692498420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49817d5b53d7d503ad5b9dfcb62f5df04e5bc26f19719a2bb452f8e6c92f8829
Date: Sat, 21 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726878953
