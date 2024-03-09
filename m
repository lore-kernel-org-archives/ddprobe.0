Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F7824B4A
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709974697; cv=none; b=GUbR0NXGn32U1eXpBlsMInu+elZCeX38oz9qoft9Md/7HgDQDVJhWGjW+Uc8U2L976FBlonZSgQ6dCJCQnL6Pkw9qd1XOeHLdgWVPhXlPD5GZw0UidhCxfSRhPvFWZ2IIRxR2z4laOA9v0CoZtqoBYrEZB7ISyStPlh9DF0QTcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709974697; c=relaxed/simple;
	bh=l0REx53dcxV/AJ2LugCZVK4VSpJKR7YYQNdi/y6XENc=;
	h=To:Subject:From:Message-Id:Date; b=hDEKoH6qmCOO6G7FUanXmXLQNFJjfFVSiesg1PMjSdiL55540slNcpisxkuTFYCrKR2p4rNrkqtjFTnJfAWrfito4VkV9nF7c+i+DwYNgcDNtrRw61/VSfaZA9FhZYmolDN+Hw928lH1HnCKDiQhJnhWnyj71WljJFKYIngAKiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXglD7GF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXglD7GF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840DDC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709974696;
	bh=l0REx53dcxV/AJ2LugCZVK4VSpJKR7YYQNdi/y6XENc=;
	h=To:Subject:From:Date:From;
	b=jXglD7GF9jVGom7b+HjOdfFLNcIvFeWYY94l6pT1BHDgmcSC/6a51Cvh4i25NCesC
	 WF164QxoTtHKb3hMq2xGJ23UEfMxbq+lzVV+h353J3vIYLV2HJZBWvNlieZpwOaSMR
	 2lQl8seECVaebb3ka2wnd9PNpdKYRs2626H3MeSEJBoTl0JjowLY5g1diyoWj9ufV9
	 WaIN3ifoJcxVT+32B6N/YvFqzUOJmEqqJGHlNyFtbRpDuuL0I1+RwO2u0rhbv8rfEF
	 fEOBQlIBmHaIM4VLoPqGCui2osIiY72vIY2r4OvCZbPmrP+R6vqwvMkStEmrxoN0q4
	 06Djc4fMVka0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DEEC54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170997469639.24337.13087289383383821062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e899df1f6c25041d7551e45cacc81d44a4c34066ed3f0b54631728d44ef04bd3
Date: Sat, 09 Mar 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709974696
