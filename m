Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290AB39EF12
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779364234; cv=none; b=mLNfzB17Q7f9o5rTqK4YL8gipGBoFYmZPMXHHe+AcFQuF3Z+GHL0nzK/hsk/zGLkqKcwd2KDDpQWJcx7vwy3hF+OG+gOqpLCbD+2AoT2Og5wjo1lbaPZQZBmr+Hf6EK2a7N0WHFgKDENRhfIwUPUYLl5M6BZVzQ+eh+tt4Fq+uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779364234; c=relaxed/simple;
	bh=8J3yqxaRwxoDXZNLL6Wh/P8eWh3csYlfTWiDuDwYg5s=;
	h=To:Subject:From:Message-Id:Date; b=drzDWxBqCWl7f8p59iSyJVil/9q44fjYJ4h68Ir6epVB3hPyW4bgNerw+6hyf75oAZbolhMhmE808T9atEPrEPrSenVBJPRInFACyrfKDgODMQzhHiazXupqfXE9N8wjY0qGtyRGvkgELKtsecnFUio3UIw8uzIUrem/Mzv7Et4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gc99Dt+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gc99Dt+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23CBC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779364233;
	bh=8J3yqxaRwxoDXZNLL6Wh/P8eWh3csYlfTWiDuDwYg5s=;
	h=To:Subject:From:Date:From;
	b=gc99Dt+lCYwPy7pJc8O5DHsO+Xzwx2HBg+YubVRap7sPETROd8SPab2mtEvOBbgYv
	 yUpcwl3tD6l/ae3f2Xot5I1O/QNRw5hRkVzjAzos12bVoTO+BK+TJMFf4UR+ZiCpNL
	 Wbx/E1LCc0mh/gQOqUXdNmpXfZyRSAcvDeXN/UGiBPGde+eQmmw9+I79b9yyUg+RxH
	 tTkypUwwDjJQoYgN5SredOMIkxy05wsbfNuv2FmuDD2KhZrnmzkphMzaHvPPTai/8n
	 j+do652wRg60ekDi3h+xNThvglbFYlW+MM2Q8Vnf+pjxeAUb0ggm6x5FtAsJGqQ0vG
	 P6D6YdguEXQiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59CCCD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936423373.27665.15362984632377606639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549dcf6844883ffa20547890540d25693ed64fe4f9c3367f0dc45a6bf251eced
Date: Thu, 21 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779364233
