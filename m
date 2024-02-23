Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033A37F
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708649297; cv=none; b=tZmLFUW5Y6wytIRBJ+cWWqmgwCj9PjAiH8QqiMk/FJaq+ZIj6tS0Lk/qb4OQ+CXa9mDDRW37HUl1O+U2qc7qZgqQQlZQ8Bq2cKX7TsTvam8Ivyr7MTle5l4ubxT0jFr7syD32shOgRE1y9D6ve5cgPcPD+opTJO8r0IsZTTt0Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708649297; c=relaxed/simple;
	bh=m5+azbEVliUsjfYrNZWmMuOaoV4iMu5+M3pcRapMvkM=;
	h=To:Subject:From:Message-Id:Date; b=qZpChJoiGcMqusunR4xbiGCuF78Ef8+zdVOSOVne/WoXZBhvU3l55ZZbL3aF18ud/LvLBR8F7nvG+1N/ISk5C1/UjVZTRdEQbyBYKiuVk4pw/hJiqq5Ry+YNjeqQAwSXFrRMtAAUA937ZeJyDWpfzkwlja2Yfhkf5hTYLmyDx8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOLUxJCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOLUxJCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBAEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708649296;
	bh=m5+azbEVliUsjfYrNZWmMuOaoV4iMu5+M3pcRapMvkM=;
	h=To:Subject:From:Date:From;
	b=tOLUxJCCWu8ZB+EbbPywsi5GlMPIPB77gU3rmgQygU53EYIdOPX7WNXhktCOxoXTm
	 LxXbIGpBFmjcWmnH0hMThhe9Adjmk2nt5ZDt0GcewZWi81BDKjch1pFouX0a/6aeaC
	 Wc2QD66DAx8yia6Rs9We40gxhVhOsC1kA+0vVkKSlNTLn/7xMT/gck9DdNje8Kjwpv
	 dtngQCi4VjWqupK62VY/+CyMqg8RHUD21IAaKIahcPAqUcMcCsphWeYg6i9SneVxS8
	 WFxq3cVxcS3cizTrP4OsPmgx8/u+dBRgQ35BOdEFxI+eCe91w7IA8z91hZPJ7zQNUe
	 GyYyf5eDNNilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62493C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170864929639.17889.13314345407841544908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e18c2a8cb2339336e2f84fdc19051aa4d03386fc50cdeb7490970cdc669191
Date: Fri, 23 Feb 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708649296
