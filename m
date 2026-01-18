Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F10B78F39
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768703034; cv=none; b=YXuIA/wXa64+/4d6eYUQ3bNtWM325pbGepoVVK+M3zIAMC7KbHqVtbYmAh17inK3J135RGkQOQTyvx1iBoUMFfJoR5HE/78TpUwkPa6oaeF+8IMFHJqG3HLyldIKqLT3y7M579dOtSmTM7vrxuCBJRUw3UZNYP5A8GDUDvsevtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768703034; c=relaxed/simple;
	bh=7nAJWNeALqbfKDVtJ9hde5LZR2KSGkXCZEHYsxnsAwA=;
	h=To:Subject:From:Message-Id:Date; b=KvDzkoa8SjbiBxH8ME/2uL3T7eQFmbc8qkDdnU2tnrBEcGsZ1zHqNmQWPQvFWceXYuUhl6MMCpYMNPKTC213uwyvyx9P5ID+J1X6vyyA8od/f7Szq3BZi16y91Ekrai8jXmgdRQYOAxBcZBwD4kKvBoM88ce9wXtIORsbML7Vc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4dFv0bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4dFv0bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768703033;
	bh=7nAJWNeALqbfKDVtJ9hde5LZR2KSGkXCZEHYsxnsAwA=;
	h=To:Subject:From:Date:From;
	b=O4dFv0bNkmXkMc+4s5jQez1IIC4TcBNg3DUNImWcvx+8GHBnDkW8YDf+XernzPnpR
	 4mTyT9SRPJJQFNXUuddl//JRVe6FQvVd00RUo/XjvbK6UN0mBRVKLFniPQKbAadOd/
	 lRLeLZxQH+xfdQ68kEZkZJeh4ghG+UdaE3p2BPhAOs49tkEPoWswYL3Il/RL3yudUF
	 1O0GqkvOcH5Eh2sMOrCZO8F4rXbbLKovrbK8My+1AtdmVpCCDk1VKcjqZBRN7Wk1uh
	 BifT1XfCO85b0kZCplCYj4+59WW5KzTiHF5D92jwQHBoZvfuVftE+ILTqWmTOSt5dZ
	 2ZiR49W1p/y+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D96CA5FE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870303357.2365.9232559330812954027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c09c25c909abc8ea32df20eda6f0e44c80e536104ad2c819e144211a2121cad
Date: Sun, 18 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768703033
