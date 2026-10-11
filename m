Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A9C305660
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791753034; cv=none; b=XvOGrMJQOlViDW6JY4pCCliXkZ5RFP/9Kbseb9kBLB3qMI7bkcm1QauUzgDUBSbyUOACPEX99Oh5/sFFDSY6X+6yxtvtqcW8seNUwY6rM6VE7yk3k/wNv4VqKj4LNZIOZwPMePAk3xEntlPNHy2m8TV9E30w3I6b/3naU7Hzp4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791753034; c=relaxed/simple;
	bh=NkTwpsvjUpDpMyDeKabYUqSehRq1OOlaJbICM7jHBKQ=;
	h=To:Subject:From:Message-Id:Date; b=ogdNLjVRRA3e69W8248kERb53qcaDdb0nVuH687CFSFaaIywck3V4MH4iIQujLBfTl8qItOvI+JE6dABdr5N5Havpv7J9kxO185wpBigyI4AeVGQrwuWmwGK+IhiDkVLjPf8GjG1FpreyvH2zH2zBL6vAb/GR9/RubFzqPViFOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adLXU1if; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adLXU1if"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D368DC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791753033;
	bh=NkTwpsvjUpDpMyDeKabYUqSehRq1OOlaJbICM7jHBKQ=;
	h=To:Subject:From:Date:From;
	b=adLXU1ifOrUJbxd2A1czmb5l7MAHrvWimChozag+JOpLF17LYhQkYU5zGj54OlGQA
	 4JR9DRspFjjTfgTa4B0T4/n0/j+EGduPUIcifT2tFq3YisUapZItv0LgWHzM6Tj/yK
	 0SrH2aFcrqN8XA2fvLSUuKMygkAttPehtFikIK3VjGSG9sotfPbJ6t8X50/qRxv3UK
	 YbsujyUF7EES1pkFyVICXT97Juv07SS0nOdoj8WKorqmTL/kXI8C2ku0yHvNvsb9ad
	 NsiHntJSZslE2ZWOmCAyQZNIX81Gf3cwMNM0jZEOjaZ4cQVcpQtBREEiB7FYSCtULP
	 +NDlEDoatKdfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBEACA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175303368.17061.15436079140845260685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990eef7ee2b360347b9c2ea502693800532a88d484ea1421692c601e810fb60a
Date: Sun, 11 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791753033
