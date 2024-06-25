Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5401BC4E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719289403; cv=none; b=geeLMabm8HxHf2LHn92y8QM5tU+/cYW7e0t+XAiu/9RcfMJGPifX3xrUowsuLjDEfpr31dzDWQaMMZkiM7kI3PZ8ZHVGm7z9aSQ+dLLdbrz1s/nt+07p/Hm3IxNK9KGhKMS/Nf+8GEJ54qTdHYCHVZ7BxaECjb5PacsxiUVt6V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719289403; c=relaxed/simple;
	bh=DX9f697H7/1cwWReCfpa4fhYxnQISK6QVQoxhpT28L8=;
	h=To:Subject:From:Message-Id:Date; b=gZyr9OicbWKU/r+c7AwjOxKytFsF7kJpZoNa6PBdiV1QeDQ79lvfqRQZi8aBZH7+XbyKo9W1l1QKAnN6jXnigouesqNTfjJqe6Mj1D/stdRy/nrQbGBnwhuXpgROSb0n9jrrf4H6zQcePKPTMM7XlVL0FPjuhObrWKTU0k1JeO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enBfHc8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enBfHc8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10346C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719289403;
	bh=DX9f697H7/1cwWReCfpa4fhYxnQISK6QVQoxhpT28L8=;
	h=To:Subject:From:Date:From;
	b=enBfHc8rs9RnzfnCIFDuwFC8j3MhzFBC8zBYyE17M0lGMfdcJxFdhqEzJN/o6Xow9
	 HiAHYWqufwwqmUW1MRy/XzXAHnqHhPHBo973ma+r2k2ZIpx09fhMprQLZoXHf+AEwz
	 QYauFtfyJeNXwOwcmEPscVwLhQimxFCSq+VML9QxPdtm1mYhU+vjbOWbKEeshHILlA
	 fbUB0x+RsLy1PFCGplAWRA4R3R5csTJjM455+TXxoyzq2rsqhdHv4hn1hmpOSrzj+4
	 KSttPz8g49JWT/F+5HIG+UH0M7Jl4eKIjgy1YSZRiZCdYu5QzPtBD2j8nD8UHmiRgh
	 hsewV/HHHvFYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDE2FC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928940285.5333.4178970899444869677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0edbf39c7adb21340c5ba5a1d171eb02a35e86cf54c40bb06ae4bbc31a6d8cc
Date: Tue, 25 Jun 2024 04:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719289402
