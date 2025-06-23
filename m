Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACBD17996
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750670993; cv=none; b=LRCQsUQ7MDph/YtgUCFhQNOr6WgiJcpwB0Op14qdDfVC7mG5BwClHuzkiwcXm316dfksrA1PAiWnd2l1mNtJomHQP3KUuF1v7j3zl4+HQgIoPdPqkkjFui+XeWPqq7kdqHFEtZ6si3y2etc4trOLi/cDW6R1Wu/ZAXri0cnI2co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750670993; c=relaxed/simple;
	bh=rnF/Xj2aOhkcqD5TKS1yZ3sPIaJu0C5tcnEntO2ZqfA=;
	h=To:Subject:From:Message-Id:Date; b=gBQFnwPXLOictLeJegdl889Fnb+ZmyLV5bcYJD2rnWmwV/2YpGXJXxourWo3hVWfJVClheVC2pp8wBrAtqAlovMUE27J4Et2kC1uLIbuzEwPUl3CJg7+mX7cGRW93IidNSncisFdabAAwqdNBXnV/hHg7uqI4XHOlbqdnJqjliw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUUw2dWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUUw2dWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED01C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750670993;
	bh=rnF/Xj2aOhkcqD5TKS1yZ3sPIaJu0C5tcnEntO2ZqfA=;
	h=To:Subject:From:Date:From;
	b=OUUw2dWuxcluyq6jL+7JAdCq49VEriK0fREvMAeiS84fSCc7a/2spqcW2FaVpH8S8
	 9Eh/sgnzL5eaXZQIW2TgSD/cnOKia7KcdZ7XgUR7h/Jwr9ZsfaXCu6PhXCiV9N9xV8
	 JVgXgsuA1XF/ilJ44AjHkHfDgHlZnFt0ZjgE8fRiVyBlGsseLS/JNQ8r4QI7QLOKb9
	 vZ+7MRLGDftel9Oy/1KkVsz+X32c62Wu8XWsw9fmi1M0azdLGxdOt9IoRUrVo9oZpf
	 q5LX3BJZOyiX5FQxM4nuzMlhTbDb43E0GQ6C3ieLkGQdSyec4WWEfW3U0bYZH1AY58
	 +2aNd+mhN6ZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90110C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067099358.3035.7850512557926843004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9767fd1135c6c2042ec1096c80ed1f64a551be9550ae1110305c2fef8cbede92
Date: Mon, 23 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750670993
