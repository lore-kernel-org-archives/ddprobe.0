Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A20F415F30
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791125434; cv=none; b=IUfNj6xPrKH07iNeQMkEUBVdD8hCVN6sIqr/LMvSC/C/C+6ni519DBWD57M8rLZDTWmo1JrB+59k2fTzIzNwiW/eNz31oc9Y3ayb1KayVz7KlAQmHp0lP4DJeYAxHiTJ0vo2oUcdriyyCxOZdfXHdSCVnF5G8bYHAMlUxHmwygk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791125434; c=relaxed/simple;
	bh=Q4jcDsThuqFCYOPjsrToZj+XNtIRqsYglh6aBmzJkYk=;
	h=To:Subject:From:Message-Id:Date; b=t4BSMhN2sB9vHFPdpc4nvE8LMkr6TL1QGQCiQqxWMzW09Z9tyFbdn/WqnXnrLPGJ3GScqfwRExYaR5YRF3zj9O9MmuO+f9MViXdJ3TgoSTs/GcbhXqRb5mkJ1VYt+0ku9jDtcmMONqmELexTYOdwH+MFDA4U63jgJaKOz4J/MEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUhIXDFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUhIXDFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE32C4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791125433;
	bh=Q4jcDsThuqFCYOPjsrToZj+XNtIRqsYglh6aBmzJkYk=;
	h=To:Subject:From:Date:From;
	b=EUhIXDFD3zUBlxskhr7qxMSrX6elK+NPK7BoqhAlSUTLKqMfhokNNPar9nQKGVhbi
	 ub8uYFXMH/5q0qf2tWaxZ5ULANJTpsIfcAfD/SVKX+wglRfU3ZsOiZeYftF9C8h7wv
	 ONW0G8zwnsynJH/5dAYCFrzOJpZo/8ppvc1jkB2f8zFvkEoHk+/Lc3RCrrw3OLjM/4
	 wfLkvbPmEwdofpz3rrzNInPIoK6lE80qnrqAF89jBiS/tw4TEFA+R570QNprDjVgiX
	 W8dEosHjsaYX7FrGgebrfx9rGO+6cAtRg7Zmygno/n0dbQUi4K/FH70ylg2DYxal/d
	 6Z/o1TIGafC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA864CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112543368.17755.14878851539417332597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a869243a3d2ffa030844680dce665bc4a03d043c54256eb401f666e8a5408d05
Date: Sun, 04 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791125433
