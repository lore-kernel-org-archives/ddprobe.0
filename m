Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAE62DC789
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775474734; cv=none; b=W7loBY05kotGZd/oqr7/U305HsvD2VvX0pEAO87ugrqJ6V/CCgtVIl6vY5rNx/pcmMD2gOCSH2JMjXSpK+DNqTXWeMWGuljXAph2c2Ih+iuY530x7POy2BlpbroLGEzHHg+CZnse1/YP96by6SaPSdFRAma44vrfE4gIwp15AoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775474734; c=relaxed/simple;
	bh=/r+9qFH1KJuKEJ3mAtSkNH9BNgK5JCjXugK3/Wl2Mhw=;
	h=To:Subject:From:Message-Id:Date; b=ECp7oIReiDvBEyN03R/g1hXJpGF68zG8f2R5+uR6qsUuStYiWj4MuqQl28thsM+wgvdoILusH5GDzWEGFpbG8fLj2vxZR+qGN0riI5TJzlawRWX3yFdef/f0qF2G+Nyai6kGCH+UrQx6f0NO+KRBdTqgs8pQA+iRrOujXj/Bg58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhaLB+eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhaLB+eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3C6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775474733;
	bh=/r+9qFH1KJuKEJ3mAtSkNH9BNgK5JCjXugK3/Wl2Mhw=;
	h=To:Subject:From:Date:From;
	b=EhaLB+eo2njReizNlNRP/atKJ+TcGVKdaqzAsSWlNcHLXxGIiwa44nm5D9sp2/Okv
	 3PnLXfbOpOXcF3+i2js1GEAjHa8WA7JqzeEEgyWnhO7SlD9w9SSe8osZSO8SPvGGhZ
	 aaD1I3xWxMUi48AhLaYhTc/LCc4SWokgWgCNDRoKWeJUOWmJNSNT2vZ62FS3gBu816
	 3PuUKcQNhV5RzPnlVs0usROuVhLM21DhBRgL/QoeyO9Hop+V7/GspYGWBVKctkI9F3
	 22TMwRVUvWdlH1ex4Q3NBtXNsDul4qy12iomqK3gebzRzfK0CGXHuxr3zTQPoLqPg1
	 CLhf+vn9h6EIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85ECEF4ECA
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547473368.26804.10877005670222034836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b9b96c9a639a4f35eb8e295fcec16417cf4c74e1b4b51557ed17c6354af26c
Date: Mon, 06 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775474733
