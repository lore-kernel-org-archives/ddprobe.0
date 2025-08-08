Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EF128B415
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754695793; cv=none; b=g8TB6VRHFPibhEK7AuoHdbDMeO7YlnXKqxPon0nuMh9h2cuDb8s7+mcwVJttKE1vJiqnogqh6gk/DbWQ3ZBQkYWECvmFjfRmuguSkvEc14+HeD8vWoW9/YyyzfpCZJGDRAtLFecGiqaxMAKPJawzdQcKDAGc9EhT+xmByTwycvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754695793; c=relaxed/simple;
	bh=XV+U2hFc/tL8y2+ijYti8k4lxRS4a63cD7R5bg8uDAQ=;
	h=To:Subject:From:Message-Id:Date; b=biv6sfZQvzDwK8rQwy6Gv9rbFQMKmuVHli/oyHktGT/ul0tMeaS6wCsJGJ8Nk0GeOS4lT2huCwzqJOzkBL3LjU0fGAXVs60LBpTcjeTFpl2GHFjRK7G1LjNBBzOa1RTlvfYwoZK4wP4bOErHz58IAls2gX60R2St9y9zh5T/DQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV9BtIqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV9BtIqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E375C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754695793;
	bh=XV+U2hFc/tL8y2+ijYti8k4lxRS4a63cD7R5bg8uDAQ=;
	h=To:Subject:From:Date:From;
	b=uV9BtIqzD2UMJL2j2yWn9dxTb7Xb7l9oAUxNgh1KjMbNElwCSOy4s99FkqRVxhHYS
	 JbSKVRa1QPGfy+QxjBNHFlw5wk6uX3aK6Z5JdTBDSOBD32btqIMdCiO6uxAYL6XwNG
	 JhVx3bLaKhI07UgTWelqofnXXJ2oq1WZ3hkQg9mP8M/Eh5M8TFAH+WMFvaNyySH8O+
	 EVNhRT07km+SxSJVXPmGEhNGv2El95HxXvUtgBdNXdszMJhGRET2wGEa/0iuB1sVaW
	 tSVrqokx8EGAHzAf+40cuGhiF+dt9UZN3vGoPF5iPHKAR4n8Z45FLfh4+33AdF80r4
	 TRv5lmFmnLZ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F164C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469579357.30952.6639568170781242995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee1c562fc21e957c2b2134a1c756e7faed744e2b81153f8caaed8a45b0a40f2
Date: Fri, 08 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754695793
