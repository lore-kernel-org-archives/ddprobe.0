Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE161A08AF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722348354; cv=none; b=qWMriQDWE0L6tuKgUtnAwL2wUac0+4rqgJAHSSu3Wo8yvrLDC5NtoGm3+ytTCpV+lzHWGoN/MMuDnboFrhyClIgl6je1NdnQd2SssiQSbTSO1Q1Weh7UFk0BIqzVekvdVTohcFmJjNE5RQSORogHrZeSY/QLs1D+FJs4j+TFlC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722348354; c=relaxed/simple;
	bh=xuG9fbDv5CN9D6vRY78JIasNJVhZWLn6HZPTRkWG4eQ=;
	h=To:Subject:From:Message-Id:Date; b=TmiGlZSciRwCXNaZFtGUQRWfC5bM+Aa9D7ZX/pwxD0VE327gxE2GD7/EvjNVkyImCeSU7al/eG6NPB+RDzzjXVP+Z+XNqDb/WUpdJFetIKMLPQAwxGP36a+AjkzM/WjMjGYDNI3DWbH+pOKEHhscGiFpbbZ/+fVlTNAuClljKGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE5rJVuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE5rJVuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7E7C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722348353;
	bh=xuG9fbDv5CN9D6vRY78JIasNJVhZWLn6HZPTRkWG4eQ=;
	h=To:Subject:From:Date:From;
	b=rE5rJVuMmqbK1cyowlwwi8bq2RPoWeHX3s6EQOyU7rRpsWz26eNUIMJDEysCsyd83
	 c5935qAURuAXxubSTlbLy9AAScx7dTEBO0n2xV22D4oNU9lYptbwcZ2BuSOepN4xKT
	 xNie4lqDgntCxQoR4gJd32TTCyqgxr8Gn6SKg/9Jw6OcWLK4XFvxcmGMOiOlY49xPJ
	 Z8BrSgbpidhSguy6sCP/ueAVN+w3d6HdWZfHwT7zg8w587Up3dMsI7xhv33Fsq35Br
	 3KLrLrWdhR10m+WzYPr1vtf+SzgClulqc19bDuFdTwEXIP/vCr+5IjwKxhuCJs9Xdx
	 kB2kSjzXsqPfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87C5C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172234835363.18899.6061732558924504736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827620d19227cbe640f6c5d6d86934b3056c32b287673b52f5b182ee1a6e3682
Date: Tue, 30 Jul 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722348353
