Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745D23C5DC3
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782200194; cv=none; b=J309+3H6LFUGTt+8htN2ONvr5ifMxJ5x50lDr3qEaF3mXQSUlba46aPOKvl83w03sMCRvX4wn76MqhwETnnThaz1xDGrYlF9GfB+DyMtgnqxC/D1EAhtwemG1tGuOwDmkDoT3ibI6Lm2p85BKlxhqDeuFHXs8sQqSabSmR/RL2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782200194; c=relaxed/simple;
	bh=0yOaiiJKWWmFqs3uKTR2nPLrWCHURZs/pwCU2FLWjQQ=;
	h=To:Subject:From:Message-Id:Date; b=DiL2+47GVH3oojCxGF+6qTF9xU9VHsJyJofoEBlgBTfZGxcqqH1qyrFN7vC3QaMJHaWex7ihsB0pLQn9fPQviminPYtKXc6aJoIOyqyYg/RzOYy1o9H5mC0ZkIHvjbThWVudn6qI9MVAQU/oSVl4qvA9bQE8b9Z8y/YEQs0aL7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLlu8t6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLlu8t6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE16EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782200193;
	bh=0yOaiiJKWWmFqs3uKTR2nPLrWCHURZs/pwCU2FLWjQQ=;
	h=To:Subject:From:Date:From;
	b=VLlu8t6YK2FtzPuIVmkbjUWZaMq+dpSdmd7cT/69ShCxX5bi+6jjghc3wYq0bozbW
	 fvZ28yz0FcFRrhs9ax9eoPza2LjwD8wX0iSkcHO9ApYwp1c7G7wlAyjTS5RfGMt9y6
	 mfebK/wC2cNgff1OW4L+fPHrLl+vSnVFyuqrU0r9rJhVHfgnCBVMD/o6IFb5UWQHgS
	 c0J9ROjRgoY3hZUFQHrTICiQW5PYMHfgIVmtz13DODCcxa6ME+fyojpSTWXOYAQjw0
	 qbo9/rPHap2765v+3tS86IhNFQcAW1cTcIOGGYiqDAYnGDlx0yibohDwjiTUDD5fjc
	 uf885bKlUVTBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A13CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220019368.3285.3236068343627308478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f67e3b3c961588ce92183cc89c030a648923efd354cbb2760da350c4a37e670
Date: Tue, 23 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782200193
