Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EF62EFD9E
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760998794; cv=none; b=Ry2bNYn843N/HLbkbMt8NYC1eBs22V9hIs8mm8qrIGxkIHXDaXAv+LX6B1mDiOoCXV64/HyBgMC+QfplMZA7EeFOtIO3Nd0nsOYeba73CYTXS69Rdy25+FIAtX4FhK1xZeRKHRYpOBHwOn/jeQsXFwF9F5toSfMp/dlVYZr1C3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760998794; c=relaxed/simple;
	bh=K5wcQzL4TBCjTdJh8BB4iU9lSsTzALomfXeJRCAf07Y=;
	h=To:Subject:From:Message-Id:Date; b=IMh1+F5TPouDNVgbvZnQ0s6qxOlc9TK1LlS7MlYpr4VT48h/0pL7ku7o0JYrIU7rUu/fJU6zKwPVgnRtkk/gCqVyFu2BuYQfFzZ8dpqpdBCP93uZzSVMAx479cez071fqlfOM26nRb+DQ4uRR9Qk/uIaJLTt+m0qFeMGgdicutU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEn0nZtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEn0nZtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A485DC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760998793;
	bh=K5wcQzL4TBCjTdJh8BB4iU9lSsTzALomfXeJRCAf07Y=;
	h=To:Subject:From:Date:From;
	b=dEn0nZtvKH0bTzATUlSCSVWKGCeoirO9d/U28Ah3qiygNXFnjzSl14PgfYnNEtjRj
	 KhQQVPV7iOhUagtvjRPXIK2eKt0c109fzloHv8EUxJhgUgQapzjBfi7cyl/6XTSxqw
	 QL1G5giOu3640xsxx/oe/W5JJwGSrOSPg0ss0XsH++VvBTzrGbIgK5yGab9xXGHpj0
	 0NBOSi28ISeuXrp4PUlS+/liUl8tw8H8b1olUhV/6UaE+YijbS+IK3oKe4Y1lSCu8v
	 I/RA/DAdRjjkCNy1fIFAqqHet3IoaIyIDJgtB+hGVvACL4n0l0kjztgypJRDAl7Pb9
	 hiBqPbBulqKRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE2CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099879358.6738.10274688582088827227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10525fa4089a44dcba814829f663e0d8d59559fbbe4ba124ddc71812c1689312
Date: Mon, 20 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760998793
