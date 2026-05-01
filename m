Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BCC35A3B1
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777663054; cv=none; b=NTr6yY0QWbTsy+BfFfzIiMHbSpXWob+Sw5BqvgPReXzBcUQn01LlLxajpA3tL6sn/jNUfHf8NywVHxqsD0KWWUnHn83cWleABr+IWteDBG3pFw6guaR6IC350H4HDRkyXSEi4bnNX3xZd4ZYX+jo1T6awprWTcX58SNFL0kD1GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777663054; c=relaxed/simple;
	bh=K6WCaNfwsNTwBs3zn0xsSguuLAg1bRGMYjdfeRm42T8=;
	h=To:Subject:From:Message-Id:Date; b=R07+aLJUciAaRKDQ+41bhitzAwBO36jCXPDchncVK9+YruHsB9+6yJK8i+ZXLu8YcQIBoLhgsZHz32W7M1Zx0KbXNnJXlSMjE/SkWAofEnHKx4XvsbfefXbNJ06Osv2kcFw8EugMS2F6lLT5okXpPU+Y9Gnpeoasv0shcxCEmXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWtfST8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWtfST8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02C3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777663053;
	bh=K6WCaNfwsNTwBs3zn0xsSguuLAg1bRGMYjdfeRm42T8=;
	h=To:Subject:From:Date:From;
	b=bWtfST8iMnHjaW/Gy/Tpfd6Yo4565hsCcDoiDh9nRHTlvx96MQ/PMD6p61MSiNVDY
	 hsoz490ODObEOlKVRYoe5UYLbdn4/ydHd+WEzFlLlOm8K8U4gV9OgftTzVD6xGR/TS
	 9UiMgpMqxAbnokq4YPOUSGYy7wzgij3bya2ISpp5DbzmkulFDVpN8eA6iPttlnDS44
	 eygxpZo4IT3L85eaTNMZi+m/PDrXAzveKniYihLLYrVubtRtpM/qj1+HUMVSfPv/99
	 Fws5iQ+DQBDTuCyVQnAans7k3/PwE3raewZyNtTyDQdbbVKCw3bb/2lLGb8+n3BTdv
	 7ymWbRxgUKOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD52ACCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766305368.2087.4866646235444713879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6609dcc6a5bf7e04e0a8d0d54a1e5730f7ddafcce63c6f28794f4733d396de
Date: Fri, 01 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777663053
