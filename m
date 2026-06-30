Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6123C2798
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782787714; cv=none; b=U8KWTjk9ueZTwuqExZ2+dOnO3d1OdQoxGijwrVdJkpiEANYp4aIhYNDAqFGCzaeETc8UtiTQ92JpWZVArMu+dVG7z95u+r/GAokmcleUG9IcfxJ1tGKWTL+Su4VAPXEr9AIZgTJx/DdJIn+ynwSIXOXfmE7maTFeCzdz030xhwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782787714; c=relaxed/simple;
	bh=D6xu5hXlaXQQLeYh3HWwBHZvOuhS7suyJeeT+TjVmW4=;
	h=To:Subject:From:Message-Id:Date; b=j+1eQ5wfp327xKENRKPmbhe5Fzk5pIRsuxsEMAFAWCt294xeYPMDrCLhPcsaFIomIstlrQ8sF0Y5LyBcazrgqVEvL09QMOJTznbXwJ3Yr3u1wBijnPAqxHNwThHQfFe6ESuwUdBbNAcsPNoZ4V19aZlBBh6r1yV1eT8IeBroswo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRyjz/RR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRyjz/RR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C99C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782787713;
	bh=D6xu5hXlaXQQLeYh3HWwBHZvOuhS7suyJeeT+TjVmW4=;
	h=To:Subject:From:Date:From;
	b=jRyjz/RRYOgGw/R3TWwmnpZrFrSj8NGmmGaQtgoSzMDS2RSuCyZzoVJ1vUVESquPz
	 vMBTljJ1Dv1NCMbg73JpXZYn3dJINVSigOrjtpiaVW6d9Jgr+SrI/oWTptFgms7rOb
	 ygHVqcokFwwPqDLbm569Qx/M8jGtuRUwHhdxarWyxD0JAn7la7Op1c5ahyrhZZb8NP
	 miG//FnPwopbzi6VI8yqNutSAG69A2sGBtj7sXfHsyIC5MFV2oHnom7N7qR2TZh52O
	 F8uO1Sp2gJQN4+et3R2JzgOVolcjJZpyYQhqXzAIIbq320JwGoJKbtdsgxFvPfnfFs
	 DYexdQPlsk/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB222C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278771369.10911.17795823998137916308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd12ce9af23138d73c9d288d28134858b0a55039b7a35bbddbb62ce63a1c6835
Date: Tue, 30 Jun 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782787713
