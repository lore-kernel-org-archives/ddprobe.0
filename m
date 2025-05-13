Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5D91A3172
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747102194; cv=none; b=nmAS3yZo0nNEEQ3JCkGbj44gnyHjjx7Z9BcA9jX5S33awW2q1XpUN2lBc9BWFhfvSnNtgwvHYqMCdk/Gkmf6Lagl/vD+lByCGpXOWac/zql0Wer6ImXVHs6A+ImgnC+fjEakV29bygZG/P0CdsqiZP9VA4jw+6tP8L9/DXaSUgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747102194; c=relaxed/simple;
	bh=JBEQ1z/gK9wUlYD64TfgTyH+U3IGfVCtC1inP8Rr6/M=;
	h=To:Subject:From:Message-Id:Date; b=O2yj0Fa2rai3VbxzEtvyeJtk1QfJW1OD1O/pTJFScu+hBgJq3Az5Tufjz/ob8Dpq8Q9A4b1lWRsxdicw8+eRMffXd4cNM3m/wWC1rEr6cj1aQ/jNLrKiKd+UqSWMuqe06eTJFpeFjCxjnQfIdnAYZgB85rMYH4/PIsPlkarnJr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoeMk4uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoeMk4uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9240C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747102193;
	bh=JBEQ1z/gK9wUlYD64TfgTyH+U3IGfVCtC1inP8Rr6/M=;
	h=To:Subject:From:Date:From;
	b=XoeMk4uAIWeVodrmGcv7kt3b9miO3HoQjz/eg8UYi9JYAsshp5zHhwjatKrdTZXC7
	 22NK6Yf/51pVZMNY9NVs/HGrxnL4Zo5/701opZXN6qj6ih4hW0D+a9tVKfE/r+Du2T
	 qWwh5RgM/EPq8bpCwO9JvSKjb3qFg7CSn5XG4uKW3ASefxD58FkkiUh8h7N9bg01R7
	 5Eki7eMRuxf+xD5SCf+dPtjQxMpUCRcHCdHRE56T/eKcPivvIQm73vtS/zf9Bv296y
	 POXiFuhCqTf26oxlIR673yCUBefyly3UQWZ9G8Kw3lJv31acXILYlsbgMXXhBhjsN5
	 W13RLkVxAxtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D8C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710219359.13391.9974291901427857895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f54a478127e4a4f5056d5ae5865a16cbedd6a10678a2ca4dbd5da8cb6e4266
Date: Tue, 13 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747102193
