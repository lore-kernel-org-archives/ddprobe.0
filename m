Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500FA2745E
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787184034; cv=none; b=HNlh5YD3N8LhXAGEawJeoEo5QBp+AhiNlijEYdqnVhjubRPJMfMbHVTQ6iF/uJcQrrn3i5Qq4cK7ixu3NZO62MqOqRxXK7ZxjOH40nKRk6xF8rXVXmgaUu7ThI4ZirMrGyHhQqxExfqlOuHK6qCCeYfDFTwJ6n501ZfAXHygTSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787184034; c=relaxed/simple;
	bh=asj/bQAVcuApgxP10p+InHzCb8QVJN9p20zMrkDdpsc=;
	h=To:Subject:From:Message-Id:Date; b=Mv89uNUKqYgjiljsDaoxP8X6dTACFRMqIF6fCziiYsjTtY2070FUYx/kvjhFlMktBcRs8oIBZlwDY1Qz2fdxIIi5ahbRMcLAHWxxlA0AYMETpoop1yFivVkFzvMSYx2/RLkU35b7HkMMUdrmbc+EVffeI0npILPUgH1mgtYVlXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrCpuZH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrCpuZH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE28C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787184033;
	bh=asj/bQAVcuApgxP10p+InHzCb8QVJN9p20zMrkDdpsc=;
	h=To:Subject:From:Date:From;
	b=IrCpuZH+V2+Z4eqoOxo6xj2r+xCBkwCwclwqvbngajwSk7HFTUqWeGx2N9n+KoSrv
	 PC2V1XHe/7SnD2Wk9UGlgnKouwCuazoUb0sd3DegPITnYPhP0TH5/2CMwUagBU8arT
	 rLqoUAgdo61LgNZL2zCZSWlG2AKzUQ/sQI+gV7cQdOk+dZ5u48L1DVRRFJ+tuAA4cM
	 BZCYisU9+OJnkJXKhDHi6MPz0+VSDR3Nq9FAHF9HbNY3E+u5xufAFLoKaCrQtduK4J
	 ljx0pT+JnqN8H8vLkEmxAqVkgtV1nNx6bB9n9e8wF8MfiinlIPU48HxVfaS3JNnjGn
	 /zhg5XvV2bVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28EDC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718403372.9934.15507150987899577363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9063a2264d5ca033b450e9741f686276e7c8f192c6007bdc3fc53052a71199
Date: Thu, 20 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787184033
