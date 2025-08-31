Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2210E2512E6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756632594; cv=none; b=ATuFtFaKydHGwAHIDyR9rNOXyqoAHIsPSREmBFCByxZA57J4env5DH+r599rle76xzbF8bgyIaQ7NkXGd6qwkUl2sKkqfVGnNhAtPu+QTnN4xS8/PBWtt3brPoDbu/BPdjuNSZPYcykyqehr8uMMRT0QPcKZPwd44oXM71+YUV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756632594; c=relaxed/simple;
	bh=HFf9eXeD8TzAqnvka1gwEbZq6/5g3cMJbPkgR0drLZg=;
	h=To:Subject:From:Message-Id:Date; b=FuFcRKozdlniVXaSfevYrMLCPVpE3BFFGYQKAJ4a5D4ts0Nu/2ra5l3p2sU60ufxELRCgHz4g1INgskei8a3qJtsebIGFcHYk0RvopRiL2pe4Me+XtK29eHykiB++ymfHuTNoCqDaX4LlyVn8f4OStrfZETRH4yFTF4FaraIsSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkARNrKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkARNrKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4303C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756632593;
	bh=HFf9eXeD8TzAqnvka1gwEbZq6/5g3cMJbPkgR0drLZg=;
	h=To:Subject:From:Date:From;
	b=RkARNrKwNdpIycUiGSqyPWOZ/BZjo+oSlfdwfXLmtYUrxCJWnJSdLACbWbhQq7Hvw
	 /N7gitUn4gW4w6a9FJReHCzL00U43YdKp3wnLQtSJK2VzKklcpkCoyqKP8q6MsBo/x
	 gPJe0lB/Il8CNlN1MyqXI4z2Fpr3p9IemFoXGdu/y3hEPmHQFbLMcaYohraabVJEgV
	 hAXxxn75y1pnylgPszMstbxyj/r9ANkLkybVFSCtwrXklbbHHmx5VEbB1RC44zt+LF
	 m2SE2+qmbBUBzK1EBr+FQpervSjcfG+v0pqfe8DQf46b85dYH2hJDSsm0FzKFL91lP
	 d/NVXTAolRy5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92311CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663259357.25022.6592322576871701232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f2342a809cf38cc3f1faf1a1aeae7b8a273b61484db1ad197dfacaf0f47115
Date: Sun, 31 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756632593
