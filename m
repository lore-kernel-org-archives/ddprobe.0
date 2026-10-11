Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592C22E1746
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791747634; cv=none; b=XxZZOEvSOLVqkXW/VYNJjuG3r954jCIBbMI4zze5zsuHNDwAX+pexajQOGRnbhGVZuLFxWgY2h4AzN0OK71xHviY+lGg2gJRV+WrpNUuEsPq3kkhDoGD/ayo6z6n5wgBdMfnqnbD5T3nkeqxCFsqUlcI+nvrF0PSB6C+2UmWDNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791747634; c=relaxed/simple;
	bh=dsOxawZQNbPqBTCvGpWtU6pGexQi6dxljJNNU8Bn/5A=;
	h=To:Subject:From:Message-Id:Date; b=C1S+4q1M730gcaDFHobtV8Ht5AjMktPMpu7Kxf9Bs+nYqNwp8MHP66S0Mb60f1pSZ+IDv2jBQ+4rEIXCPKAggeT6k676ZU7VedL+uFAm3gCdIQAeoXxJsuR3brgC6+SOrFQp7IvCxrQvpK0FM6+/iXhpI9vGLFL6KGReJe+cNbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUflULoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUflULoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D4DC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791747633;
	bh=dsOxawZQNbPqBTCvGpWtU6pGexQi6dxljJNNU8Bn/5A=;
	h=To:Subject:From:Date:From;
	b=LUflULoL4hKZouBLgRyqRGTyltJ0TX9uPuBxkA7d4S98Ly7kLLCLhS+4VZ3AhwBzQ
	 pJYJccDgGTGaNVwpZXLafEOESX5I/iMUoJHwL1+UCdtjzGxIC91YuCPgVErlI7YK3N
	 Lu1psnFo7IzJ3ct1W0iz6vtPn7v3aNuch0DdHx4H5D/AzfQbSjcrF7hO88A4tegxOL
	 hd+RRT+BSI+UB/oqt9WZIMIRCxMcSyimAsa7t7oX5FB7BScu/691N96bwCJOVn0Z/v
	 fRK4xCmdy7h+JScTmNbGdqCMkzgOMXJ8mB7S8LIoYPERvw6RKH9Bceb5R2JLujnQzi
	 MP3fcfx4DiwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDBFCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174763369.16117.1812823362022073461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05b3bfd521ad81acced3b39096d990d4ca7a3cf92dcb1e9af449444b496e89c
Date: Sun, 11 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791747633
