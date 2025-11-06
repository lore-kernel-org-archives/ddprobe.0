Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7C3309DCD
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762420193; cv=none; b=fBw/Ah7vhFsnbTtCk4D0VfmSnmwCPS9UAUH7XNgz8RruWb2pdGQtfZAf+G+YvrhwTtSQovjwmzRO+WLaLWfc8PdZ6qlpeLoykwuXLkBllJJHG9a/CEvugzJW98/cPNS0BVKP0KNwKY5OhMW3HrtM+B6XVUj0kuazSaXFJ7XQmGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762420193; c=relaxed/simple;
	bh=IFv6GgrOnRQSYuwdyaV7oW9zQgOUg6LWgRKiViAXBIg=;
	h=To:Subject:From:Message-Id:Date; b=jZnP+QSGNb+PJZZvGId1UrdztN5P4V/i39vHK8l7QzTy+d08vpVACJMb8Fl8E5JPHQsJp14YE2Dyx0srCt38bE0omXlHIiw3q3huZt1UqtjOqJSWfIrJJAs9JLdGoCn98ZmjzFHOK6VZ417Jky7PiCcMztE4DM7wuKM1TS/IVSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2eXGZf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2eXGZf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A7C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762420193;
	bh=IFv6GgrOnRQSYuwdyaV7oW9zQgOUg6LWgRKiViAXBIg=;
	h=To:Subject:From:Date:From;
	b=b2eXGZf5PC8HqkhjUAP+/p1p1WKrknZWD27bv7YjuMbbwiIWvJxgP4x0TuLJumKKv
	 Axe50MkwX0CXlq/Jd7iGireIKiVRoUnY9AaGqX0miSyGCD6GzyqRpBobV7czDft0yy
	 JZDQkUHpDDR2z3ovrQ+rgNogLNRBbJUK/aCfZ1Ovo00XjMWDI5twcmP7aJEl/f7OUK
	 XgHhsjACVdswQqiv2yYyqLLOkrUMDNT+rsBgmtg5KoFyOCo2hsk08QhbiPCtBitOs9
	 aKhPhhCm3u0FtMQEJf2mhn+wsvOvvASE5UltnK4y327kaQoRs8YV0iiCgZC6TjpeHg
	 BKNGQXUqpIktA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7BCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242019359.20735.16190488166702350637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d400fa524a71c97edce31f970c2a897079a2ef7e2a1e72c467098841f79305e8
Date: Thu, 06 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762420193
