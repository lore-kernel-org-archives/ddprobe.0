Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB5F1FBE87
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754137194; cv=none; b=WJWZURrO0mIIzbzPfaK380M4A19+/0Tiwl6wuU+ae3+GC8PWb6Mhrln5mWN/FV8wDsGIdfISkf9fpIqCuvl8kkHm5iCYhA5E/FKQzgt757TU97k879biCSD06MGI7UddQ6yUYQyiiBhwgqEJbB0bwMHIfoe8rcSALoNoRtK75lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754137194; c=relaxed/simple;
	bh=pheBC2MKuTlSaepBqH8eA50B9r1ZQGZoUcAg5mzr1PM=;
	h=To:Subject:From:Message-Id:Date; b=nJ6ZtxDVQgxu+ESpyk+szFHJjJ1Fd1/c2ZyRJGd7gjTy70swZyIFTzPsM/z3wYlDyT9sx9D5PAXYd2jUWx+A5hSIxH442oIh0tsKKd5iVyajZ+rg0db+iub2CLOqLgBbUGKMmZZyztJ3UXWKY2bXdbdEhB4vVNvGeoWVxTj5juE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHDVVHES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHDVVHES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754137193;
	bh=pheBC2MKuTlSaepBqH8eA50B9r1ZQGZoUcAg5mzr1PM=;
	h=To:Subject:From:Date:From;
	b=sHDVVHES8RW9q5AU9eMShV86df6xpsTTi4i+FrShX57fZ2spyXV/gU6kpl7SJdXaT
	 rzIPlxfHh8ugqI1TBSMQzDMm+74Kec4rLupEwzy148ALS6f3W3M3J7B8ElH03pgjp/
	 6+2QsU6DV2K0KNkFtnW31vMSEL3VEtd8dSw7Fbnfu5StGs6gcJjTwk5GBI3J9vXWhC
	 Y5VhXRxS05llEh9w8Aj/RvHTR3+4p2w/XBeiqWiLT330ISxeH72Cey25ZRGV+JoUI9
	 LlKuxtlwKC3T2iBLCfSjAHRgpZZeBigK5FH6Plul4wYvQL6r4dpa8FhjLrRKhYoj3E
	 pklZ7COpxbkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90682C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413719358.9131.16868684120544658352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328bfaa71e1f82fbdb24023a9555ae2c392e2bb4c5ed22d3d1a9022f6862072f
Date: Sat, 02 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754137193
