Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9228F41F7C4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783371514; cv=none; b=dKZFZpnlysLXzotufIG6wu5K5LF/4sja4pG4NhJ5f72ljrlyS2hFtex9oPAzaeTUDXIf9LcID3iqTMbbXZPLoUDGW8ES3lS7UwvDwyyvH+ZIC5F6STmuuKJk6g4yV9CgoyfwH8ZbBglwgvTB/iRDvDoW69g4pIgWeMM0E/rpFAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783371514; c=relaxed/simple;
	bh=DKapTUiQt/IgGhn1bJjTNtHdFl5mPivOCnRNWJDxUiA=;
	h=To:Subject:From:Message-Id:Date; b=UVXhXlw9laK2Z9iu/AMZbuHsIgEDZ+vSOMwUPJQW/ooaG5Z+XqDpU1IWuKn6HuQ+a2a/4jeW8c59dufmCkmvpMgJ6c7VS3zQJiYd/BBgqB0AH+Zecc9sITm5y0ZJykcPcyckLXwg3pu7AeItt2Y3OGEa8pM7idM4WJ22dMqKOvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETbyp3VM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETbyp3VM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD60C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783371513;
	bh=DKapTUiQt/IgGhn1bJjTNtHdFl5mPivOCnRNWJDxUiA=;
	h=To:Subject:From:Date:From;
	b=ETbyp3VMZZwRjjLTiELKKZhImK3MrUaW09KkB0WzKsMG/hAHnOyWbee1B38CO77LQ
	 NB7uaF6DO0tnsN2bmeELuJqnAHB5rUn7XXEbGDrIt2Ur66zw4ywFNyABAqGvliM4ZE
	 yIJ5JXZ740312LIu3BIIOCfQsqptJqClMDYyhUPf1XIl9Eh19ae9zy9qcHDhbblob+
	 0XKerALIySnjoOMadXkplbF0davrxkThWkxW1VftlqVGq6Ovzba9IE8w9wsvI6X5gE
	 /zxbqKZ4O4OjjGzJDJlmCsQMo9ZyC1QarlUAKI8nnxcZRoFdsS26uF4NfFe5wlJOfG
	 wxe7pGqL6zcxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A865FC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337151368.26487.4510897579740413396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb42d073fd76628ff64b2e197717cf56bac87880ce8b951f2fadf5f494ad180
Date: Mon, 06 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783371513
