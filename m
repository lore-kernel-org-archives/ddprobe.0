Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F29F470EA0
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789129234; cv=none; b=OUMGDv86cYXlR6SPFDHciSbj+i0i+nU4VTWdrFpynK2yvmMNyf8IDI4bc8Hx3ZtILSROybMstemEZ5UO0nc/sh6/+dtS/Tt7sqQhHsfbnJC6giHERuyYKN4kaFA3P2q8bSPBSAXeep4rpe1ymZEr3TqkoqZB/ceK8UpmUHSJV9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789129234; c=relaxed/simple;
	bh=+jrSMA/wuqjIzoXuVfoKcaPTtBo6/uflrSEb5V+NVxs=;
	h=To:Subject:From:Message-Id:Date; b=mHrXdKSfyMj3K8dKOjzsf/1GR/dUGSP5RASvMOPMPcoU4Ah/teoAJIdd4TqiXEAyxvpTiMJTea+XW4FBbCvWfvxY0RLE4avyP9XTs3kQ8btWAyEYRQ6ezjyWynFeViFAkd0nc1mPJTG8WXCDuo72bHz4OpGsFyHEDEbtWmdD/EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8XufTBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8XufTBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDC7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789129233;
	bh=+jrSMA/wuqjIzoXuVfoKcaPTtBo6/uflrSEb5V+NVxs=;
	h=To:Subject:From:Date:From;
	b=T8XufTBNftykyWWrnXS+6/vUR6f1K4Jdj1EwP43mhRjg3uXh3FiFjcxNhW+JCJwGb
	 gY1gqxmY81i48FFtjPTfvbKT9xLO6HDZrnP16HP+SHhGW/l4mrX8UgUTOguXusxlSU
	 zz4RaEEcMDyioX+jaWXMQQeyTSq1pvtqGSO4JwP059pZNZlyXu6XTIMuUUjnYcG1CK
	 d5W0MkXUmgpr8sIb3R1SXFJDiEUuNPb5S5XJbjBSu8c8qqUWMLHXcYVkw8+kRb80pr
	 WRHE2AkL8MCPJO9iKpckA0dO26YKimPyZseUfY0E5vstDwRXwddyPWpIfTtAkMaHly
	 WcUH31DaM/Srw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FACC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912923368.839.416402066594726186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ed11fe1cf698d0e8d80b07c4dfe64f9005e708da59b72f7ffdf8050d55ab67
Date: Fri, 11 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789129233
