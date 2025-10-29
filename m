Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E9D2505AA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761748194; cv=none; b=InKPHXxrTJROxawkRxlTKmFlDf6GkyoR+GvL2qnKoAJEcrDdBTlwhQsGVWBS+7io12NeilzOdafUHeMYEybBgHiNq3kQfNPafDToBJb6ZjA/+kvjXTnPcWuYBTQWOmBnMVhgOS0NPpYIX0KxcQS4jWBqxDiGKYe6cAqWnjgJBK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761748194; c=relaxed/simple;
	bh=5vKb0oYR8Uy1oT8OAtns/JYhxDxiW6gvAo77mwTR3hI=;
	h=To:Subject:From:Message-Id:Date; b=KuoTdyXBJjE0qkgFp+iTNDHpBfH44I7O9VZHUXhuHPIREinZgEJfezulQIubCVZw+VoTc9ZnD12SYG5dPwsnVKQKfZrnii8r8IGxK8+2jPFvo3pmLZXelEJ5ogKgfEGrdpnHPzUk0zctKIidJ8eq2AmgkqzmapAmV7e4CmQ8u/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSe2g6ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSe2g6ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A193AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761748193;
	bh=5vKb0oYR8Uy1oT8OAtns/JYhxDxiW6gvAo77mwTR3hI=;
	h=To:Subject:From:Date:From;
	b=lSe2g6ux05iYFEgZGoQcGV2Ad49ucQlCViFu8Q0RBAnIeFzBQx9NsRECqdFsfHkaL
	 TUYX64EvTRUzUySe9ROR/A1lDh9yofDy8ad5eMpu+PQ3wzLGmtjeDouAO3OXjaRFqB
	 6No6k4Lzf/w82pcWtB9ZzAh6dDx41i9x6l0i42m3i3WuanOqwj3Jp62SpA6WFSMPW9
	 IXHNmvmMy5ZYcuNIs2uEegswOgp/BtWA6eHUe6tCp3Jain0kkQrDdC+fobXKA6ogMv
	 zyhuiYP8vIzai78ZZAEikXvaHqPDbXHYc8CGm4ZgSdle/kloR0zwnf00h20FVsGKMR
	 jBgc4Ao5bT+rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A0CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174819359.11834.12748056717744906165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5e60ef41e4c56e3e4e05846a53f833797af9e848cd5383baa01567df4e7c46
Date: Wed, 29 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761748193
