Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA554A8A38
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789149034; cv=none; b=T45iDHlNuQohKhZCiWXrxIlM4CXHrb9Uynv1WLeIz8uYFb1DPM9ZZ3jGqEW6B36SldaXPPDDuxlM37NbGlhk7jpHvNfBH3RJQjxLILQOKS6wudaYkjyFfp4W9wDUvchar3xpA6tHQ40WVS9Mwf58oFLASaj3bdagHthBLWHVJhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789149034; c=relaxed/simple;
	bh=0iGB/0hU8r5BZis33QajtetMXyyS2Y5J4Ly+D3xz51A=;
	h=To:Subject:From:Message-Id:Date; b=TOucIo328qaqapM+JD3SV/K/HOnDNAk71dcdkTvXoufLbqrMZi/NKAcq9YyQx6AzuH0Qix7lY9a9dn3C+wM+8JyX4EhRM19rgXScj1OxzfMIatJN0NQP8bSxa4Yx/6n5e7fNQydTAJweIvmB8tW7vx1GFh1JxbticEq+ksuQJcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhRPxgAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhRPxgAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5FAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789149033;
	bh=0iGB/0hU8r5BZis33QajtetMXyyS2Y5J4Ly+D3xz51A=;
	h=To:Subject:From:Date:From;
	b=YhRPxgAt0IDHHbysXB6gpFCd6JBBadJPHZixFk6iArCXFKJCP9qdGXxCvgGg+JSF0
	 OmG1V2swoq0U5pxVtCjomQqLGdR6flKsSX2SL1Ei3cDsC8ovzhragNRQkLXGp4dt7h
	 jTGTg3snSPJAUMDvfqfJ0FKC7jC57ld77quqsgLqfcyKbcJd5vKTIAwZ25Hl5qpKB+
	 ZrYFvqMgdZYVh+J9i7fBEeED4fNEjWqIJjrU/12quWlud4F7SUFcwRsOS0a0iutBxq
	 WWohjWJziOz0Q9d2OjJ6M6vQ5RAejk6ilvFlDnFm2j0rn2MjPlTJkKs6cYqENdgvnC
	 DC3GX6QIYoYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8CEC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914903369.17056.14386700606415202872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5233080ac333a84fad3632e6a24cc8a277f9324e263743bfe6a2d839166f5f9
Date: Fri, 11 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789149033
