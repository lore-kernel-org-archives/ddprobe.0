Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8F1175A87
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776758854; cv=none; b=aS1+C/TXiWRdU4KaRSeFss1RdA1b7SHlJXwlu3wXEpuubMKsHJ9DQTFUc8dlvj5AqBVY2WUAOjSf/W8toB04T9dBBJVgkJ2gCIZ+e7EQC82X1V8gL7kktrtul1vrIQrFa2a/MZe2rhuzM4sAkcAaf9mhhIu+5HqjK06e+Ve9aOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776758854; c=relaxed/simple;
	bh=N3w5yq9a2WuUVQ+53X9y2qHLvNIZt4asLklCfZe7ab4=;
	h=To:Subject:From:Message-Id:Date; b=iDJJU9rUm0tWc+0xT5nlRMIdT36yT2oeUIeQcAnveK75tC6qb2tya+ddM8p+Th8de0bP9z50R5qTCQIQAoKAn3TNgz5uerkMLBk7WKmtrWM58E1FKjseJ86uNJwwZatgFe6YhJ3iwuW+wW7VJi5gRgG+hwrMokojWraVee2THVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZJ97ZwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZJ97ZwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8879C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776758853;
	bh=N3w5yq9a2WuUVQ+53X9y2qHLvNIZt4asLklCfZe7ab4=;
	h=To:Subject:From:Date:From;
	b=lZJ97ZwAyuhVL8dPzbC6fkUQMtuxXBxtASHcNgZqJz1DP3E2mSXLTCnipqrtu0a7S
	 5GgfTMpcvlKUoOGw3a4sWSx3g8jVFEHbPKqJrUlSH7Wn/H2XvIxvDIy8qXHUR7wdd9
	 wfEy357eOau6L+mJV9PXua4h5aDoe4ix3CXelo2ebbupNvyDX7ZJMhu/x3sn01EpJG
	 gJ7lf/tqgqff65q3lx+bWwu3HC3V9Z9pJ1u5XDmO7Cpf+tpK+VPMFq7IlfTa3I7a1X
	 siDw3mxPYPxv/2tbvbKztC0TnLXPUxALQEeyfpH735iRSa2FczLemkqeCfoyfPF0+t
	 2+YJpRxgCxZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A921DF327BE
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675885368.2752.3791865780192917922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427bf331d5164cca50d7d04d23ae6b6e9d93a949f936092ab15e16956b6c434f
Date: Tue, 21 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776758853
