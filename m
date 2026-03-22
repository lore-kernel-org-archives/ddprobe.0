Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EE537F8AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774148094; cv=none; b=NtHkVsr7zNlfC/1qdN33EiDjgK4Me7TbfVWSonTTwpa+rxEYyTPip5Cdy7SS+qakkQN6smAnwlL8U0WvxRlkgf4m/QM+rRtjy0w/k3rZfgaDt6y2Oc0waNGDtZDXUOa4OdobH+rCcrA/npyLiYt45t2a3rpLtERHlGiyPwX9tps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774148094; c=relaxed/simple;
	bh=bvcmKcQXl8pOKrAm8wtSZVPAz5HT1StXzsBxjR946Zk=;
	h=To:Subject:From:Message-Id:Date; b=AG8563BRCDdb+0xmqJMjQ/9bFM1+5Hxuc/VkHFLaPovzQCL8ypIwVJOSscpY3GiLURazQzuyxvgFb4xb+jZiHwT/oxJaHtqOjUk5ASoYKl3v1bdyiq2Pk4CO2YC+NX5YI44+B9KDAr/Gpf/fFzgnNlBUoV6VIkeAGYzpWjMsMC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLsBzn0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLsBzn0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1688C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774148093;
	bh=bvcmKcQXl8pOKrAm8wtSZVPAz5HT1StXzsBxjR946Zk=;
	h=To:Subject:From:Date:From;
	b=gLsBzn0h/+jCwGsXDMsyg1R82wTqpFp+DSNz8iRIvHpo5/3F5bqfpID6hwEXyL5eb
	 WT27UDe2uNz1C3WAzmUQvcEnWik9pAls9JwFh5szZHSds+cuochGyGINHrXfVysMve
	 oxVFYu+swXanvArgREPle1Khsd02rnnbbFhO3NtepzixgHzZSIU357A0SSFYqYyK0e
	 NN7iT87ikOsO89HOeqZSVacfPXBt/fyjTjnibRkdwv/OPH1FN73GxxHpenMF9RtMkt
	 Gu/YZsab5QUeChdOxC/posNhzb6q9m+0MNr4nIwnw6vGIq/rhEcyDYpgQgZHwQOLdU
	 k+fkupTXgVwbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA44109449A
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414809362.23380.8216227008971456691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2cbf55f174caf9fa942fa89fde7fc3cb5062d55c360fb6e082ffa76f52503c
Date: Sun, 22 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774148093
