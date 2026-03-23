Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2241E2BEC5E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774251294; cv=none; b=iZVxkXYmxlPUnNKtXK2Dxlaqg0dyOFsVGB88kpDrA61D9W0J5QSyPQSG7uO/U5ImbpDXulI6nTkM4Hc3MK69NoQBOvMVGYWnee/xMN1Uer01Zmkt/JKsECx8s8n7LFEW6YgG9fO9ZpSyc5cKUcD8fQWjf+krIcdrnPx7wMbq3CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774251294; c=relaxed/simple;
	bh=405cPp0zyubNyj89CVNXnHHBkzey9gjh8kZBamW6Qwg=;
	h=To:Subject:From:Message-Id:Date; b=gIRjbewlzhcoVSg5z2SOemPyuZYqj92q/k9jj3OC6g24WCO4zg3jPLham9r3dO5ddh7YLqq8St6LwW+o0iox6hCRDpz+EjLEDekZOEYmMbo77Mq+t49H2lo1TNyZmXUQmfwhBuyX3zw76Xcl9teKk4h3v3VbNoOFrz3QRnhJEgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWFRbPOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWFRbPOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B42C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774251293;
	bh=405cPp0zyubNyj89CVNXnHHBkzey9gjh8kZBamW6Qwg=;
	h=To:Subject:From:Date:From;
	b=fWFRbPOI6De2PJ1KCiHWArUK6nz/Pj3xqzBqZWzVXJQvZG3TgvrLi2RkVkAJr3KNK
	 rUiWGIzBxKtis9LLnLJkaxASzCsQ+pvYzjYIGNJyVf7mcz6QC1swb0/t3CnHnzyXmI
	 1HIVGb5F3M7qy/kdVPhcugNRHGN7AxqWWY0NkG6Vqcf5suf8E2NOu2CYwMUyB5jN7R
	 WWjMlxaebCAFkLhnEUjii381zgBVP1aK/HLxAOTEV4NVsKUA3AlXGm8ZWobvD4n30c
	 3i7a52Ms2WFyDJi05AJohxCrSLEmZ9c5pchWJNX59JdGGUGX9sP/NqlUm2NAM1ULSd
	 pbyDVc6pCZ6Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFABD58CDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425129362.18924.5842152151778467258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efab9db7f8db6efdc78de8d63bacd79b857ca5b6920e794a2ec61749400e12f2
Date: Mon, 23 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774251293
