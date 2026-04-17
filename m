Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285DF30AD1C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776401854; cv=none; b=cKgYFxOt1mOpphxBAwAsasyeoKioI5Il2VCdGb/3iPmY5tVMkPIE4wd05Zunf/wLbwsycyuAldx2deNdFr5Wg44ejDjXuh/yi13cCEZfuD3da7vipCGMX/McpEqdWLpavrr65Pir45/LFUTQwLwlEGwnorxneqgFj1Alvzg2BO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776401854; c=relaxed/simple;
	bh=IX2fAg5igPyBgSLFVWKMtQ37T6pt9FNRqb5+MBkw0f4=;
	h=To:Subject:From:Message-Id:Date; b=AbcNjiDOiuc9OcKtz92VCdYUCSRtJeukiWBWCp5LkD2AV5jOrBm8K+indKnTTb7rheT/z4rOPDZB+ZKLd+hJgtgQfLdQGkN8R4NuRrBJTxs2iq7ZZ9b6nOsWI1XheZcG43CB6XhK8sEnRSJ897lqltEpDVE6aLfcdq+ovEBXQeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldpjXjxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldpjXjxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF222C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776401853;
	bh=IX2fAg5igPyBgSLFVWKMtQ37T6pt9FNRqb5+MBkw0f4=;
	h=To:Subject:From:Date:From;
	b=ldpjXjxWNdbDDrksfN4PWe19ExdGzS1yUeeBa+pIIfG9TSLlACKnLU9AjVLKOeEBR
	 0VyObn1F528AtvDX4yQ6OAPz8kIfC/Qgubb3FjgkfSRLhC9iigni2catisYuEl82ss
	 sJ7EutjBMD33Z/FPEQcA1aG7QOxQQkVdDGudPgj1i0dZA7rxBCbHo+ZyRiiG9OmcpA
	 uL8txTZqBzM4d05nUg1x8JHNRFxVs+oSb50bK/o+JMd389iyygPKcCW3R8LcMSaBcd
	 HYMCLwcd1F6CW60LCnbSyApg+T/EPMvON+2HmMKBwwNoDgvfjjFQDd8UO6CaJ6D7rw
	 ldS0sjkwb819w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA48F8E4A5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640185368.5999.2558823150748536240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3304ef75fe51f5b152206e580c8d2c84df529939ebc0953f9c075c8c3d80dbfc
Date: Fri, 17 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776401853
