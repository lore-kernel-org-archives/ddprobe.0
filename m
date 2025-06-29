Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BF612F399
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751204994; cv=none; b=jr7kDYOrnf83xCY5nmjPCzunsk3OyG+VksQ7YdOJNKqeA4QmcVNucl7gRDM7364r67VFwCvt6W9yq3eP5kx+mCkI1q0rNfyoAbCR62hiNt7avD+emo+JlBVKyDrAR4d9ZD/xQN1t5so/6+Fbe2/t0pnt+tQSzxDqRhKXpt+5ORM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751204994; c=relaxed/simple;
	bh=M8l96aGpmZdyBAjXccXCnNcotyxNz9TNRAzQqE8rHbY=;
	h=To:Subject:From:Message-Id:Date; b=obNyl0ZRdFWrNWVIMJ0B4IaCKmsGeODDhJ7lvy8vP1qY7bHEeqNK3FuZ7vaoanLd2S3fJAe5ydJquvrAPf+iD6g7fVD8rl2Lgy+31rYoAR9E6vk8YB0gV/Xfkzg5msxf56B0PphoP9DS7bpuqn/aC0jYz+XeiAQPRByZLwkPqh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bifwppom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bifwppom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D7BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751204993;
	bh=M8l96aGpmZdyBAjXccXCnNcotyxNz9TNRAzQqE8rHbY=;
	h=To:Subject:From:Date:From;
	b=BifwppomvWlcdTQAGaKaY4XcFV4HedlWuzdwj9HMubE4iru+GkR90gmI1n4eDiLee
	 zcd/w9AYAWdq9N8qK6GFCJmD3ZI4AIhN8qvtR+dSV4NONfU2ouPqrWlOXNq40aZcLD
	 T0AtszcGYmR1DET9cZZKKewH2ZINTQIOyAClHDyiu9RsyzUI5bwqPulMFkfTaVzPW6
	 Le4rEhebccX+cb4cK7+f46cZqAdq3yRqmbBHueybq+KFFHkRDf8UVDAfwQ+N7DCUWG
	 t2embI3FFO7UkLJZPd6z5sipZd14bvh0xkjWJ6trhhCRDvoC8XbkYpzT4liSRTe68x
	 TnJ8JHQHtr2Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD5C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120499358.31092.2445327346536138219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41ed06e589f3715f1c4957f6334cfd099d2d34dcf4ea86a16dd6595ffe68f48
Date: Sun, 29 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751204993
