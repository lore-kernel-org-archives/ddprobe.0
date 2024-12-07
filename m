Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCAA17591
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733540754; cv=none; b=fBG2FeCndh+jXWGBC20/FF+Ozlh8FZPtgBBn0IOPTndrOaJP5YBuvA3uqtiDQVbo8GbTwzmKRE+XVR5g3q8JunnQJiWYxgV+FDJBY8rQdBylrEtUgYzoSY/2oNWLQnGg19FyrbiAUFFw8iXwKo0ORGJs7LHyFXL1BwRsrXxG7Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733540754; c=relaxed/simple;
	bh=Cx54ynAG9gNkji9+PjvqRtjwwoQ1JBW7tkxn8onP6E4=;
	h=To:Subject:From:Message-Id:Date; b=GStFGsfNDeku+GFK4tLa3oaqKOD4U9PbgA6IN70/qlY7bkbyntSS6c02wTKBEX81F8385KYlXRQBoMsPHP5H1ejcTWv3IzsSQ9VwNjvpFJOfvdq0MDrfLnZN5ITl/1M1q+I3THqepMKcvRK+dqbjqdPjuVMo/ch7BLmXsd4nuMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuwjciwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuwjciwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F5CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733540753;
	bh=Cx54ynAG9gNkji9+PjvqRtjwwoQ1JBW7tkxn8onP6E4=;
	h=To:Subject:From:Date:From;
	b=XuwjciwUAZxjyFCGcAGSVEmX54LOAt6UliHCQKbbtqydbgfJh3crv7Ll5UQLo2rG5
	 Gxf9GRCIoq2m4bkrhTgjYf54BOjBoj0yh6SEU9WQefBGXXYwDRO8lhpFyYovgJ9xgb
	 0Py6ax8qa9F1OJnYHbpxR2LPbahJQf3EMrySF65uqXe53iJCKnSqRe/Vbzcx/AzeWI
	 VbV9nhpojak30tO2kBAWOVXIt/8jpo/I+zG2TB4zczXqbQCE4CxMResowUwO6tjoJ3
	 GY8qbIxkw0daTpsW8CXXZWg/0yg179YlppMtf2NpXQ2DAXM3EqpRif8p9nISt0GvX4
	 gYwyQQFhWJlHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFB0E77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354075362.516.2357071544195681782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cced3a62a62280e6a0b833e7fd9baecf49441ffab499aba68bb5edaeb5c193
Date: Sat, 07 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733540753
