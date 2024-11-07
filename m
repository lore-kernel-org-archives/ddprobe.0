Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B494217F28
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731006954; cv=none; b=Sjs6WT89ZGGIgUCrzekmCbWIalUk1pCY+bW7tVsw8m5io+8vcpjqlqdIvJ/Mc4IknP+qq8WG8XkWTutJV0B8tFLzmooQwN2trA5DCK8R4CDV6eKQb+mExdcy2/qMpnGlYTuBju673CwFpkvHgXFZUatlbzbPJylexmu5dyDULEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731006954; c=relaxed/simple;
	bh=tWcC9nzramwC59IY/ECWNBEp6j45z8g6Fajwd+jGLn8=;
	h=To:Subject:From:Message-Id:Date; b=OScG0jjG8NUM4m8105HHriAIUY1kMKIg2k7u8JDU2hBhO5eL/WXshuZ4EonPA9m2nlcW4SbY6uvks7EvVFbjITtkJu224uJkkXKvWq4jFp5gdhwIJOi4REYmxvPmU2s71JamHOoxroWpFKERefrw7MYxOE710qgPiXRxfawHNq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkIBQMBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkIBQMBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CD8C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731006953;
	bh=tWcC9nzramwC59IY/ECWNBEp6j45z8g6Fajwd+jGLn8=;
	h=To:Subject:From:Date:From;
	b=WkIBQMBk5x6Qw+oPKc8nX8IphWpLsL+j4mn0SFwgW/dPLCsWAbQMJujvwQOQUaYIj
	 ici4ZLN+3/iJLSC9FfZ9B/fV46Q5IOYissd4kj1+G3HqnqaHy7JmCbgAA34owvvBR3
	 aZZhE4i/Y7wgZhVMr4h4K8jIZes8ZS9ltV2Lx9aDvtsf75geNr9QwX7EDsLVK/LdWl
	 9dwaxD1GTDjGaPZ7l6b4wOiTWPJGG1q31xoNIaICNWfu3DGeQKzQM3ZPqXjS/J+klo
	 Zo/OYHW/EpqyV5Vgq0M8HLL2awzaABsaX6daLMG++QM6rCHWvv3HqIYTIBmRCCjArb
	 +xMfUdDxJs46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A16AD5D685
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173100695362.10436.9211520928598938902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa7cb6b4e125551d382a4437ceff5988daaae95e1ba6fce5325b25633994edb
Date: Thu, 07 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731006953
