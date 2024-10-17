Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E92621D2A3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729193154; cv=none; b=BOkpC2KLwRoxEXkODLG2ZKfq5ZQpEIBk/pRcxnDZnbrMQSZLW9wL4RnIBKbRq3IHce2cg/NLnULWu5E7h/l+/cGzGmIi3OWMd2ALbl9m00NsNlfFTM5+/dAVr8lIuuyWodgxyXoBTfxWs4T2XKKGKOx+ABl3L5sYjnE1BcOVy9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729193154; c=relaxed/simple;
	bh=B5sxuJtsvvKlCnwiimWcdqOD9ymOqhayqzBPdAK0AIg=;
	h=To:Subject:From:Message-Id:Date; b=Ny137NK+xIOdesxSsEpRf2LCyIw6iulsf1jyjiteO37ilTwdJcmR5Jb4LfftJ6U7DSHNDDe/0TMnkTffskOsArnbHrIrqwEpj+8DpE/XRF3fdSvSbOgXSsoAeGwmOEsi48h7EED/xF1VLdLgfsbENRlLGBtumSSxwfPZMC0e4uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2unKbl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2unKbl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA8C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729193153;
	bh=B5sxuJtsvvKlCnwiimWcdqOD9ymOqhayqzBPdAK0AIg=;
	h=To:Subject:From:Date:From;
	b=d2unKbl0JdlQ6syRZW49KRAx1rQ2q1meQKmZhaiWad15hQdrTCj4URiK602vKQKf5
	 wTQ5uiY9oceb9Tpy/ij1nTGa9HZ1mYmMWPJsHTe2B5IolgrOlh4OzcWW+hlBxXfS2E
	 PBzn+p9hYWCOYJOBrF3LVA07XMmu8iySAmEPZJvSvJPx6XuHXKvBf1eOTWO6/3o43A
	 KWR5Acm9CO6LWBxqWrFFiRH9K3d+dpkvPW73pc0WKs3rF+FL+nILxv/hOWnHnwpZcY
	 5PKuEW1PNiVZeILwNUhDN8m3u2ZKLbqSnK/5ZnR0j5H2vZmE6CppVMpkA7wJNe2u7w
	 b+Qafuhs1qYNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92834D3C52D
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172919315359.23290.9545127959785494235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a758f66fb906f2a3e80b878ef118efec38fefb481a3193a31b0148c14c1c99
Date: Thu, 17 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729193153
