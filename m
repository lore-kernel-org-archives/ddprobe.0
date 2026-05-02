Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349EE241139
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777748854; cv=none; b=shb8vIs26Y1g1PJyruVSFs5cVBNJQmNwL/aQEM+UPHe2NstBD2M6T9cdA4YiH3dv/jQIwggNJ7Le4BdZRNPRJXGQXHjbyDCIh6uA9CKC+JNhpApsk1FWJGBB1uWDldtVMXT4rhjna3R73zTUcIo7d4dw3zdYXaoK1nvprJJVVOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777748854; c=relaxed/simple;
	bh=+0+RFDwS6uUJJZ29QM/TBnR/w51dbM6+BhPwoq4A8J4=;
	h=To:Subject:From:Message-Id:Date; b=d3x8qh8Yca/jeFgeqKbbWAwVWWECZ0yZF34LmiOnljK7F/2bPrbX5HWFBcoOxKrYOovLkH9/2Zr4ayspPCRKCEvmjnmfga7M6sK4h7eAWkJ5gqdw2/8iA1oObDn/Njd5qAgzXeQuGyldQpZZAlm1PlENvUutVqANbqWf2NvFJbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgnU0RdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgnU0RdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC88C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777748853;
	bh=+0+RFDwS6uUJJZ29QM/TBnR/w51dbM6+BhPwoq4A8J4=;
	h=To:Subject:From:Date:From;
	b=QgnU0RdIBIAm0Mi2AEYzzRAcXvK+gxEOoR4bY6uTDzaV4BKch/BPx6d4DEyQwpT2w
	 Q/v/vsRAa5+PedXI2+ldmP7mrDT/EYCLjgDwxlMhLyqxP6BynoHBdbxT6ST2ow/hAH
	 v1HJVtheVEBiU8j6tosJACIzE/56Bx5P8kXEmpQYoarqLEy2kIBrytJmEAyb0hsWzB
	 JXiD15otDq2GJ3P/prrnl8DjI+hhVpJd890MIjEtcrq5tM/KewjdN8JxM9Hfp6sPGr
	 gn7J3pp+oGB95UnR8oFmyxXD0+Of2mqOVB02xls1qDJ/zYLHtwxSbB9/6MTzthJ9+k
	 1YDbQYm+gF/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEC3CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774885368.27261.11401453220530980284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502813530bb0e1f6197cec72692f0d99ccba90b7bde79042796a7251e1186b11
Date: Sat, 02 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777748853
