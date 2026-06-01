Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B13438BF
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780350274; cv=none; b=a2Fv0OkPpOQbjA4rd6oEu6+CCwrUQR5NSPZj6/d93sq+k3mZc5+QZLNil1Mq8DUgfKa7OO2l/s3+r1fYs/zPO+GnpXyLDjLIJoA16xP4zeC0kFNQUOqryhv9zCk+oXiR8Mwm/0uFwt8rRmmhW1IcUQARkkEY28M8/aeIGGXdBMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780350274; c=relaxed/simple;
	bh=uRtGiWeT2LiKzlviqnhaIA6RyrP3nQnrNgf6AzLbokk=;
	h=To:Subject:From:Message-Id:Date; b=iSH1o7kulo0aTE8tHdKSs4paC6t04BkRLuD1UvqRmlLfZWS1a/EZkf0UZeohtIlFC98v5Hxauk3OYcb+H96W3cuNvNK0IdwAQXi6yiQ+nxwIz9rG0nKPVikNU9tuEXPdBRqsqfZdUDh86GwgRP8qvQz1Wmy2MYoftJd9K2YSk6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGsX4Kva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGsX4Kva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC74C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780350273;
	bh=uRtGiWeT2LiKzlviqnhaIA6RyrP3nQnrNgf6AzLbokk=;
	h=To:Subject:From:Date:From;
	b=dGsX4Kvaa11GfIR/T9onPamUDCm7Zg6ajiS8+qjLYd4+ElTjfNpoad3Rg64paWZRl
	 LxlRKJwrUL8n1IRAHOa1OeeYSHpZmnqKvGWfG2By+RHXPgXVtJYsX2bEbm3Qwf/giT
	 7yUOU86mnYnWPTM3kklkuvz/xFqsZdXFUAo6hGH6Hw0WB2kIoCmFRSD9lpJxsFJM6+
	 6E8SGDbsl1HxUYy+g+NqEPFcW0FClera6DBhg0dGjhEOw5GmvGOTv1ETdl0MJGQD42
	 LBph0KvABIEGAPDRF2PR5ERNYfguEiO0mTniuoJcYuYVmZL9BwqAF+4iLWsOdV373R
	 iJq8sVFL0UUwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01A5CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035027371.24124.8285469999365992389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276950a81444930bc6d1d3087b85624bfb462c7b6bd967fbed83c202b620da47
Date: Mon, 01 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780350273
