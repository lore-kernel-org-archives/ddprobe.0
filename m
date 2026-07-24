Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5148A72617
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784853634; cv=none; b=CYs1mo5FNTkQGyZ8J/446r6ply+jhYKtobHg7KZpb37Oppm7wwTB1paDjxd8ExyREe/SDsbuk+MySwtBknXWNzeo+6cRMFbZJYJEc35LFo38yFhsN6v27/WVSKlUrI3b3f/Pr9OXI+nB3S4kwJb6u/+vf2SmOA6yBvlRw9RTokI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784853634; c=relaxed/simple;
	bh=ZYG6AvFQn+EIlq0fEd8q6TYyCtzboXHLBrTebiOhpWQ=;
	h=To:Subject:From:Message-Id:Date; b=uqCe0NQUk5zFYOrqifYvksm4fEpnKhHusLmvCHawKeOpymRfYAKArg0MVDucPli0v9X4itQUMWMy+jAFF/nBQpVcztI1gge9l375ysuMgRm/lgybIAaNFJrqWzZ2NSlqFEeHLilyhErbYhLSRDobkxOGeewHiNtdQDoShGywrsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cG0q3xPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cG0q3xPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6B0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784853633;
	bh=ZYG6AvFQn+EIlq0fEd8q6TYyCtzboXHLBrTebiOhpWQ=;
	h=To:Subject:From:Date:From;
	b=cG0q3xPhJnfhwYidxjRIeKaq+5eANLmhkX82U6viPkwoiPTQr+Z5FGn17KEwgsmaL
	 S0W+0bn6JUgxOHylbpjsCIUumUuOve4aL5ndiMfot359cak3kRh0nGwKh7jreivgpl
	 lN3qN4TDSPYcSjgmFyOxH83L7Q3EjCQEjWbby/ZS5nHjObXq87RZO+0npGhqhdShsn
	 t2KdosBJFyo01y7+AR8FfRU/zg58eTey9olpRjMK+iNJdj91sTCD1jaTT6M+arPYpi
	 5Psuc4K6TwGpDH8QUzNcePqIG+bKBEQB0acYJ6aIc7yIYhKhCmNtPyHsOqPi5U+elP
	 1Ut5cUrPNtcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A842FC531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485363368.24165.13681631598264352874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974fb7a7ede402c95ce4359450f72826734dae25439d2c9e36d9638b9b441ec6
Date: Fri, 24 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784853633
