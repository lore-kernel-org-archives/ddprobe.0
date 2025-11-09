Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2021D2DC76A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762689594; cv=none; b=PXu81VI9vPVwrv+R+3o7XI8uxERQgJL4GyPlzxsOVhGan0mGHvvvbnAVXeIDeACqAkXMBd93Q/aMwwYPMc8yLRiSnasdsIhGWPxzu3+80iFp1dq3gLFSfEqJNgtb4BG9EWJUw9iNg6z1FwWDdxuInZ9lDgvBCNhTuRDPyabk0z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762689594; c=relaxed/simple;
	bh=mzkSO0JhRYCArEwJ8rjgjUCMmwrDiZmU8GqzfkDsv6A=;
	h=To:Subject:From:Message-Id:Date; b=GPeCWYHniBlEUUKlUSL+3TiSQDhFAJoGyAxO9/dFQ9aJQWN3YSANiBBzzaECxcG7F1wqaK4g8rGj84ZCvZ0+czeVybRr9JIZ0gg5vp7jD4Y27+5BgOrqpWgQ8cAj1oJpW18H/3zgSh8xKz/XVfsnTbcRzzrzQot73DdYStCk3jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwWItf8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwWItf8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD18C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762689593;
	bh=mzkSO0JhRYCArEwJ8rjgjUCMmwrDiZmU8GqzfkDsv6A=;
	h=To:Subject:From:Date:From;
	b=CwWItf8OGGNbCRoc40+76kkm6W1OrQ1DAs+K5/CSr63idnkY0LDXi3TkhEePpBqJ6
	 gq8AaUkG7HbbryZHflOLilyWXJenapigRPIdzP6lcs3NQFKnkcBK/t2HPT5uE8qaz0
	 z7D62OkP+2794zigu2hou+G9Bs0fGCJFa8mhx8I1UMSLF+6pCAmr/s+WgRW24YNjyk
	 9WDuE/bqPZ8TM6hIUiS803AXruP2kZmBtOuTM0STcib9KpUh+Pn0J0aEj5WxyNY0AN
	 qB7X/liYoQe+Tgs3dG7SFjX7ujeVMj8FLra55n0QfTnuvtwI5mxXHP0UIqdzVZ/swE
	 vQZkCLe8p5r5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DEFCCFA1E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268959357.13856.1222171012465033169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90046500269d3d82881e44e8224c801442d6884b0019c6ea43c582b58c01d16a
Date: Sun, 09 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762689593
