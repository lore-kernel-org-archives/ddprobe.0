Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D880A59
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740644334; cv=none; b=tsbNI0IFviTJx2KsGqz6X9I3uLggFK7jOZCL+pF5zRe2koDHy7k3tb9aImZPzsQ47K1UsqaNo043H222mSGqfTe6Rdgl5o2Uq77ohFSKmuvKRH5mjd+jUpItvTUR0gkwZ9sYhVHpgtGpnA0If/W1ybed6VCQW3w4hQDgPSifqSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740644334; c=relaxed/simple;
	bh=1snS5xGBJn93Kwou7GpK1ZtMR6uZG2B3baGCFrERj9U=;
	h=To:Subject:From:Message-Id:Date; b=F373TtWLPoo2BOYjmKPkhNSy+D+FnQZm+sEBiq5tAEx46b3vhnZTWvyQpHLYfX5W6Bf+pRYL0IzuQSzUXrHARMDaWl07C4wGzx5Yrgz4Joab5K5IaAps1rDjgi7SRp9JlHfICGJPOwLUS2Qf2kOAF1jKYPZZC1xl1rxrnLTNaaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Br/Mxocs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Br/Mxocs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2D7C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740644333;
	bh=1snS5xGBJn93Kwou7GpK1ZtMR6uZG2B3baGCFrERj9U=;
	h=To:Subject:From:Date:From;
	b=Br/MxocshKeCWqDsoXWKKt7s9r+GYB692wyK1f0v2OZJEUsrZMsTKZCPA5f57atS1
	 708uxdMN4jNhBB8ENh7TSluUhH0AbzJNmpUsKMbHXDGalVPOO1v7/fHn7zZrGBapx9
	 xZy8BR9MjEDsddrWyEDoa8bJ6+9iXFoOpsw+oCh90+BUYeevsFJYnJ4aRrAWiuFZhv
	 qNZgOxc5Kr4gEKc5R5nKIyXMrpMQPiZSeO2O1/v10JNKG/XfzL4jQCfBs5oml1Hrro
	 zkLOn3BJqhk/wwKEjW4BVl/UuZOVd9cvbYLIb4/nXwhhTfdaTMCLJWzTTPjBnS0S+G
	 xMm2YsoCqriBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94384C1B087
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174064433359.13256.9296404255742569304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dcdf60d7ace5d6bf31f0df0b08e14af997e1ab5e697a684fffc4abbe278408
Date: Thu, 27 Feb 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740644333
