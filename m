Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE0D13B58F
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724706354; cv=none; b=kyISMTH687BVVNLV8VlKW6pYAoFyKhBqxEws/8zbpwoIgFXZHbg+lVWlpMApksUyF1aBpXrPYMb0L++UNLAu2cqBC2MxK7rpUfSJ9Duv5nqg/hVtiI8VLu8S2/714ZdU1fRZjmYPV3HRRK3iV53tNcOyvgx+grebN8ELYY6gwL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724706354; c=relaxed/simple;
	bh=r4MdVAoX/3QC2OF0cQEUmI02FtTXmdXkDa4ywP17sWE=;
	h=To:Subject:From:Message-Id:Date; b=t5GzpIItFHfE3rKlhm+1tZNEXSpfw05wNVoYTO2SKg2iNaFpDjtVUqCMljTJCK9VqrepMAkz/9lIvlSDNKXI7EmUMqj2iPyoxcTbroemT3ujZJeFLsAsrzAL164cUIfWP8+sLXrNC9TkSNSWy6pf6f5kA/uBihgIQHH+CqcYXnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjDfuP+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjDfuP+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5612C4FE96
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724706353;
	bh=r4MdVAoX/3QC2OF0cQEUmI02FtTXmdXkDa4ywP17sWE=;
	h=To:Subject:From:Date:From;
	b=gjDfuP+VMO3BRtJ3cdVzg/l5LwgNatSfC7UCgsXvv7i08zUaxh05KOX7EMSZCdeAs
	 ooEnygSrKoSNkxSr96VlylscUeTvQK/aS7uRriq+qhWt3krnJLRsyRuSJ6FNNZYqiG
	 cwrAtn1fZovSYHkTzNn9L+RHuK7pkO9vCyI99Un0gljYBAbmQ69sI9CUWI/mkjBDRa
	 B642bvhD8OFolBYzfkZH77lPJNap9pkkwuTuPlEy4ShGFR9yvmjE1BFLwPsXnyjWoa
	 p4w2dKWsE+pM3o3cINe0U8JzMli9qw7zzgbDUXS/CKiwevjlqd8x6yYWzv1ITtyRf7
	 8+TCndDXg/+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB9AC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470635363.10514.9968946539936905358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd47ee095d0c552ddf8849d923be979c77d2fe64320d8b068a57ace48f4d5c18
Date: Mon, 26 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724706353
