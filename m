Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E68A1BF7E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736723154; cv=none; b=PyafHgSjjJ1milAGWjg1wisJvqpY9kvuc07way/BTRfoAvfhdKw8AiWjzLGuSeEaabP94BxBjWxA01E3ZbTgxUVVjezQFw4mOy6u6l435Uh8TeAT5oLhRBmrw0DuhLBWwB24wYY20BgVmztdtMQny+Hd8/YUY3SEHR+E9hSYpaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736723154; c=relaxed/simple;
	bh=fjddYGxUIV+n+duk/eDXJm1GXfzgHy6TkCknHbgXHnE=;
	h=To:Subject:From:Message-Id:Date; b=rqdSHrx9Ci+BIJhgeu4oJomT03diHh/Z/oo2Vxj3xWk0JhVvFqPJlmrS64P/UhqUC8K1XNHyoEPDhpiSNFW+ZdZ//IB2hpLUivny8TAMJVhahpyvGOBZjKXqek4ZBEMa9GqGOdPgiMtMLqMD7wVmZNzMeP87aptw2pfGi0RVF1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMUx8XgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMUx8XgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B876BC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736723153;
	bh=fjddYGxUIV+n+duk/eDXJm1GXfzgHy6TkCknHbgXHnE=;
	h=To:Subject:From:Date:From;
	b=CMUx8XgEk4uISe9nvHemf9rdzBD4MA5MLOChXkAqIeFbRcOD7RpYqf8xSufIUQkXj
	 oeZNN3jjVApl3L+Puu/lkTIdvEWiqmRwK+rA35zdPK/AnatWs8LVdODIh7rxj87t6M
	 0I7z7sql67UgoZ0htEiljMoPuyLBDuy9VuWfEPSE+B3icnJRoUM2BLp5giq/0SiYed
	 mWtdn9zYSVymZwy4sPnqSLqS4Bo9mQx9NdR/bo4T/DLbFquARjQqy91K4yca7N3JLf
	 rNJyYEYbM5klIBWDdJQjuD707mAS/zyQbx5WaTBPqsMqmscIvAdjhii3dx7Z0jYtWJ
	 iD5YzY7ol2Nyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C525E7719F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672315362.20157.6860037905997442104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa408641efc0e8f3b5e7b1524edb2831a63b26d620b49f6aeb96db96a3a38b1
Date: Sun, 12 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736723153
