Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5BFA29
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728194154; cv=none; b=cCcK3a63b3URA9DjPkFRH5oPsjmTliNCoL5ceQah1gUCITlZkLKtDiRJw1J4zFLU26teITnBeUvXLx31ES0bPDMcRKQbX5LWWHXOz0vDpn1xpaDBWZbktbiZYMiLVRmZh3NQN9o6QeEIDMoTYTr2ET0Bn+AityaKr/IodmUcEV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728194154; c=relaxed/simple;
	bh=XRwqEJbHOZHExZ0U1lJacQPykqIp67GD080KwUeBBH4=;
	h=To:Subject:From:Message-Id:Date; b=b9Fhg7eKp1OOvqoswqVk+yoDwTj3CDV+ConLuJ7dBI4esU82btleOd6lhtatLpmEK6Qo1BM97Uatxjc7cVL5JtyI/x8N2nxp9O8OQ8+JbA6UQyE+JIciFw5huB9pFUHANfneSWUZC+9VWsZovaqBkULHFBvzV9t9mX4J1UOoFU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHzQiuCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHzQiuCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7BAC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728194153;
	bh=XRwqEJbHOZHExZ0U1lJacQPykqIp67GD080KwUeBBH4=;
	h=To:Subject:From:Date:From;
	b=YHzQiuCEgdpiCEiZUf/fy4UBepxmAw+yOShakHfBK16HveacybiLnruTkZ7RrvunD
	 gNlW8fDDOgZFxx6vT8C6GP8mfl/MvAC5FzSyil4JLMwZ2oJEjFwc9FMzpS6Sw3lJxj
	 CaWra/mXSXTk03hM1jxnLdVUT/l7klBn4Zz66/3idQDEWHWCSArLfDDSsW6XEyr/wI
	 QLxoc1C24E0hvBcIrbi4qDtZcLQY19YpoLZjAwU+440k1r1lLB+jOhl0QLnRoAEfvp
	 BvZrGZgG/UCe1QdU+CiLWGQsjeD3+YnGWjp12RkXdp+5W8wzDnnDkjHvLSQq3Mcn19
	 I69a2nW5hL5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D167CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819415361.30185.12005499598713909715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93bde51070865713b7a4dbb85c1f25c43c197d78fe9ad01548493496b648a35d
Date: Sun, 06 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728194153
