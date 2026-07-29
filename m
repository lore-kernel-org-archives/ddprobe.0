Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DCF48B38A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785330034; cv=none; b=qaxYaLBM+pcFixEYO35vcLL7VWbTtE3bCQElV1HY9gg2H7fVSkBdsiQYZY2OmbHCSKw7jep7Mf4nMvqrWWHFP1JizmBdr6G5tQSHWwBgHfdDYrIQYKCSgJBlcMq9pqFjmO1PghlTKVBlNuqNoMvbpl4Lsvx6wSCM9RdxQ9UbbLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785330034; c=relaxed/simple;
	bh=i6fo94zqnp1dIeIv72IoTvQcUtl1lxywK/kFQ4zvRh8=;
	h=To:Subject:From:Message-Id:Date; b=gwwL5Y5M7DFBH3MoPxL0Z7H2H2I3E7n6L+NLwOUgd7jIRixRDmJ9e98LWbSRzfUATxCieq9R3GP1QNuzPoZCDeaGzxFS43QJ8AwPUPoOhx+9gRb4uBxPD+o42ldiHoAIMAnhXshQQehOGI/CXL4Oe1JfyXmHPpQRGa2ya09Z2Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzLcl2nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzLcl2nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1B0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785330033;
	bh=i6fo94zqnp1dIeIv72IoTvQcUtl1lxywK/kFQ4zvRh8=;
	h=To:Subject:From:Date:From;
	b=UzLcl2nt2nBjKwHqfhjim+b+L2hiaatCCZOPCUxbFiLJ7eYEGpuzu3BfZf2Fw57MZ
	 RauqfwRqFOek4DmWHDC0A+vheA2q2hEHCyC1oaL5T2qYt+qgIQe+Hp+0FcVuaSy3Gr
	 P8IfGnbcv/tgxvjBCYEmWTz4aqVQGkCKds2B1jZhFy6x8z7lQA+7IT7gQkTHnoVmyM
	 36MriPchBZNPOfu455V9GDjCNB0I0ZhGGteQAf6Xm8SKISG2S3SRlwbYmN6CKkuS7k
	 PWjEY5PvmjGe6+D6tpX72X3PfRqfeOKPyNcU3FJKMmUApcEO8HFJfls5ScQGzxv3sb
	 +p6DA6RabcVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A4EC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533003368.26089.17362635470222744382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fe4896395730cf5db5e71d9ddfc273d4c14d21dbabb9939319c6acb7b9b77e
Date: Wed, 29 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785330033
