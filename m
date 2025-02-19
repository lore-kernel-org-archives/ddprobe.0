Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A431D88DB
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739957334; cv=none; b=jHoOWlI6ul6RBqqD3EKNwM9n8G0XWxu7ZvplC8/Whs7bS2AfuoFqnkZRJRA+aYF7hySovN+lJG1mJk886X4ttvzrfmGVrDcueRqRwY4GIB1VcmgCJaDATqZvFIyVPNhNk58SuWYqbyI9n0IXzHdEak58AHHh4swQcGi4ugad6Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739957334; c=relaxed/simple;
	bh=X1i+v+IDBclAJsSq+5ivEElbkS9jm8sNh3WLd9SAenI=;
	h=To:Subject:From:Message-Id:Date; b=GMyms5igU69ieBUbbZapug3nyciZfld1zUDZp8j4xMNVtIr4KuGnjS7wA5Q2jNS1YKefB+4FKQPPNG1prdfpyMuoAJyRTBymC9sYDSjGb7VECQDoI7JbotuK+vVKh+9oxMvvx/jaErlCDVAR+Q7kVSHNL5kZdxfE2wY7H7afAvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wzvre/iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wzvre/iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A6EC4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739957333;
	bh=X1i+v+IDBclAJsSq+5ivEElbkS9jm8sNh3WLd9SAenI=;
	h=To:Subject:From:Date:From;
	b=Wzvre/iBxPhNZj8oGtsd17F9C3QIJc9M1Ithopt0RqOcQS6kEcSqtSZPf1Lwl3Err
	 quu2IgIUtBoRTnD3UIJdQCP0fAAfKoovr/EhX8X4MteEINu3vxWC3JCkkXMiyh35Ma
	 VeT573uyg1UUNZqpxmGu1WMv8DNVk0ymXuv0yAFIYu8Ll7YE7xmlIY7dkRuHRTCNP9
	 Duny08x1o6pMsuJNIiA8zPnDCXeH49473iaZGiwzb5KLqMvFOtehJapEK6Pui2V4yV
	 8WLZY5o1qwZP6qHPUG3g9bEUuiX/2hAOq5pvgHjId/JgVGb4RGWwsQBIE4Tzdmat1p
	 mWjZ2f50GJhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C42C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173995733358.15569.16596536248770724892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fc3fe30d3667bfe4c6130714a1bb39003e99aef7db7bb04f881209ee51923f
Date: Wed, 19 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739957333
