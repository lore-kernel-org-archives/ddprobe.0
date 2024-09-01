Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD252E651
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725179154; cv=none; b=HJHe5wBoWJ7OPcSfDnIOEpYDcP1qp9S6WZaqrtrBYSCuhAb52I+2Id05i8GGLc2hqviQF5i7n7ewbn6Pz6gDbsdJQf+MeKWl6QN76T6L/GrdRp1yjQg+KE4OiOkg/iY3V6jjAoypFqiugEYOwXtKtdI6+gzpFqYMh7VMBodF+1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725179154; c=relaxed/simple;
	bh=15M8CWKhVvR09SudepR0gm8IY6EvNanVWwaXBtf8dA4=;
	h=To:Subject:From:Message-Id:Date; b=IYoYwEMaUcd02RTkgHVLBXybNrcR2MOFuzjAkrNhSR6o0lYsrCSThxsQ+8SYPQ3S2yVyeFd3Gu3SusvPxau65kiVecf+apcufLr8Z4UNPc8cYMkRXH2yHthCDB1fu2ecjxTrB3Z1jFnyQE9JKqKIsg7SnZXBNo13aIWBkK49ObU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5hqvZ9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5hqvZ9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9EAC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725179153;
	bh=15M8CWKhVvR09SudepR0gm8IY6EvNanVWwaXBtf8dA4=;
	h=To:Subject:From:Date:From;
	b=b5hqvZ9EosWkE3Slbx2O3pmpNBNkzx1C66jCtKVRxbNKREKVwSy49avaQotqWsXzP
	 Qie8QiTbtXtvzZpQI62RcsvO2gIcOxmvBsTG4RnHDqPfwRS4YitBS5vpJaOcZM0yMo
	 yhYu/gQ3ShGgnwHCabPZWaYa13ht2vfS+Bo6Pd9hFLZYjwaS5kI1m8UpyY9H98SGXf
	 1ozdwM3+CnZQgop5EbNHdI/2XitLGIN9k//HqrH8uqRVqOV9SnzzfGE+G6zDw+vBvB
	 eYl3EdeTwr+2rQfP197GSMj9jaoH2n6nM5vAYQPwZ5UsR1AZHVpvTYwQdG1uRcXycg
	 46NiGdohs68gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9821CC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172517915360.32457.16543349023805823884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bb2f4739788d1b1d6773075f67fd89b5fd418745e1c15e43dc61b46d2f0f1b
Date: Sun, 01 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725179153
