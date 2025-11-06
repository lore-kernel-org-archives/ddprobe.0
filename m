Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147D930EF9F
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762435194; cv=none; b=HBy5aBHqaRZRKglDtY0XU37wNy5cvoVEJXv9TCxNAJxg0BHETHDcxr643tYVo1f8PjUQBoL7jbcGAJ9f3c1XEumrtHLb311RT7BYofFX0+ZJ7YZgedMIMkLhN3yhUph+byQnnSzUlRVNDNlUjMKDwvUCJzfYvsKIDj7IeRgJD1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762435194; c=relaxed/simple;
	bh=tn5NQ4yLdR/TwHzj6yiWRvKK/dNtqfVCMR4oiwTxas8=;
	h=To:Subject:From:Message-Id:Date; b=hgF2rJcnCNqyPqem0hJszxJ8fVEeC+vtIqorP0fKKhLXcXp8Ou5eSd54RB9mpi1CqUI7xOeVIJwr5ZWHfwMkp7ls9O/O4HDaVoFNACvsYBhdiRfDc2K2Tvh9LLk0hGuVgz2jSUq9oSVMCccU83x3hBZsh1BXAc9wOH9idVWxxTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks9mUue7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks9mUue7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A590DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762435193;
	bh=tn5NQ4yLdR/TwHzj6yiWRvKK/dNtqfVCMR4oiwTxas8=;
	h=To:Subject:From:Date:From;
	b=ks9mUue7K8eaLxvd4stko/mPm7K0VHrNVMy9VgFZcJI4AJflmFoMHZfRuLRpeGJAs
	 9n4t+efjWz9JC07s0g1PQI605EBtbwqD9FaiawicVK37UnaMt9LtKJnbnxV1YCtrNb
	 pzPLUneJ50ICT2rPfinjDiFK2JcE67sOs0HewnuKjW+FVw3HRqatC9cAJqxJMiyeqO
	 Jl9H+CFUxMQrxsVqB3lQwPXpJYRp1gmNhGY9G+0tbcvw29Rxhvgchju120krTt281l
	 86A3ZclDSIMbqbUPsUv4jmF+WLthccfgHdBpN0BPu/owGr1OW2SxEmWfgqdeDbratV
	 uKAiB8lBkoQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5CCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243519360.17904.3943887078675721886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f65ca02d4f21699c920b19e5e2b50fd72d887df1ab791652cde8105e6f4c2a
Date: Thu, 06 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762435193
