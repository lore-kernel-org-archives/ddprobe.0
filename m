Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C013D8A4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756751395; cv=none; b=cx3w/0A/Eop0C5x50jiyhIQzGPRho5WHhFEq76SIjz/FY6zp3jKtNICr38oRqL8Our1MscxYhZNMlYhpr6BdG0cZJgn82yjhYJvkvl/H4dx0PfrxH2Dty6FRDrVEXAk4NN98reodBrkMrcXEDlW9HhvAeOeQyIOFaYJdZVFcDdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756751395; c=relaxed/simple;
	bh=dTslppgrGTz7lhNSnDjOJhZG0dV7JWPd0iptLMRuSIg=;
	h=To:Subject:From:Message-Id:Date; b=GIzAwV+28/XxcQ2PlwyZQuecCt3GsrZEpD92x9DBn+lAXC43RNovHMwjJw4B7y/brKTGlHyQQLnPbiLVwjv1m0M/Wrm+7rgdQy8ZNHQAGwE6rfZCNlh+tlmHHLVnUjHGq3AnG3aBdrDTB8tRxtoxczZYYmBK4rdLwxSp6SEhAZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M20hikF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M20hikF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756751393;
	bh=dTslppgrGTz7lhNSnDjOJhZG0dV7JWPd0iptLMRuSIg=;
	h=To:Subject:From:Date:From;
	b=M20hikF+AEAhDsK7j/ABKEi0Vr8JDNfgvToTcMoJKWHNWsIbhNdN2/Os7FYyMz0WT
	 9xgUP+xHKMjVEAbU6/vAwW9gapBnCLeqQ2E3XC9BDLuk80ip5zyoRs4mKsdeK2Pv0x
	 XsVTmdSF76AsDZOhQU/c83ZZ0WrDSo26AhpjPbKtvSuiRfs2U9QSt4SEzhYZ2awYZa
	 YA3gfhXVRcSRsOwr8PxlK9qQ0p1dfo5ay3E5NItf0bZBfMI31AQjxYg4nxpDNK3Qc7
	 ctq8bb8fWfPR+pIARUlh0ux+C0OnVYSmP/PXD0sUDOW5so8dq9oMGjf6XgnMrtEiDp
	 sArsSVlqwAVCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90544CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675139358.7765.9042321054313936368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49e6876bc6549a2c12f3abccf7f0be08fc40cdb8deca93d3697a7053d3285da
Date: Mon, 01 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756751393
