Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186232E7179
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755758994; cv=none; b=ckmzRD99bw+GEdPcaUSjbRxjS1+HdTlnriIT7zlSC1lQPO4BCEInoVmTNedx79COy8zx9L9SzTDewf07Da34jeMZtxAGH2NYeaxCIG3gnARI9YQWioCi++LO+BCNmtwketFnGuKrxT4NssawcODUkQyvKMHMP9kbmttwd8/LLsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755758994; c=relaxed/simple;
	bh=y1RC6DWw29Ssd/GKjJofxWNayAcYYCvODUJbB4HSVbM=;
	h=To:Subject:From:Message-Id:Date; b=e//LSk5UT5wRPYT877wfWz4BI3uuixe7ytt+UjDUM7PbmLoOhU7bLDhVhQ7TgsHEAdj7pwseizk5KWFGXFR6IKzDg+4N0vIhMHWNVzFxmT0Hwv2kN+PcqbDezQJO1FsqAiU666AxVwgfzHGExXG1h/miT7JuEM/YqC3OcbHiQwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6J06bDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6J06bDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C1C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755758993;
	bh=y1RC6DWw29Ssd/GKjJofxWNayAcYYCvODUJbB4HSVbM=;
	h=To:Subject:From:Date:From;
	b=B6J06bDpAWenZBTO+rhhJ3vfOq/5QbWh0JttnuYmXjeXqtQLLMSON6JdqrLw3zyQ/
	 LHQMVXqLr4OWZfuG0YT4CybGj32u4gN38wFhnXtH4YZdGcIwCZ9XsRepaHEjL1nb4M
	 /hfRJwXDFcXoX/vq7e9BieSccJunVUiW4wDlNdec4ko0dv/ax9J+iphefOOnSLLqEE
	 +su+fZtWYZWTJSoB0AF6eZWIbhC+2xO+IGRrLwd4GiTToQ7rKmTR+xUGqCBZuXqZwh
	 0UFAI3862XduyUXmFyJT8mwhQtlBLzhovZsdKrAUgUkhfphuLA8kytf131P432iF/2
	 LmCuLHPfv8f3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CCCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575899357.8554.15533051021775664271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c10126d8a5c47f908b62a19818289163cdfeb4cc1ef07f060caba82759c75c
Date: Thu, 21 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755758993
