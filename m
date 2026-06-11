Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E492773C3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781184394; cv=none; b=eNIx3Go0F1TwLGnN50r7xnZn+dWud8c/bOsx+bZhegTHO53SWCpw+SWqF0r7vMGWdu8KFEhB+ISfC6kTabswF6Z8cWIWJRyR2LbiJmO5VjIIwpUqYHbdjZb/s9nfl5yurVx7lbK34Eed9oPoTxDW93nVv6BOqtHGf4pY1F4ZzCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781184394; c=relaxed/simple;
	bh=+ji8X7ChMSXKxE+lVSqPY5zWxnzpI8tZy+HGld6VUaw=;
	h=To:Subject:From:Message-Id:Date; b=h6CwApp06lvKeK9H9AFdSuq0fFlycWtJmiHrx7Tbmj5XM4s8S90ysL89Rr/JNs6YfTSutxDdW4o7AolRguHA1ad9BUjiJxhMO4xcNPfVmIiuLLaeiinWWPja28Vd0/MPNyLhHtP2BUJYWb7QAI5x8FqV1E1DDJNlScn9uGeA8lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMCR3RDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMCR3RDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F5AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781184393;
	bh=+ji8X7ChMSXKxE+lVSqPY5zWxnzpI8tZy+HGld6VUaw=;
	h=To:Subject:From:Date:From;
	b=oMCR3RDp+clGNFIkGpp7W6WhouDPRqNpsTr/VDCESIETguBFvN4sGZxDh/L941N0p
	 bAdGgLQQr6JiZp24TCmPIOJEkK9V7cP91jamuw4u7RlGFaBTL6RkMdud+3UJoaUtQV
	 iv88UF83hInU10kHH8lQUFLmu94gsN1q0NRwit/cm2PUXXHDAh+gl4iJddvGULeX9l
	 wdffqpKaRVEe0NYyhF8REUSAHZ/mjT6U21rQbIvdZV2NvD03Fp3NSCZ2z6T3KW/99N
	 OAxqArnYNDhGeQxHZiFm48n1xoaHDWKrZfZKBuYea9JsaHvDmmYoQ7njBAjGRDApoW
	 kg5n8Jp1OQEYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B909FCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118439371.24501.2632589368219390831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14af38ee3f18d05fece1da448b73022dc4ef780e832ccefa1b1109265d4aa6b
Date: Thu, 11 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781184393
