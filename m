Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2697F15D1
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758672594; cv=none; b=mNx7xxtpXLTgvs0KVYP4UE8NHR7ZzAc9VYmr4jMrlwYEgJDAyQcRXAec19eRP35/Me8wngHQVGjABvQNJalc/qOLR8nOd4rCZfmnollx+Iqo/HPV7nnFw913P8vAbZ+uF9QvcPPhNvRwuHyXaA38xs77LGXhCpIDsYWw1NJ1jzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758672594; c=relaxed/simple;
	bh=s237lLMW4Un0x14fzMCSqAQbGV8Zbqcp/ruwy/myXrE=;
	h=To:Subject:From:Message-Id:Date; b=DBzB/3QPciPVDhhUJGI1zjkgnGoN0bJQPh7lRR4XlkA6+Hey3Tvz7GItpMuJnop4BahjaPBTN9xmSywMZkZbCm2jFcD/i00td3sOFDoFfRUkhn0PWXtsqwC3f7yUvMHGhrhuO815yk6h1L3B95OAt+o4BBCTxgQ+mkfCa/PwIFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8mM7gaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8mM7gaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA55C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758672593;
	bh=s237lLMW4Un0x14fzMCSqAQbGV8Zbqcp/ruwy/myXrE=;
	h=To:Subject:From:Date:From;
	b=q8mM7gaaj3U3wC/S4+HVXL18/+JsEOhDIM+hqXDj9yq2v/4cedwp3V+FLz7gVK2ay
	 yIYgGrsGuHYxLDAF/5MKMCds/OxQJXEPg1RFwVliz8qpKM7yhTWmFW8svqtP3DvXVU
	 jebnbvLySsqkYHcnG6wX671s4nn5MRqZnMtElEecUGd3A/AhlRsmVNhcNEiPznKwnT
	 2nBXPsn0yRGEDrwSjSFimh0YnChLsHBcj0x7ib3T4nB+3VQgaWBoouqDB6vX3DQgfK
	 EPidQcfYZkSxmUB6SMp2atroCmPSREAYvj2Iv2y282f8IZPotXgg9nWTFb/poxbT2C
	 3l/5UIvBXeEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95688CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867259358.31272.6476357300087685506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8212f524a2fe974ebce9c72c2944bc732a46cc4dcbf10086a98d059762e851fd
Date: Wed, 24 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758672593
