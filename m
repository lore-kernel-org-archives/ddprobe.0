Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15508284B36
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755884994; cv=none; b=IAt54MTjG4b4EoymEERXKxjBES5fCiq3rOZtzabxXSIooNb0PqoUUviPWV7U7F6PsJjQS5m/Yl1Up4D25tGpkjJEH6hqJL/abCn7wqo0qgXeJv9oaLbZ37fZfASunJ2Z1P7fVw0J7rrX3hwSfkXyhcCBH0A/d1Bll3vTWVWzzao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755884994; c=relaxed/simple;
	bh=38HiuXD8kB4s2C5Je31g23aj3y2qPxN7m+lF5yuugko=;
	h=To:Subject:From:Message-Id:Date; b=Vo1jPoVWT5l+1UsNFnp1WKl0DtuaXZjtKegNxoc4mXF2SufXuCz65v3lZ0BvryjxMBApCJ4n43ngf4GtNQFrLfY0+i+QOUsEBU9CXWoqJGwlZryEUPbUvZ9BQakUgqmBEExfRU1DzmM99PZHh92kMkCx/UuYG9/x6bVwQXXSiuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFzxGe0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFzxGe0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0946C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755884993;
	bh=38HiuXD8kB4s2C5Je31g23aj3y2qPxN7m+lF5yuugko=;
	h=To:Subject:From:Date:From;
	b=lFzxGe0OS0UEReSve5I8hsQUXsGNI2cI7LPhEf+nOQj0SjeWzH5YGiftphoFfZksR
	 Rf+g7FlfphO6Gm9pu12K2ZiB+j7n674g5sFcdk8aWz4+uwlxs9ly+3AlRxs9aFXhV+
	 THgUZzUIaiNGxiNIP7UHTqhpgLNy35koomZZDNM5kWdzAX1QeGj4Cu0DI1Uo4RfPz9
	 LexuHwS3WD99x6DiyAkrxRCuDFm6U1pVwIniInEuIXPYIwpdBhY97Oq+r0hOovPlR+
	 XjIdv9uwBAyPvEinROs6CMbK0XEb0oxEFoEIh8pZx2ZdOvRKTTONtzcwc9BlDXjC3y
	 HghHKOoLa/beA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D0CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588499357.17555.17838092120151877890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f477845ebb9d4516cb5479db5d3ce1b031e48aa83f2d4f1b62148a24ac66864
Date: Fri, 22 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755884993
