Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AEB4E56CE
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790354435; cv=none; b=dCtUr9nkHFO7wzjnfx44eQmfsN/rNeyJUDtaknELNmZyoO6qpkzsjTj1RE6UF7AqX2HuQ0R6YBDQO+3LJYSkVH5q0EDiBFvbbuGZGBB42IqB5hlOi6ZnA40LfGHFKFY3K3jsyOlf6ekbNpdedy7eai2jhbMRz+mHjPvf2g0q1bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790354435; c=relaxed/simple;
	bh=kcuabqWkDLkkQp0zIixdUiLg6bdAvWBJRBr4HUbC2Ew=;
	h=To:Subject:From:Message-Id:Date; b=l5DZ/hnYbXMUhdOBZXiKKIfxycPx3p/6jneGZ/A1Y9t4mdo+qzpWx6r/3aPD2SmsaxN3OljtXECkJtUTowy7lc+36CAAlaA0ccAQLlQVOIp3IWu0h7g8nr61sHlNizjVvB8dMxdK6N43BekuvN+BS6OQsvjPsClQVk718gCV0EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVIfYyk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVIfYyk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2660C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790354433;
	bh=kcuabqWkDLkkQp0zIixdUiLg6bdAvWBJRBr4HUbC2Ew=;
	h=To:Subject:From:Date:From;
	b=LVIfYyk87SYExyxFum2X2g8INrnnEMMhlF2XNQolB9Vx+1KA2E63OVV+b4S5HMnlS
	 rv1Ms+kbxwURQMc4R190dZ1pJRGQLRj6wR8XmGlvQvw3WXoLmDqbZl0cQ6RL74xDwX
	 piIt3B8eDlR7F5U4xGY4D9FwqwpSGl/3wxigBroITIeMYQVzhbYg9aRmPcbSN2moCC
	 en/iHXxsWIf0qmLDBzeiazsb4gMB9ztbi9QHYToRDE8Elq4/88+3IgHkXsEP4y81bG
	 LZZiSTr4Uxx/BnQeO7VXXduPgr1pPZ07jWGGPIAW4mdiX7Q1h0ODAIfTe3wi97+uWU
	 VPrwq3vZ0uDjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBC0C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035443370.12448.5825647218180482647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d76bf89ec5d11511d7ed47b3a3e89855f35726c853f1fb641cef293666a0fc2
Date: Fri, 25 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790354433
