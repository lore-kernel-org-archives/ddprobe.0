Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6484938E5FA
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770101634; cv=none; b=dmiuVmABMbR3SucAhV7oxNPNZm+zpHsGdS9Chn8Rdc1zvuO0u45XP4YQJHx4Hv4BaTEkaVDLPHMqo8kDR1VJIpExl8dXbdY/u1q8Qbj0cwFbmOxj7yLEsMktiCwKlk3LdxKnhJNh112tKOZm6zknNxpW8agrqXh3rPYanS/wOqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770101634; c=relaxed/simple;
	bh=3ZGOJkkMlkxE7/JUuUCziYEKJTsr10W8dUV3VzpltOk=;
	h=To:Subject:From:Message-Id:Date; b=O+NlakwCjBRUX8qLmenBj9bVHeiCZc1YsNDUemTZtowem2AL1L3+Yn9V44Z4j78nRq8lpLlzc6pucHhGomkspzkftRezM/u/IP6zTRHN6+5ijJL5m4P6ny5bBX0v1vdI/l1XMKn70cFloMO7fneNLO25ImoQQ6eg8Pneryp/Ly0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS31OvqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hS31OvqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B7C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770101633;
	bh=3ZGOJkkMlkxE7/JUuUCziYEKJTsr10W8dUV3VzpltOk=;
	h=To:Subject:From:Date:From;
	b=hS31OvqRZZPeudavaFhCFZRHDEaHRNmT9t8GZrNlXqAFPOPb7oAjhx5UqmtWKU3If
	 Z907+axpbTx8MvAVycB0NimkYXrPpK8gQlVJ+27MSVc1Wp6zIAka8g6UAxoExOoNtW
	 PRMrNp6QT9WaS7MOeFPGX9wchIYKWETOyU0T4P9TF117CvLje+i/Mq2jGk6K7nQQaR
	 HKQtyRmbOyLsLk5jJ7tjL5UPSTNAXYYcaig+zAQporAOSQ1F+f2Yo0BCjAZfvMySF2
	 DZ/dAm8uFYuyZiZif+ndHjdlvcT3G7GTBkZPJpctt/c+jJu+XZCHOY52ujWacIAMPh
	 XDHyKSxyL8lMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A4E83057
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010163358.2805.9543184077173032070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717567999c9b0bbfe3c6ef2f390f45d52a048a0d5fa394e122f3df5ba71fdb82
Date: Tue, 03 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770101633
