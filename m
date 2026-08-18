Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3333830ACE6
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787044834; cv=none; b=llAH9LPNW1LWF7xOcfFQBxu9qG2JQXSwDoKTOnQdX/UpP8k4mUf5WYfqwbt9XgOjqeC6uEswNtQVuEgJECrovHgrJIdVRy1uQ8o37eN8JAqTSILu1qKURanZ+SvowdV5bjMl8kY68n7Hh47K50i97s9bqYhKdhMCQQzk+o8PkA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787044834; c=relaxed/simple;
	bh=wDBgoUUSxlatkc4t0X9f4PxfoHUQCDLMa5SZLjyv/ps=;
	h=To:Subject:From:Message-Id:Date; b=MS4h2CBEh5eJFx0VD2F5eUQNo3Da0MOaUXz/SYxvnUj6txLLKUY+EBJPl7ARz3azyzPyhL3mCHtns/eJ6vWnBzw49t1wge5IUobe3M2ruSnAQVMGqTyXqP0sJkFPU2/7/ocLLc+y04AEVWWAVnYzz8yzAiLR+09xtKzLzsgVTpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKV/KWTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKV/KWTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FD8C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787044833;
	bh=wDBgoUUSxlatkc4t0X9f4PxfoHUQCDLMa5SZLjyv/ps=;
	h=To:Subject:From:Date:From;
	b=cKV/KWTLc6J8Yg8ortHBpSxFma3XYV1A05IAYQxq7yJwu6iRUiYfyqHNzW+FlL6vp
	 2I4BQGj5w52umx3JgAT9L0wj8DB1bjSDmiNieom/tY4OjClpYrSovnzbO7m0cgYmgW
	 40XNU0VQUIQYeX10DzCJXYwwVJniSXphJQj060293COMw8dRps5WjV+ed7nAIENh1g
	 IGGeFnrYWzBerEoNuG0JTigJeAqDj3yrsgaLHpcq5CLrv3dfWq9XEJVGiFDnIWdxbC
	 4oClCpO3CiySv4Vn0jMM9KblN3a4tyi4qib//EX39cMqFeMk4w9aIHBZBI0LL+reNa
	 2WCG87TroGwNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FADC5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704483368.8613.10895384333800210210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f48e4c952adcecf7a7e8d86782bde2ffd1d28ee88ffaff43719e52937baa48b
Date: Tue, 18 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787044833
