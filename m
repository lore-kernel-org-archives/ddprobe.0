Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C20156F5D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748036395; cv=none; b=PkS/qyUnAwD0l/Zc2KhV+m5sbTWPRMGV5dEX/wK0qzFqubJfJq+oMzddkpR4b57A0G2EHeX1UdNBySnE8RQo7Two56B/EBB1OjoiL9eZLodqbXFZ6iYT0WW4I394G2SZZXP3FyLbTb9ajC7FP7Qxi45sXC39jdCbPSLhsjLTkUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748036395; c=relaxed/simple;
	bh=CF/9QC+Ac91U3v6t/wsty/aZfD1h38BqdhA2B343YYo=;
	h=To:Subject:From:Message-Id:Date; b=PCVzOJTM/k2jvGvJWXM0bWuh215lC+9iViGHCpzaYoWrCBefBqp3bqKZ17lJS5q9VtAKKJdsVT6kXAalH5p7VlWDLNy00ljl0jzjJAAfdfO8SJv5zikBFlUDvBfxTKR5V+t6wma9Xmj+MHlhqvS3MRyqysVBQTJ6AVOIkKt7LRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mn7rVYgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mn7rVYgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFA1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748036393;
	bh=CF/9QC+Ac91U3v6t/wsty/aZfD1h38BqdhA2B343YYo=;
	h=To:Subject:From:Date:From;
	b=mn7rVYgpHqeqQqG6zUHUyeQ1TIDOEVFMWsoec6p+IlzxKi5VuWR/CSSJ2P7jZgFG6
	 kKOs5kpUGM6Mj3W7lkikpIsouR+rztW8rlP0gl/Kp1OwctAwwTRgEAm7jEgjS5lmts
	 qPAwikpEQg8T6wDz/9xE6jNEi5WKyk7Wy161wV1iIOF1pTrh8fkNQmwDpW8DiKSsqb
	 KpIC6oS5cLfwTbL38+J6/2zZ3ZK1PVlkc7rg7s9Bz1ZqyPOoO2d7geNBJSMy1S7uzr
	 Uw31wh9OUo7eQvDydkvCNlyTUKO/73GeUldG4ETYNCiZFzWZMTrQSsH4b7zP5FUq/O
	 rUy2Vvm2CGHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AEBC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803639360.1924.11559186287166699889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f9759bd5ceeddad567aea9dbc61e8ccf70d8ca8cfd2f8dfc4cb18a233d6fd9
Date: Fri, 23 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748036393
