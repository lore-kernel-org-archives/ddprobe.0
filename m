Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4320C037
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762480194; cv=none; b=buz4peikwFH5XTCzUDayHKtj6laKihCsj0YGlJyaBx/V+0WBb3y7GI5zs8138J9IYb09FmbrEH6gcJlFcqqqWnp8gchjWB8xa5dMiUdI3OESYqcXtWaLj9BewyS8eyd5TrviaD3ShLyoeqVRt6Bc2hFpyIqyK4HGSUsfT09rzGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762480194; c=relaxed/simple;
	bh=1sM1lklhIJBg83aOX6nqT5uaJmhL52Rg+shCttnDepI=;
	h=To:Subject:From:Message-Id:Date; b=RtQJx4AFxlhk9s0Ue3l3c5yDz0meHafWbwhJCZZjeWgLU/3zdCHr9loxFxGke97bOVM9SB4+trWjbIO3G5JPJ7KfVf8aIdY6TgPwDyJzXIC0SFLqaNUCb9h2wZYGyeR5j2ze1YS0wCsbPu/spsUFDi3k1yvSpkp/0qMPZpEyJHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHW+odMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHW+odMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABFC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762480193;
	bh=1sM1lklhIJBg83aOX6nqT5uaJmhL52Rg+shCttnDepI=;
	h=To:Subject:From:Date:From;
	b=AHW+odMeUlByrnOLbBsm5NQtbP4qjE3l8YHpOdhRnTQqEFXspSFNEpPeJ3jiHgECD
	 BD4a6jo3WyZZQ3nCrKoZhndw17M6/hDLUluI2TJhEgyINwWHGU70G/yDmLS+ycIT8H
	 Nc1VX0dgGjAmJzE/8J9S6RccHwSZfriMojZPKwVUwa+Syx7gh6XmKUnJ/r4OfXr0uf
	 ZPRt/IfLXoh8V58wsKcXZ+13sXEzkyzaKVW0S2YI5067UYPMxjO7lo5cqx/EHxM3DI
	 4Si7pt/T4YhpXp+QX0J1Zf5t+3LfuGRFqxeegEit1QAJiRGkCNb3RvE0hq/6Xu7buR
	 F1vmKkOKHbosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3FFCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248019360.28368.5031913791998146501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4ff3b0694babfb7d9034ccc152aa78646acc470bf6630c56e24292152aaded
Date: Fri, 07 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762480193
