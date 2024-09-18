Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFB879FD
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726617954; cv=none; b=Xn/BH7wlY81ofIh5DOevq2xp5IUy9CxSSn+jpuS1aP242oeueEfzzfkjuoOLUtgDFklRGPBuZAvz3VBMGelCnGg1PQD9RKn1MBqeuAPa3uuqjEAFZ1hjF07ygAcv50Z5gp1zqXijmkVAV5fhwQ6cPOWTfxFvDtNWZB1E6jrwCFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726617954; c=relaxed/simple;
	bh=9nMgIGHhUJVZKY/7ta51YcWbuXs+74kc5i0Cmbp5ocw=;
	h=To:Subject:From:Message-Id:Date; b=n0Rq0Y578cFFptAoMCt4SYU1u0rffzv9W/sA9HpTdNK2g4bkXVC22tJ/7QC+mRHEzfJRlQ4Bde+tdKRg/7vqzCAVAjIPmA6/GuLXCcZ/uHcxuQG1G0t9o7161UiJsoFX7F8sjxA6JuBhPZ1/EVIpg1sTSSzmXtaeT4E9Au0nOwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozWL/qwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozWL/qwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5B1C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726617953;
	bh=9nMgIGHhUJVZKY/7ta51YcWbuXs+74kc5i0Cmbp5ocw=;
	h=To:Subject:From:Date:From;
	b=ozWL/qwuGTNO72JSftl4/4yPHMl5QufW3B8ZIno30/dXtlX82t8B5wgZqn43lS5eP
	 mTMMgXf5002rDw0D9WncyWrTOfDsqL1LDtDfrUmXwk9ZozNymoVpuztqRzUPNd6VH5
	 s+SFVhktuqPGqlu4OyzEF85+xf4JFJl3uhW93fIpXD78PWvUzW+NI+SAr4HWaSwhLI
	 qJVHA1g1ZGB6ufd01MwgvZZItkDUby0O6nspUa9dW2NhZo4Htta/45ohu6QJqnsFwh
	 eP3k297uaXGuMgpwHrxx9yAptXl31DddSG3e/m1dDSgzd7uLqeafBE8fWl2zHszu9A
	 en1kettC5PKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B71CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661795360.17453.1426799437067687233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c733a8dd175449ebb778f67610d8e0f96acd6eb3bf6929d008b65478f7ec9761
Date: Wed, 18 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726617953
