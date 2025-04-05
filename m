Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6932A179A3
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743861594; cv=none; b=t7IxvSMVwcEhIn83i7U2pDS2i4jZLINveV/MH5V6RYh8hdvW0RTxGA8Zvljl/15drq2ZEGZd1vKX95LdvjrNppXQdJ9PdDqi091FwSJZsDBg+0pRKGtg5pVyERAv9UFaYv+otR3/b9DOPoPy7tD+xuLQ2FrmOVdTjnp//ioOD84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743861594; c=relaxed/simple;
	bh=EwVlmGaRQPw0xR4bsOj370UnnQEsr5w4WFNNSKT9TBo=;
	h=To:Subject:From:Message-Id:Date; b=MJ7Nz1W1ZrMAa6siRmKT8vf8V4OtKxGoZnKGdb85e3gX8PjE3048O76NWOnDe3saD5QOS5MaGus+wN+yrXIcGPY5p4AdzljsYP+TR3W68LsgOt2sK0qwkbfiG3CPBfxRv3AAVPZ0gwTMQ3byFjMytT7Nxx8S4KSi4Mw0dRBA7TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENn5TBYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENn5TBYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C320DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743861593;
	bh=EwVlmGaRQPw0xR4bsOj370UnnQEsr5w4WFNNSKT9TBo=;
	h=To:Subject:From:Date:From;
	b=ENn5TBYaKZQU/bMibnIEpVMdFcLJuYRCybgAs50tK2XiiGIgqw5pCqo8zk1nd9KDD
	 VtmY31t/Pbqh2bYWTf+srdkQmoViR9N9Zes8fV3QXQKhDpSihNpFau5lEO6EmJ+f6A
	 m9OCnf494vHyIu2j34BTXGJXFbF7Jk8Mgp2cNiK+kHNAMw1eHeJbq0r621fMvSItBZ
	 ILb60xrJ+ropjzA8KJAcclAhWQnj6bUftvtzuoT/gYa25SszdxzvvE04spAv9tUsTa
	 qVpztm6sJMNfV1xvuixeDIBmnj82B8WwIVVzlma69DTtsJH6QooyGAzuXby6nhLXb0
	 lcA4tc1lJJFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19E7C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386159360.8800.17514406281978383805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b53fbac07dc80a35af0f636dc43ac5b5452db88a8da717f53b6240fd05dfab8
Date: Sat, 05 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743861593
