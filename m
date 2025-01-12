Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD25E571
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736685954; cv=none; b=Yh8E1ZeXHAO6yTnrwYC6ZqMWJnlChLBFLxDE75hefS2wFYCRgGyQLrp1TEaaK7DFH1y73mNyY9kuoWyjCTctZGbKIJWfgZwI/M2ZtF3XdCQ0DbBn/cooyuH9aGpzLMhWTP8JhNLo+JIXdUEZxBt4YfL2oW0QvfbJuXKdvuYo8xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736685954; c=relaxed/simple;
	bh=3kC10dMNElBVp3MHItkjb7vkW53bNKXJgE2/xhAC20g=;
	h=To:Subject:From:Message-Id:Date; b=AZdvRKiAffnQwLXGSEV4wLRwQow0Y9G513P7cIQevOCl/6/Rs1fn2CVTssdNr1uOyqj4piiHXLAzviUK3RJBWS9vY3NMsjMKVdwEVn/5WrCjoSRPW+nE2hrcG87FugkJreZSkRWiIG1cHFKEEOr9wYMOkcBZzczk9njJ+21MYrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7Ut8Khr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7Ut8Khr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63E4C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736685953;
	bh=3kC10dMNElBVp3MHItkjb7vkW53bNKXJgE2/xhAC20g=;
	h=To:Subject:From:Date:From;
	b=s7Ut8KhrQyIZUu2C3OKUISY3kI530YRaQPlWp2q2E5SJu7RBFCIHv0CnkPKN3veC2
	 PsKrlSbSBJYYWsvJPHtVfiK/AUtG5zT2KnNR3wjrCsuJ8uIbqCARuDZZr6Ale9ITs8
	 JQOPBBuOmECL1ioW/3yRhL8VnaMV1PGo3Tuil+O1my+0Vr/533FZbZQNPmNroqSY0N
	 i3H/52rB6R6VzzL9JmLw+B+KeE0VLr+d+LuEImdsixRvRcoB0rmNMDzCBGPheqskSa
	 ZzTzB4joFUqiJWlt4UmvrwaQGebHE4oVhFGZvfrEFn2YfaG2llO6MrrXvlGnG6dkDe
	 /c0RHLki32RZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968C5E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668595359.16898.10919870725337708858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4bb24b74e6760d018c05547d8cd569cd471003a5875985c24ab70fc0408562
Date: Sun, 12 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736685953
