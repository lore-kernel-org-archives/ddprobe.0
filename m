Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0582557A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760849994; cv=none; b=YS8l3FOe5cMMa8VBINURtfcrD1vN38SZTqVcv7IFPMEa46QpP6GTe7j+JfMw1GoYBOI07P4ndaK7F3mV2azX8q0qgROIiPR4tKBbKcb7RlSmIvJwRy9gVr3WhUxaNPMQbANa5L+Lp784vHrfg2RaJi1R3+OnKqWS4OzvaaqvNkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760849994; c=relaxed/simple;
	bh=GpeFrsssH0kD+oMG6wi67yE9Lr0TmtIzpyu8H6J5dW4=;
	h=To:Subject:From:Message-Id:Date; b=C6Iy0+kdVlIB2Vfr5gBntxfskJXX4io1O2scN9T9CYUZZgA3LGR7+Z46m0fqq0xXVvHmahXgMy+htutALcuBgk2sVECFW1tjlv5DqD4WGLVyDATi5C9pIkQULhaw/uVaIQjqqp5rI10F/9ycWXue/IAl11uUr69RC8NdT/i+RdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4hbTzS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4hbTzS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8130C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760849993;
	bh=GpeFrsssH0kD+oMG6wi67yE9Lr0TmtIzpyu8H6J5dW4=;
	h=To:Subject:From:Date:From;
	b=u4hbTzS8K4ASa3uPnIWQhPlhaU4np4lRrRH/MQlWvdTdTBLSnRS9QYaDHBE9RFL6N
	 zHy4yOVeBJ+fIv/y/htE8w2CC9JIj1Hrdttk65Afspczfbr42tUfbltf/2bdRivyNl
	 krFQ/soex9B2H67yv7IFC0hp4Up+F2lLv9wZADSYx/kwkYAQl4bgliQl2bd3KDsrOl
	 x17L37JQSPv6WANbl5RoZJEtjWnZJoFZihWB4qs6HQ3FLhQA7jlOhk1MSleb2bzaBy
	 pWOP4fWymgACvHVlOfKC0x96ThQRcKFeW9IRULb55uWpBvDYxiCsZ2e4QUVYcaCE4V
	 qDXCXGoViuMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92521CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084999357.22636.10322898181941482332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2182ee2681d0de27fc7010aec3bc4f639632ea68432d4455f1edd94f78b47dc
Date: Sun, 19 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760849993
