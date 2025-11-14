Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B542D8391
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763108394; cv=none; b=jbV81R+oa3lOYRqy/r8ufDkgM6XcMXq147I+iYIFRxToAlSOkf5kUtFDd+tCabeXlaZF213yjZLuS/qkbdOL5QxsI1apIDEmmCwLlZ/HxPTdHn1bucPtvP2+lDMyj930pqKcXW8I8p3GfIefHlCJdpuM1+SI1YjS+hm2kfWNi8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763108394; c=relaxed/simple;
	bh=a1U0H5LDoS88lJwdv4E3wzs5OPZVxTXUXTE5UJsZRJU=;
	h=To:Subject:From:Message-Id:Date; b=rFc01lFyQTFkcTTpfqrGyN/2RLRf+2DgBt1oEzQ2BKCNfylp72biqpO7mqtFU7jzVub2Z6HDTm+bP04MgAZgn4hcNDN+q6ZYCPPeKuW2dS6IfPOFLz4dtie1naD/ppO4TdSPmm/SW3maYUcunPxMEp5KukyDMOk8vAON627+mGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/RoIc98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/RoIc98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB93C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763108393;
	bh=a1U0H5LDoS88lJwdv4E3wzs5OPZVxTXUXTE5UJsZRJU=;
	h=To:Subject:From:Date:From;
	b=Q/RoIc98wyhv8o4mCfB/bKhOzJb659HgmQH6PK9hMHq9NVtABSkaOxU09mAntfJC8
	 lChFFmWvJNp/T0CcylIJHHkjiBRs2/zO4fe3PEJg/KbbOKxxf4RFQrfn+WO+5C/WNU
	 KZf/ptow81aCz6y0ixl24P/FLWQ5l1QTo6nyH/mytagxRwF25bBz/vXubkazsSqOsg
	 DT7/lmV3yDbUzYXze4zFK1q3LB4nhUhG2NtYPai/5bWzdr1z8rZDESP6hAX/6EP6qy
	 TluRpbu42bZNybXZCaNv971FvymURLIRAZixv2ztRnmcUcYeixWknRgaWfc8HeUwfL
	 /x1fk7FOWc95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C3CDE027
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310839358.32187.8534755590500512738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc629171d0963f9f49104a6b29e82449e33581b3a62b617f6e49ca5315e2fbe
Date: Fri, 14 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763108393
