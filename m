Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243571AE01B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728920754; cv=none; b=ZCE+mV/IgfD6WYjthP/1qIlNAfrtk4kox4SWE5O99prTU/KtACIcIItfg/APY+4+NRtufZqeFcemXX0hr7MLqkPdN3iwL95SB1RKjGob6vtA5YnvICWfJJptkdCbOQEGbIxKOwXmrX8XKK8klrkyZHO6NtB13E0Dy6RrYXlyemc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728920754; c=relaxed/simple;
	bh=8+O7/8qKy8mWlBbcQaF02/OSUHWOT1bD1B4P2X8XwKM=;
	h=To:Subject:From:Message-Id:Date; b=CQ7852CsV09iw/hgfV8SIIssNI4WhkzkcFrCVugl+38nVxuhQ+GZ1VuXvUS5Kv2YugAOtrhYuwS6PZQxNcA6iKUVKDOmCcCtaFF7r5hv25UN9Mvwl2u+D8goQgRgJeWuoeFT2T5pa40es/U4DCaXBo1DtLHtVSCFGWW/KFIlYHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYKt1W2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYKt1W2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35AFC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728920753;
	bh=8+O7/8qKy8mWlBbcQaF02/OSUHWOT1bD1B4P2X8XwKM=;
	h=To:Subject:From:Date:From;
	b=uYKt1W2urVwVwD9435DSNMsMBrCepQhyV8UYoIM2aFLh7Ecfz1/rnw5rsH4kgptsN
	 jln1AKrjkUX/HEm4J7sFc4mEGG9F1FCobvRv7FOv6lQ8TehtWDhxzma9JYYJ+IwSNo
	 RCnV+GoOASe+GaRg2KnlfwgB7NqI1ZEb5s52iPD4yIt+fHHWxu9g+aakvzKLhCds4J
	 kFzYZ30r91CesDOqqjsLgLWGs7zGs58rZJ+Ov+60NEUf46HKy6Z+wFuz3XS6C34qU7
	 4xYpPjix0ekBjdiDjsMVeGaSOcT0RZjLGrdpGqHqJ+eluHNNaHCYG8WxDHdsrMKlUu
	 tHAR7x+gS0M8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93858D18129
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892075359.14503.6174218081072994586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f4012ba1095df1b18e5eaa05ea9f657f4b9ba056cb84a4777102e67fa16400
Date: Mon, 14 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728920753
