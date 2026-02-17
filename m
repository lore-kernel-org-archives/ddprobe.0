Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA751A5B8A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771294494; cv=none; b=A57Cneglfi28XtsJYpGoCbU5dNJreAoiPE17+BbsF9R98yqaEQAuBIH/WZzoyGIKjBq7lwc8uVqddYmJyXF7tqPTu3h5+bPXtyZGn+Ii9602VL0LUv+KwC6KcB24tzvED+H1lMUAjk9MIgemXeSp3CyV/PukYkJYFvnkrh5HARo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771294494; c=relaxed/simple;
	bh=T9DvnY5qNza6yev0CnSedAiawTQrwjH9J+wlRy3G878=;
	h=To:Subject:From:Message-Id:Date; b=r1WDzlbmrv14DHfmpp0KyT6LzxVcandl41cEsYZYXAX1A4G5+gQKjgP7+5yBNPn1b+wfSfv2oK+V4AIhbjOcom8SSvVpoqjC4yDOaeNdWLcUJf3pH20WwbTO6/HKZzkbJ81UGNipUgTDA3NUClG9AecyHP+3DN/Qom3vxsXsQo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XktKsOO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XktKsOO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9DDC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771294493;
	bh=T9DvnY5qNza6yev0CnSedAiawTQrwjH9J+wlRy3G878=;
	h=To:Subject:From:Date:From;
	b=XktKsOO0zY4EFMapiNoDL41mqLZKUpkgAPUk+t3XqdLomfuvORA+AszhtOB6Yxmaq
	 y0vHRcBm31jUHDZ7Up8divG3gtsIhxOlIfrjZ2mVwtD74PmypepYtnxa1DWbnYJr4f
	 e0Vo8+kn3EaKhtoNDLfIjfb4ZxNvqH2gsflbLp3B8iBU76msPE3zrjnepOtPWiG7Py
	 NA/UZWpvOHFeC0VeMBnXJ6bIHkzmZYFhXWm+FGvpatCloCoq2whim9dhLfM+An/N8E
	 81DtGcH/NdjQkrfB9w7Q8ydUHfA9S74stB22gvVyK0LxQlV60vMc07qtql+LvGq7jI
	 bf4s85mWdwtHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BDFE83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129449359.25155.2665892219878357061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72eb211a6c87dc30ba6990130feb1070ded259f9afb2366e0a9bb4183118d12e
Date: Tue, 17 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771294493
