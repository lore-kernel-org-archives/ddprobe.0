Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF375E545
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743187794; cv=none; b=q6Hm88IScDYTPz26ZQ2CJ11IiS+avz1pn0PV2ETrsMSrhxTiW/qn8VNgYzSOjRkPHrhmZ9bozi9SqYILRqff/OLOmBbGe3Pd7YW6lOzJKgBMIt9/9cQKcFaCdGzdBnid1Iw3mXfdQsIjJ6QiF/B3pnvp8tcpYBEEbMVkj0pmTNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743187794; c=relaxed/simple;
	bh=1HBbmVQvTvM0HmK2/6aLxWz+J3GziMjmOyXV4+tu/PQ=;
	h=To:Subject:From:Message-Id:Date; b=E9MIZpaxQjrOQf5F4Jswa7tbdFO1vid2RTSR9DI4lsiIyDVUo8QvOR5lj5TtLoKRm4DlL8Xt1FZVdj72TUgEmIXR0hnETxAaxrSOY+ojlf/4wqNRs53Kh8ehbxFtJKjcfYuyQMaejR1iM4dj/xtSPCOgOOEqeeUaLr2umelIYz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSSO8ZJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSSO8ZJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4759C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743187793;
	bh=1HBbmVQvTvM0HmK2/6aLxWz+J3GziMjmOyXV4+tu/PQ=;
	h=To:Subject:From:Date:From;
	b=PSSO8ZJWA2Ihx+9zkk4HVdBEjLoxvxJMBvEfueutPgjXs7ePW4i18BJEnQeU8JQJO
	 Tvv1ZE91+o00lKaTrGIgEaa+iBr+7xqAwq+LjkLbINnYzxg+vVRe3sEYSISIlnkm2f
	 vkH2d2v2IYPDRH5lhx570QfLEEbNkIIbR4gvHfggYJGM9pp2zmFMd+iQYwmNOhelkU
	 zeorOmMfGoxUpEipkVFiiVQ2vpYSqR3jL0IMu/ptB6Q/0KBW+dAzU/hTEESZr84S7Q
	 yVGyLIiJmAVPy7be4ZRX/dbIuWwd9S8MfDzQcSYyxMms3DiXCnuaiMKc2E3UR95FB2
	 NLONZtEz3vMCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC16C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318779363.32495.8546209765233823515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56e675cb629b69a5f7b76ad465cd9a2aa65b5851930d4dc5a1875232dba5d0c
Date: Fri, 28 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743187793
