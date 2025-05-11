Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFEF26ACD
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746961194; cv=none; b=NKYbS9TyXQjjCkwBd7FzrjO5rzDcahudhj1RBDp+Tq7yWM8PmS1jUAZO/tKetU3BMWUas7QJ0u5+zKzDjSMAZ7r+0mv/8nVazp+0HeI58Ia/i6u/ECH6bF36bJ9UMQko7m4lDC8RFl4HU5FouIpTT+Nh6iKVQrLP0dnB3PMLR74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746961194; c=relaxed/simple;
	bh=YI7c+SntlApGUhxG00eU3z4isHE4Kq1HViYC9mxbvJk=;
	h=To:Subject:From:Message-Id:Date; b=YN2YtwP3tU2wrt5T3yFAjbFPuqkyTSFFunWqtF+0bLw3wqmR9gOfCRMTrf/a8yQtQfOufd4t/R/nplPImtH2/upY31YDUX7cMLsdcHsbjZmzWhqeIdJ5RvRJ6kB3/aa32H64WRXvpvS+X8BHj83mCfdog2emksXysmGkQPkhZlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI6p2S2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI6p2S2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8D3C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746961193;
	bh=YI7c+SntlApGUhxG00eU3z4isHE4Kq1HViYC9mxbvJk=;
	h=To:Subject:From:Date:From;
	b=RI6p2S2wahnUVek4MSFkiJxdYq67ZxC4GawUd+KLQ1XECEIugIxqH3KI22BQc/itf
	 ewM6UywEaivtKIw6aFGiBNMvkSRa316Fr3RY7aUN+bnIDwer34IdSID5uBFFaDRgHJ
	 iu2D5SIoh4hz7AOFm71C6n+wBEWLKhaG0OVo1DJzocd0BsBAcQol/Qb4yLg9Mxno0Y
	 YkdzNg21OHc/A37HcxFCqAcWytSfx8jD/Yez7lJM3uXwNrrt4S6HjTftk67Q1buy/Q
	 Skw+1bb2s5d3PLDw5WHe8JKO8v+d0Xv5iZFr/xyJ0YfrJk7+QXRr29pfmAQLPUS48+
	 62yGZ/cZ/7ljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0E1C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696119360.8772.141916675860119720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9286808c9f3423b044f3ed2fba550713d6514e05318a3c6f0118bcce254bd4d
Date: Sun, 11 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746961193
