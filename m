Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D429183CC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769995434; cv=none; b=sJwN9yFqDyQRMsmIeVI7LX412KS4QTkypQNU6n4lTyodHPZHUbcEFNbmO7KGFBvlvEJz6BBm+A+L0anvuk/jmishkeCHc3ttbyTlHw0JzyYp1BUZDGuHKkBMBVrIxbZYrBZAhGKGw76n3YmL4hVVa2e5ymV2tHjOeHUqXyWllWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769995434; c=relaxed/simple;
	bh=MWXIA32UeDs+ns0MmHxzSjfqcm/37FrEhnepXa7E+Hc=;
	h=To:Subject:From:Message-Id:Date; b=kwrHn7KqmkIK355SSc6Vq79EVJPjSXnPBOKKUC4IDFN5jsOCCFQTB4wrqWz8gKudHCrYo13oarljVA+V4F/aoyuwdFPnikPd0ltRYTNQS+zIPoJGKO0JoOjrdz2O/gBi7e0gvvwqFqg9kmanxcTfCGMiPyfW1uHF/ap/fUEAW7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8XHRe6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8XHRe6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACA9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769995433;
	bh=MWXIA32UeDs+ns0MmHxzSjfqcm/37FrEhnepXa7E+Hc=;
	h=To:Subject:From:Date:From;
	b=j8XHRe6TGxK07UeUo59IGdR9CrBNUSJCzCi7ZYNQM2WuVFVsjbLr2rHXuIQ6UvH5k
	 hh7/hrKo4TsdLeDvLMmJpGjGaEHa8gaVXODJQNwJDWeCjFByBwhetnPd3wBNVZ77u3
	 fscwHs8+4K6asCpP+udMkjnBoISHUXxEVD2n7tjBW8CyyuhRfMlfjCbGGER0eSMMMN
	 gwcmSA6zF8Xj7IXa8etNQ9GG4KB8uA87CgtZwTPolcwI/xK38KZBvE8dnds4uok7n0
	 2ElxEUQlT4yZ3DqKn+drwdQ/fjUXGhIvLu3GQvuSDv0ZHLcJs2bce2xhSDqwt9hVqx
	 6h7dneGxhzdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E609D172AB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999543361.5024.2494185706543859766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e652ecb4aba8751d580af41ff217cd3dde7082fd15a656b0eead6e086aae546b
Date: Mon, 02 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769995433
