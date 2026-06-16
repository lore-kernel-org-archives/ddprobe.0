Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721D63D75AA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781633194; cv=none; b=DEnqxzYtp2aiT3ZNWDGXjNVL/xHcVScrjrd9yBHWYwN+g6PZ0vDHFdzfOJwHebUEDcTDl8mAWrx4T8+ygVW/Icl9Th2U+cQ03R2kp7oaH1kkuK6upk/M+a4/4Wg2CqQdZpiY/4cqpEh7zoc2rbllEnygldCes1va8HkjWn5U/14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781633194; c=relaxed/simple;
	bh=4kc+cMl7Ypa2p2d4AuF0TtXgln++IdRhyf0Bh+TCiKc=;
	h=To:Subject:From:Message-Id:Date; b=FBtxj9O75H8w0zrnkyXu8q1lRs+W75qiGecSX7lsJkeI5SWC0rvu2NBmkgpptkJVsr3vJsAeFv9zb22IyK9ykKqKnZMxd2BJQ3vqunRLmoTeSCzThnjjufyLFgj8c5A0l2UJGnR4+efiNEJpxGgowayi5BQm055eeOk6o2lq5eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ju6g9sY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ju6g9sY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8A2C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781633193;
	bh=4kc+cMl7Ypa2p2d4AuF0TtXgln++IdRhyf0Bh+TCiKc=;
	h=To:Subject:From:Date:From;
	b=Ju6g9sY+KNkR4FqpEhioNhKg6D1cRLZqaVva72pZVK1BMoVyH2VJ8f+g7aPZYbIBN
	 1igGmIpXYdcuS+vflwERr72ZqpOI+eCdgrRl1NuEBYK9LEQOqG/wr4CPjqEYlfXX5m
	 HMZaZq8UTvXz7glDw25Ww3TMzq/hz68DmlBKA/2e2YgoQrbQSAR2utIAL8sxYzcpKj
	 Mb61oK+cyJZ98BKaNgnFh3Im4xu8FzbDBHcYdEzAOIOQBlRDJkYlRKzU4CYrYPCqkm
	 c8f3uaagrOfw0bNkis3LcqPgmO+ZVpecG0vLiv480FWX1Qvv8VwlvqzprhgHlIlKBY
	 Nq1aDTz7WcIPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC36CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163319369.447.16261161247874025198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba2ceae55a12a50bcf9af6e3e7d496489a8f8399e444ec47c63a0b0bdf7a5f3
Date: Tue, 16 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781633193
