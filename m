Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2997229408
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752403194; cv=none; b=Y7YHAKQy/2wGsH01MoqZiTjJJ1Z+8a7TdQaIJtSfxkWodENIcdXp27tSCo3V6uImxAkleY7Frv24rh5eX6MEQ2ufj9bX1/ztlRDk0D2mrU3etQRjjYQG5KoadkSL+CwAVsFqlq5K7nRaxeb7SFHEmsx6xj40joVScqHO+aXr5FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752403194; c=relaxed/simple;
	bh=oy4yt0tk0hVlnZ7b0zQMCAmzcCe2Khl1qjaoxc+fKws=;
	h=To:Subject:From:Message-Id:Date; b=TMRxj3vn56tz5ci2ku48AAxHPs3F/cfFIzMKNsviXywOsUFEu86b2l0fc1OZUr1hgq3eu/6PfONaiQhvbXre7TFuC52qri+V0dQNCdDdre2mkQw4SFj+Mu0AdhhHuvsA+PZe0MndLqiXlYbE5Uj5lpOuDhUvInqDaACNHYRgTRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKwhSm/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKwhSm/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA570C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752403193;
	bh=oy4yt0tk0hVlnZ7b0zQMCAmzcCe2Khl1qjaoxc+fKws=;
	h=To:Subject:From:Date:From;
	b=MKwhSm/KVS+XX94djMTI5HsbkkVtbBT0JiFVR5yFOd9T0mGREj4XBlJ+uQ9KA0oD7
	 5TnKUh8qhLawnQ0pRn6Yau4TwR6eJJ44B/d76McZiqbLHy5nz6eTxqYHGoyfY1b8NJ
	 lDu80KOO/IcOqxrRKeTQr3AdUW5k9KWZqXfBBpB0X0VMyO70V0CAfev4Vt5bagdfuk
	 sop9E/38USqLiSvd2aA4ZnLS15urSb6sks+ltikq/MepXuvZO9YHvnS4k1RY1U0eVN
	 vs0oEledUeyO3TqYMpkbTatx0vYMZRvn1D04XYYGdo1ZrsHSBjEb2ME8NTfdJOMRrG
	 qJua92avfzitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9804EC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240319357.17196.6579662231547134750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fc25bd873d07b68b6a5e9f80fc20e8dba8e64c4e4520a39a23c468d0f1ef73
Date: Sun, 13 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752403193
