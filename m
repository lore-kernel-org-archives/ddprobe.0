Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFA0171AF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782089194; cv=none; b=XqqrlLkTaECAPqANzVMF8y0sF93AFb4kitLGvCWpMY8qTzkgirS3fQ0od4njFCPUV/u/3A/Jz3hpE8eNAk+glrnrw9+YdbPutHqeGLS6Nue8rAVFPef64fqtXBk3T0OvtPr+0SXouW5eURAqejxMrL9+gNE3n/ni5xH+dQHeTqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782089194; c=relaxed/simple;
	bh=/Sh28KoV+NIpd5+tUammBwoChC8d0qpaRQGIJSNvdFQ=;
	h=To:Subject:From:Message-Id:Date; b=PIs5H3TYmiKc/9aA1zOMZd52HSJCAlbyHa4Xv8u1jC0MwB41ucW3DKWHWYsjlvQ5bzMqavzg1lyuCDmWkdMOGUhrOpX/jyGgO1YMbpQScgnY0bQ3U+DIp6VABurh8JryE8CZQf3qJyzDMnPEHbuPpdfhz7nlU8YZ2jnnicVXWsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLqH6oZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLqH6oZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEF1C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782089193;
	bh=/Sh28KoV+NIpd5+tUammBwoChC8d0qpaRQGIJSNvdFQ=;
	h=To:Subject:From:Date:From;
	b=MLqH6oZg4Or17HQW3ecyg2SWBJ2W1JUe8zpN8zYlbBQ42cHSyw3noUFragn4xeW97
	 ZeMM0J7GoDdckNcc9JDejr2zmTRQDNtxMaYzWqScqh7pUMVoJQ4X1bwjMKWfqpIRX6
	 9r0L7TYO29vYgW0lZUBkmX70m4aX59h7hmuz6bBFbUUFYmkth2Of+UN00zauzg619z
	 5pMgzFwy/VousKuB6PlyILmmtQMp7ZEiWeik7wJevFYWfmeb+EbzVXVbNYF4u7B39y
	 WPAS85PWqoq7902xLt6Tt6T9NJzGYpx1olb9CSLDsW0DER18A2JPJqsqdcNbxMGHf0
	 W61Mb/JXxvUuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBCCD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208919368.4539.16764854149449100870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076e5c5daa8cde3b54b8dfedc541946acfdb160c6ca4b1d82d82270e77261669
Date: Mon, 22 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782089193
