Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EAC3D984
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744538994; cv=none; b=WY1xCi+rvkguHVuo16xOnekp75ZJ8XNtykmnTAey4MDLU559fpLv4WnmL0DSzF3PorPhO6AolkLEzNeX2dhTbPeUlSRdB4gEmK34YXB63Jt9YXxN2EEmKdc47mc5LeiogffJjoZCcG4yi7GTmNyW4LR2eguJ300EzZcwA/z7h4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744538994; c=relaxed/simple;
	bh=kJ1mPhUS330Hy/6Acpfr8sxnIcUgdyDXJ8flIPjUias=;
	h=To:Subject:From:Message-Id:Date; b=a/hLj26hO1ncVi/+euzKhEXhLTY84mjbl4AQ9RjM7+hbot57YnV+1Oi76MW8Y53pPhXlMNGC0DLL4imJldXSoXtqNQKrGlOu165qeYN50NAcZBbdCz3XKrnqa51xGBvBvL7lje0c8MwpPGEtUaIjWmJsQjoyH1wsPzeSKAK2ln4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdqaBS4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdqaBS4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C0DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744538993;
	bh=kJ1mPhUS330Hy/6Acpfr8sxnIcUgdyDXJ8flIPjUias=;
	h=To:Subject:From:Date:From;
	b=cdqaBS4MazlSPcwDe5EhbBlXA5vY1EWMR7xl071BhYuKufvK7gRlx1OonSJT7voPi
	 8A4Q6U/CRyIrR4/j5QoD19GWSfLsTIJgJxdqn3LNcO24yMWphqzxhaxXkigfHPXn/B
	 O51TiAqVXJlq1lMtlv6oKDOCKX/GT3ImgcBD9uz2F1hlLt6laIJT76dQZ6ME/TUQ2i
	 b5vQc91gx84ctIwNEbog2428tiwLIXkfqYoQyE6/bM/n5cXutNGPZ1HZ3kB3ZHcVi4
	 xpjqEVr292CKwXe8VTXPUa1wjwL5aDqTuVrosHnA/d1gjlqNXTLckMpfTnp6RUptCV
	 QYJv37So0Tqvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7ACC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453899365.31568.16241474597314940982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167a6734e8ba6021b4021dc2d5a7751ee65577d6baaf8b60cc98f486d21e2365
Date: Sun, 13 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744538993
