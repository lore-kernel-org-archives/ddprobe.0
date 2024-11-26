Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDCB1D5173
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732646754; cv=none; b=ecdJQVilZGoEVnk8HSZhTtRiG0wdktSBOPxXhnm33LOq+WdF1QU1HHHRCR6OOcYHx9JLvherELtQtLOzNeyf9HyGCrlqHx0PKwLmhVSyDOpQVKKs2hE0RmZlqHVGCTw2G7WQCRcru2cG+LTVz9K+oZmc4CHQVj54saGYv1OjdAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732646754; c=relaxed/simple;
	bh=pRtLGbjw9YHQ+45eLP8Wfh4uNzjJ6RNV8Po/LdwmHQA=;
	h=To:Subject:From:Message-Id:Date; b=hraZOHnBS4bfl/dCvGev7ob+G550ave5MsZ/uk/Gye6q3l0urhgmIdzk7m4MYvGaPTZFc9rqRRpT4MicsR58bQEHmAG3lSxsrDvHfkwfxhaC9cjqUhJD3INHHIcL7Lgsg67y/cp3WxPBgezzIERKGi5zTV4NJF9W0tl3S1ftoU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdKAuSz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdKAuSz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E11C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732646753;
	bh=pRtLGbjw9YHQ+45eLP8Wfh4uNzjJ6RNV8Po/LdwmHQA=;
	h=To:Subject:From:Date:From;
	b=CdKAuSz866JpxAyFNPlYtYpRPdutkYTuVTY/KNsVtOGrEwTAzIG+z4iQO524hS5Ec
	 MBsPDLbMMSWxfELnG5Tc83u7IsH+EIzUa2yvdTejNgBA74BlM0+FJmDOT6rfr1Oe9P
	 UF+QgF0LlYoqB//eEvxAjQ7Nui9eHr5aGGM8OJ4uaADtymNxJB0IBQwo3VqdIZxRRo
	 GVUooPHenJBt2LWeeTWw2Y4zap4HVZ390eMTzSad4UoECTniwOKQMtc4Na6PfgIaZ6
	 Ioc8pcml6IBY3/XvV7DajdfNGtbSIWXjVGZ9MlQW+xAtHUx335TWh14EfGjfnjl5u3
	 RVO4iCQnbtUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1616D6554E
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264675362.6416.15592932993664190913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e191d57d806ef5dda4321f047eed2fd2539c4808a1f1280d8efaf7092bec7c6f
Date: Tue, 26 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732646753
