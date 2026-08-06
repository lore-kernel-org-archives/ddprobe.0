Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565DC375F9E
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785990034; cv=none; b=ByKTyraS8rTsSXLtNPj7h29mpvM5KAV6pHOXIMTquGLvAyxpcWIg4XmMERB/cimEwIP+WznSI9l6R3YORQAx4FlygUGvIdXyDOgIVQ1o/r/hsUmotwMbau2Z4wKEruD2AI0l7pbHN9nZR14cskm0wEtfR6CN7vPZ+QB6Zslmcsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785990034; c=relaxed/simple;
	bh=QCneKq/Dv/5a9zr6fhGJjWNuZUKtdoqi+0Y6l6+4584=;
	h=To:Subject:From:Message-Id:Date; b=WwKbGhVUtK7JM/nX+OrzGBYex0xxC4RZNfSpZRdavoVCsVmrYDPkkl0e1cRlga77vuNenavzrR60ZVBCEBNeQHNh5SKkqMr6/Gza3RHQRY8KgLFCVWQFhg/hviK59X5gslczeK+c/vA3heYybhGnZUANcuJUMLtGYg2FmTyV9wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VA9qv66b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VA9qv66b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D72C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785990033;
	bh=QCneKq/Dv/5a9zr6fhGJjWNuZUKtdoqi+0Y6l6+4584=;
	h=To:Subject:From:Date:From;
	b=VA9qv66bhT2QPJgi/HgTDqWVNwmjo3eSQWLFtD90Jrg6482eWIy+y9XDesw3FTztm
	 qjl+oA61xKxuJQprLzssdhUgRrulKOV6XCED/bXSV5D9N6olcxaVf8igep6GYrSzEJ
	 RCjMDnrgxlbXEfwjwetDuDZejiYWV+2ChqO2hx0uAHTjyia3UAoWMXJLlgA/wiVUD4
	 cRRXfMZqpLIOWl5VQo0840qqgZP26L8/qTNnkuR0pRGwr+WjpWfSkNr+SxOdknBylF
	 /BrZ33AqPI7N5MYtfV9IbPqfOOJn3HYrM/KZIPH3S/BivgHxU+8lfASTu3LYVBxpMr
	 XLH/mnqdB19PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DDFC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599003369.23515.16182846263154905177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077f47caac91bc2dfd2ad0aec06abf0e6c0361bd88c7e311639471c83496fabf
Date: Thu, 06 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785990033
