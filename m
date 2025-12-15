Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CA229B78F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765838574; cv=none; b=gsqv5MoShoYEywJNFlGJXCXTeg4eVBK11xN+76BxdL2klNCouL5YCN+05peFD40DwHIMpMFyisk3Wh+1H6YiG2ccY5utyRYesTa8zxf/N69NoTT/83hWke9ReDtFMMh4AKXDDhoDLKQCneNS6dgS4jg5boOF4P3/al0W6Mcdmu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765838574; c=relaxed/simple;
	bh=TW+1/58EM2iEwAFVPN4n7ntcRJlu4q/c6cHsGMhxAf4=;
	h=To:Subject:From:Message-Id:Date; b=RRlrji16e4qIbwtIjtqFnJF3DnDBuDctwJI/DL9YsNrSWV/38GxOQRaRsnBft1rmITSRj/jAqwEAIfKyTQNeSoUGUPRFq3ulErHgIpZ/HobujTPt86ITYLkywHrmdTeh6/VERMX/pCbASVXksf92wVW20Cw0s8s5h9SpawnPHdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnkq1aIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnkq1aIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE22C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765838573;
	bh=TW+1/58EM2iEwAFVPN4n7ntcRJlu4q/c6cHsGMhxAf4=;
	h=To:Subject:From:Date:From;
	b=cnkq1aIpfrQOIdKDPItvk8nplbFI4VJvEubhj4CTIB8+ojS3K7ImHZtyEHnfO7FL5
	 NAn66LSafELnT1TdFsiI7zIDC58pc5tQipenKLybjMezA1iaXTLJUHTRxgv/NO4XjL
	 9R3ksgVNF5MihAUqn+sA2Wb3/qbxFHbjBJAWs5TFvzWmUhGTjKn5blSbJD2PZqidOo
	 7HjZYPIbLNkzyCxuHcMkUzES4RcWpTnCABCrquiLlyzfjoKdhWVAFXCftkrr5MrkYa
	 SHJp+Z+0gJuDetIZH3dgNjiJidoG1M5VPfD6PIWE3Wh9QTflh5n9vZVX+1wU7Hl0ly
	 P25UbOZDF/NJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646CD5B873
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583857358.18889.10794315505120097355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e3c84a99f31b289317455bc9b264d7deceb644a79679f55822e071349a0df2
Date: Mon, 15 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765838573
