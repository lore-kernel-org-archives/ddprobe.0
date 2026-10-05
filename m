Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678403CBE91
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791199834; cv=none; b=fC3rrQ0mDQTTMWQcl5azzgRcAZuw9rQHUnd24sp/wLzVY9cqX9a9MJwmhJnm0159bzqs/peZpNQGYfyMUlAa6tPtJnq2gE1fhFA+Nndf2pY6bbCQcz8sM73isK07v/HHgh8nQ9OYIYacyvmHxp0wGz08BkyALDMKC1AiAm5IglM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791199834; c=relaxed/simple;
	bh=/by+h5Yxkxo/mXBTAQSKmh7dts9VGNnWnVt3nePRfBA=;
	h=To:Subject:From:Message-Id:Date; b=Z+el6WVnREEiPbX7evTOGNlu3VKsWcmwV2hXKAqZTAX4w5DEY8ta4fQV7S9d1LOXsLsnshP+845HkN9YSmpWDpduVQsF3KvG0Idjmi7U2wdv7w876zVSP3fQDcnPJu9DivOWup6i1KABQLXAZHUJpSntcV/6c/PKguvcU9TqGEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVA7osNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVA7osNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1483C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791199833;
	bh=/by+h5Yxkxo/mXBTAQSKmh7dts9VGNnWnVt3nePRfBA=;
	h=To:Subject:From:Date:From;
	b=QVA7osNIGbPBBTAweYsr6f8CuXO5BST4B7hRVWSJ2wcyr8Opd9L/20gawSW8ZNNlW
	 kQ20PZ5snBf2MqUR6sSBO9hb0AwA4jgxgmH1Pv86s+y4OftbNKQoE2zfLqz+FA4lLX
	 DUhCN5PP6VlE6qiRCYhVFH2+ll/83ZjRvPZk/IQymy+O5fd24tMpao0auf0PAUQLO3
	 MAyeIar90IloCY6ubX5hA/LZ7V2tRpoLRCZqWeBbj7iOsYpEBk6RPOIH72b9Avz2CG
	 cZLhveINPQRdITaVEsDoe1ip/FAADgyADGZQijfmKgHNfqbXtT9+t2YAIb6H0ToClh
	 AY1cP0v7jB6FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB3CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119983368.19381.2519608650528896883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00d4c91b82b7367e265b700abe1ed545fb06d9b4f0e81c79f75a7db31e2a9b1
Date: Mon, 05 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791199833
