Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF3285050
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752061794; cv=none; b=KqEhij/A8Fc2AiYgeGYiNMaKHNAx5PftGlzhcHPqBV4dnan1oxLBw+PkuNzSsnieAg54wWKRDYWGsDZnq6cRWXjoLNf5w1NMAVOr8BpGz76D+Anb+bvDH48lQxnylAntVZKyOiUJVwfIJCu2LfH6nnuidhagAAka7W3yd4BXLrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752061794; c=relaxed/simple;
	bh=gFGB/DqOMRGRHvd1YIVm3BVxNwJDqlsQoNKIlxRCt8I=;
	h=To:Subject:From:Message-Id:Date; b=QFL53WurxYFCuLM7kpYY1qnykXtz6J8F+s7SCUoeM7fhSN77H5haCBwoG7Klcbk84BYiJVtRqAI4hgtH2fq8OsVBdR07Q+kXV9VtU7uuIoy8nwNmsly1Acm0/d1hbSS/oblEh2SC/rINxpGghhpXBm12ot0oe8B2xlFqq9jW394=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4NHotAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4NHotAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7B8C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752061793;
	bh=gFGB/DqOMRGRHvd1YIVm3BVxNwJDqlsQoNKIlxRCt8I=;
	h=To:Subject:From:Date:From;
	b=q4NHotAAYkx5qrC5SXFhslJSbdINGiFkh6TJvAS5C/X47xXI1Ow5X4sMRT/z6BTWY
	 c0R5wuTssW6z/WKJ0uhdqykUz0EjKOZWGciH2Dx3fMu3MQkZT+UiW+kP0TpM8FXSr+
	 RbOWLYJYdenovwuQ+r9osWgqxxGyki1n13beHEBO6MrXZn6TeNNbaYnFM8eDOrvWLZ
	 yBo4Jk/MzrSUDzOZdx4lN+YWNmYiy6tgvyJdetKHd7s9v4hjuimEutpapl6iLYJmjZ
	 xhemsp5ERyQ5OfmCBF/qqmZXq8E5TPDoMpgvlWx+2MLxaSltZ5cVdjutk0s3as9dYh
	 B8eFtksRrtDoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E803C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206179357.20389.14940421190739371968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0afb363b1be548165c7f835694a57709da2f1235a7d8efee24a555127bbf85
Date: Wed, 09 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752061793
