Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AD34A28
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745770194; cv=none; b=W+d3o4omDwKqERbWXmenOAC82iZd78MV2gRRgNA7ZD/U9lKxGxUg6OyQXHiRaBWCIsn7ZO6znFkcaIVVt4q8PN3ZSb+M4E/WIaRRYSpJ6FxQ8Feq/6Sx+2d9HCKpmerSyXi8tEk+mjNiu2Oznf6kXq3RKEeZNWPNEZ7K1QJwwFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745770194; c=relaxed/simple;
	bh=t/IC8vKvopYjQRS4RZkR9+ELTHFGerFNpcNjlgVmGbQ=;
	h=To:Subject:From:Message-Id:Date; b=TIbz907LArBLqOekA0AnSFdiScX+vF5nHLRPb+XJTWuqiwCfU8B0t3/pWwrS4K4nP1+duLZzpWEuX3TJ2YjqYF1qi2C6jT6JQm//U2vjOZ+Ukex1LjdjFpDrNAi5bFdfEzyRqRxNDhuOTeHxe5MB516hy7S9zvB7BM0Vit3NedQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3+J2ld3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3+J2ld3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745770193;
	bh=t/IC8vKvopYjQRS4RZkR9+ELTHFGerFNpcNjlgVmGbQ=;
	h=To:Subject:From:Date:From;
	b=Y3+J2ld3p9Nc9J/lM/oQ29VKfAgigw2EqOe7ZYOUoPcibkLK3DdVTZ6nTkOg/eX7J
	 15Qdy9doMBRK2BhS2SeL7blKCGo4uHJGjMr1GAmsoHm4zCnMaGjpzvkYjPLwB7athC
	 aEU2WxEActC/nXwt4rg7cAEs3LU55h8vYd05JnATxCk+aJCDvcbWSG5LEz5ltDSI7w
	 O3J7QA+JIa01BqSYeq+Kx5KfYVh9KQKSNol/MaPhqubhJpjn6t0bkRuqBoT9GmKhsr
	 dRT94u83JQ4MIi7Cgy3JGU15kzgjMCaNVksS7hSfCaRijBsnzSFK6AQ9DLJYYp7pQY
	 CS7WoId3yjpfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586DC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577019358.24161.7619619414204960781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b05aecec7b7a50f4f5f9e2debddaf32eab380f8b6fde134a17166b8a71efe2e
Date: Sun, 27 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745770193
