Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604912500BA
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732481754; cv=none; b=qmnBRFX+VAQdRC9HNf/JYvUiR+VYULtuVpX5aQhUrkeR8fdgPL47V+y+Qs4S2D5rDC8Ipi8ppbjdwas5AI+ZgcAT0ZVTZNZO2t38qtLuJjIguAuFR1ZnaatQ8sROsiJ5DvjehZrT2/mhxkScgaZqOEhF4FvmpXjmu6b3Wfnw5OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732481754; c=relaxed/simple;
	bh=PSAs2VKZfM0K0ZqXcVJafZv8K1Yb2I9ZlX174Xtya+o=;
	h=To:Subject:From:Message-Id:Date; b=oj/sMqoWnHO3nC7GEyTYZ2sJgYvQShtTaareb7FqXVm+iAgUvJoBDR70kigWb+Pt/gYuOBLOr4enKsT0rSrvm+POc1Isf5OWFAKhxImGbLFi5RJVl0Jsn2iUnSBc1Rcp6hnBdy3YkEocauZl/wxHTLQIEuGLBc3zPUJeACJogUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2WXCZ+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2WXCZ+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32B7C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732481753;
	bh=PSAs2VKZfM0K0ZqXcVJafZv8K1Yb2I9ZlX174Xtya+o=;
	h=To:Subject:From:Date:From;
	b=C2WXCZ+WaBHwSiI9yfGZen+0E6s7nv4UqC5q89tG14vcy5AMnIDK50csLZcjcpazO
	 BCmzYcWmB+dAY5ibWK9BvVUYsknMvX6jW7ZHLjfzJPynV/iCzwpEvib8cWJasDC2EQ
	 OVNtEUSXlj5N4sIIfUmlD9HcsuGoeuC63acVp9Ty6DWYH/QE0H2TL/G8P85etBa/iu
	 wB5SSJbKs+pPDDJVXXxJVfHjok58FHBBDubbaQwGy7xP7ru7+JyrN/n0rJ86Yji3cA
	 0XOTXz2h+ghX9BlmQrgEIRzYZ9+dnVIjxqqY3KQYFfEpgaDymdghMgB4DJ602MEM6T
	 nxu/6GwNDM0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E4DE6780A
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173248175360.30131.18069362508138174715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b0a499f4929c46f5cbaeb45c8cf8b1a7a3dff4af2a0ee3a563fadcd9bdf277
Date: Sun, 24 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732481753
