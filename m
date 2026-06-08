Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CEE1C69D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780880674; cv=none; b=bv4NWd/29RVddhIzW1EtRt9dwB4BXhZPKecoPE6A/T69wA3J5ZVBZ5Y/lKa8XQTZEflvcwfBqVDX36YFRwK50jk+WXaendImg7wJcVKXD//4QBtSHts+/QzE8jHa1oMHkGrCe+SXs1JprCYRsgqZqP1vBdFiqvrUPDkLsmkbTGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780880674; c=relaxed/simple;
	bh=a/2Mg3MqkHe2dx/gQbDUJsfnFA3gMkmVlek7C2FUCXU=;
	h=To:Subject:From:Message-Id:Date; b=Q79YU4C54ELa5pHk4nQkPTMiS9bEuyfMZaTAuyXZq/khYMeBDdy0akWv+qJBq43Ecr/pNHyBe7DxX47hFrLRFiA15Bn96Uvq8koMqRDataXlwX+sfWX3DNf7Ho2FxUdj7B0tP8ZJwCAr892Ac2Rx0rb1zFWs3NEddkvLHagjSfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKkYsnoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKkYsnoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7793C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780880673;
	bh=a/2Mg3MqkHe2dx/gQbDUJsfnFA3gMkmVlek7C2FUCXU=;
	h=To:Subject:From:Date:From;
	b=aKkYsnohcuvULIDD+7CwMBJ06/g3J2LfhPjcO4MANQvJLr30IUlqIeHCDtzsEEHhe
	 KmDmXOz31+sAddHjoAP2xHoeG03F350+McRL2sLUOPJm1wrtpSKQU4Qyr9vaGZKKx/
	 MXeNXLeuRQyZZAaQ8IQe5AsXmk0mCoAEdfe0nKdVjOMKzQczRE8Q+ieOUTUmwKnZvN
	 pCHEQ2MuP7sUR9gst7odkL+qUZyfcu8iamJLkC8kcVBu1/tMRETL8znSUmBIumMgci
	 c1zCt7A2+32ClQOExCL24YUOBk8w3oxRhj8xwvLUcTendrleL4t+iLnIRxDK96rTCG
	 hNrYhUhaeiPmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CC2CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088067369.26785.13320707099889328566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b94e9554d0f16582bc1c5d957f95f52716e3328cb151d5703efaab5f229ea8
Date: Mon, 08 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780880673
