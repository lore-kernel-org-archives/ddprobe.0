Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4E18489
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743310194; cv=none; b=fymlDd3QzOx9SbYFSNEsesy5s09lOFGXfZb3Tj+Ieg72YBxnRrv6CbPdu+9lPXbjV2fmCd52CTk7KJ92gS/MTLiQs5CwYcf8yqJgOV291iVYaTN7Sjz5wbc5EgdWxOrrYJtQueO9w+sTMg0uuCiKF2gMUISpAcaKBpv8X2I9+D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743310194; c=relaxed/simple;
	bh=KIsWmq0bvX6TGVF+34HFiREq1pIR12w6HmvARWktO9c=;
	h=To:Subject:From:Message-Id:Date; b=ZJWWXH8LKE+sUxKQ3i8h++ECi9oD3SEe0umoUolNFyVWfLbR7YlSYPXiMNE/mZHelcimVO8iS4DZgtwH6NHrThetnOimDFDR28zpfC5oN27bTk+vLd+7rUsCBBZ+Fkg7W5xNuOjOacHrgmaKNVZbDaG9fz7T1z2dmfmK733NxWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSLOpzIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSLOpzIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6CFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743310193;
	bh=KIsWmq0bvX6TGVF+34HFiREq1pIR12w6HmvARWktO9c=;
	h=To:Subject:From:Date:From;
	b=fSLOpzIL5celXZkP62LgP7wLx8jYKKcqoOKuyax7ptmki/FelprgU3mn8DmXTG0b9
	 utdwcxwqgA3Z1aR/huZcagiHSStqId4PLHuJId/MmKAiqnlcspp1Qo/qS3p8oPE7dL
	 hh21QJhIY2NgAqlSpWHthxGhpvJCd2ws6s+5OgIjkeqnZ4b182fl4daffs/SpOg3aE
	 weVOY7iN0X2kRatwmvouq7b8NPf4zlKO38i21g7iZ8F9bL8qdAEBYmtM3VVOXaam9/
	 Wylv+lwYnAW8SZMSA8n2MSPVyL1ZnW/gzWco7BTdbLSHm91N4E3ntgArj/MJCaZpS8
	 gMog2+uakPQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98426C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331019358.9249.4116162200212297678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028c8305f782d039218be5b587bd083acd4ff576a2273245f9be46c20237b337
Date: Sun, 30 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743310193
