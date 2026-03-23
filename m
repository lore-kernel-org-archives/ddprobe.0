Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159FA29BD9A
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774253094; cv=none; b=njERc60EgQALcVLtIAU4ebUjW2UlD/bh8YZQGFflAseHztkH+elQ3wytHwfQUVqDae0rPRecc4cqgOaMxpRTRt35HRGuUm/oG0cHRdO3wi4+2S/1ybFIosuX6idE5m0rylf+S9UMy+JkhR/EkzR7cNnUWWN2XJryL2SJpQxir0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774253094; c=relaxed/simple;
	bh=fY7MzofD3+1DVbyVUZlSRhtDj7pImyhu9PudvGfZ4W8=;
	h=To:Subject:From:Message-Id:Date; b=KtRsUgsb0EXOwkfNX/5642c8JjWDHsM02lMmVIXfNAbmBxBEbHjR8pIB6MZ5oWB0FOsDFA6/Jcb/LHCmUQJqfX7Ln2sKT2dl2DlPBR0LRW1Chrg5wkvJmjN1L9/YGY3tvZ0T/HC6ULFHCbJjZ7x2EphJsKKtmQ7zBc/QSwQ1VSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBvAbfZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBvAbfZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA62C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774253093;
	bh=fY7MzofD3+1DVbyVUZlSRhtDj7pImyhu9PudvGfZ4W8=;
	h=To:Subject:From:Date:From;
	b=MBvAbfZVpEqKtFQfsuxbVg7vqspdZK+7qG4CdlfS+R4IgNCaB3iSa1TBkVVembj5W
	 sVJSXJnFV4TFkv6PYMW+fHymLFBVBtkQ1Rrm08vVRDhB1TNg1xepPDiaqmr4G1LiDt
	 Iq4fuXDuadazkxCN7feERj+ceTrjRjEwt/9QdIJ+DcBH5p361g6yiwDlNTTflVw3Cl
	 d88OFlMNKuWkEw65PVPZSNK/8q56sZLUGL19WftDw2Zoq4pfNfuWL/OAFdaQqcZeNC
	 sNgUE7/JwZtQmid93kVW7Z9YzbGFap2KzCqOmGAeLqmzL1eKK/G2IL9hDeQKba4i6j
	 N4PA+rMGzuLPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D5BEC01A2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425309359.14554.6663300063556321916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ba4a4ab057324769812522c1dc6695a104b65b1a5b066e1373ab26502d3261
Date: Mon, 23 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774253093
