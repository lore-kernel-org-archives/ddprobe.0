Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D9C33C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714243343; cv=none; b=DdsTMPvuRSwgYq+x5e4BFiKBksFrSWIAKcpvOKUpQColpZMiUiAfDsYUFKqAtNbKV8lAoQkat4NgY+mjiM+5TGeAyNs89os1jz9y15LnAiU3d1UZDJiKgdU0YzCUx1/iMbxFrz1YE75BfAoT7+DuUV/7AxnmEOUc+/EWskBl6WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714243343; c=relaxed/simple;
	bh=4GY5fFj+X688VJAq7ZOrCBc98WVLcrePsf9vwWdBnEY=;
	h=To:Subject:From:Message-Id:Date; b=KRuJeEOwbJo7ms3jUc+KYSvIiq40RuL2tOgVbB7UTPFl42ECNVaw1Iqmn4Go1pvZrYsxi+IzDE3+HPEUjFSESe9U7zGz77CvnIkbd//53ia5IUMYqbZq0REu2Xz9MPFcdqGOUeV/ZbYw5P9xs4h93M3MW6tpqF+Hw6xRElc7dcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2YjUknx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2YjUknx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F1C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714243342;
	bh=4GY5fFj+X688VJAq7ZOrCBc98WVLcrePsf9vwWdBnEY=;
	h=To:Subject:From:Date:From;
	b=P2YjUknxTf+/kmW1IfxVJacxQvy827XLmphkedNIG5yNGyh6UIMnHrm5feXQpA1Ps
	 v6vKFnZgKPTm091abg6IwUZd/VvlzoeIH/TpPZBS9S1MsR7ucJYDPqdRE5PQVhcJHd
	 4QaKzt2qqiBtbv/hHWeu+3tKA8FXXiDp50x3Lqx3bTX5ZjKJ2osrj4EnJEQECjqvbY
	 mbOEdfw6M4GAdp1t56nnEYgkthl8aOqeZWoDV7fTx6eWaxa0vfcVNEQsDa5Jre5bXH
	 SkWorOUXBYYCK/AaKDg86DLIpg7PuFITOinV5zmyoyTqAkzLXxVgwBjCNCEWmjyher
	 qAv3j0u95xclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D63C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424334275.27668.6081190390608662996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac65c015c42c0ea3a5d5ec643ef342ddd623ead4dd92d5840a66d06753160d5
Date: Sat, 27 Apr 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714243342
