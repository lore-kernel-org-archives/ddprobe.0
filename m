Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD0235F614
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777618654; cv=none; b=R5P/QT5waumK00LBZbxGRg8nAiKWP+BhIwU9d4fAL+tPbp3Ah6aXlLpauUouN3eHjxuDCCaCwJSAbSPOcfnsycwX8VxkqzGqzHAxT25wXlD+j0ZOLOQVmV6ZpiyGoJek59c5MQMarrvoGMuEEEq3seJW8BVSnh3IklwXitr0vQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777618654; c=relaxed/simple;
	bh=JkX5+H6kfxIyv6yQMQdvT7c4CvPmGvnA7vOYweF3lAI=;
	h=To:Subject:From:Message-Id:Date; b=s+BpaPYGNaTM5DkwEU6fzR1JcXHvdrPPhUBAOL64ls+p38Y3lyImGscQgfO3tDspqUR6K8UPNRwKQFUERqM/2dyWrXzJdU5em7mjkeyC/oca6VcmL3iu9Wh5Anqc5oZgCRWWiLJB7yN0yoOioHV1ruoeFXyB/Ow3/D5uAPEKlJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYdfi4mT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYdfi4mT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE9CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777618653;
	bh=JkX5+H6kfxIyv6yQMQdvT7c4CvPmGvnA7vOYweF3lAI=;
	h=To:Subject:From:Date:From;
	b=TYdfi4mTHU41QUb4+gXGg5BwkjYGXMq1xGQRRqT4Z/ePbJGj760I0AOl5OOkUnVjB
	 6zy0DvBCsagEbBIp7bIr92JIag64pUWmFoO3pABcg3ktSQu52AMMHoRBeuB3UA7OtZ
	 yadIIngbLb2yLTqH6k0ZRIzaxNE7YgzhwwcUXN4vk1TfveFVYOJA3sb2MKc3DdwYrV
	 WNZ7fwo4YU/OB5tc5pFiVIq0KXLNaTif8EAtDPmEontsBmBq/Jtzj2z1zP2eDnR4KF
	 BQWalXZdYZqzNda+qZxGAhp0vT9AOVDGEtRdYt3w++EiMqcJdrq+nDWf1kcMBiQZWX
	 sO4Fpi4XS83cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD061FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761865369.18526.12012759729776240023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04fc2916cd7f728944452c413aca530a086962938df2d5c560b7bb2a9b080ba
Date: Fri, 01 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777618653
