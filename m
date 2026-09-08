Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6003A49F11A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788862234; cv=none; b=kyR0oQFdudIa4RKtiSyy0h2UErVto7n+bV25tSEVXlsBP+dOWk9CDamlDNrertw2SAbVR9+7z5TeGmw1OixNPNYg4i1vjU1TWH6dpSmsEOKAcsn/rJe+mnM1YkLFWtm+fsixjuAVc25uywIFJU2bIF9wD5kjQhypwYuN/8L03vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788862234; c=relaxed/simple;
	bh=1nr+qUk3xBAkUjuHPrx2dYzoa3yK+qNDMpUMBq9wd10=;
	h=To:Subject:From:Message-Id:Date; b=ffDwmbJXJvQY/U3T5j55ovfAy6UPVlk3sNcEvqPcz4gRMmT/rP8XaBxKC7co+dPAUMj/xUp4ZNXu5vKuR363sQBrdeWy6NQm/nn+vjOLgb5C8+UGH00dHbIcJrq39jw3dK3MjJ6lr6wnT14lxbYmuGB5d4FkpRcMTvA0TJnYHMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVCpGlER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVCpGlER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4C7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788862233;
	bh=1nr+qUk3xBAkUjuHPrx2dYzoa3yK+qNDMpUMBq9wd10=;
	h=To:Subject:From:Date:From;
	b=PVCpGlER5POEPuEEpMLC4Ic5ZlgmVncGb+wPLVEAtwO1c9Wbl+5x0ap81ZKnH/y/M
	 bp2QrAsaUuIV18ChymOs2OLK91AVEVMf2KzNuIOMxBmo5vc/C41nmIgTcOyWfEkb/m
	 fYc/4G8h3sR9eMincvGBkpXIbo5w+YszUDKFHpcwbELiQh3tKmh992xFimgN7G38Ta
	 Yr+ud/2yb2F92g1udWF/hEjH5VVQBjh1vLpwAC1vDNjzPLQtp/93xW6N6cwVJpgaKP
	 ERu78sMrTGsCwCJEMQ3I3tOqv3J0DdtOfUJ8zGjgC07rFd4J0uK6b3vrqhWtwJ1BeE
	 0FtpGf4NrRwoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FD1C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886223373.17812.3180684202649029453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6c890384d3186f522f278ea2fbaf89dadb3517aca7c46744aa563aee7594c4
Date: Tue, 08 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788862233
