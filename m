Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8E327F18B
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764360774; cv=none; b=eACJSMg89FuO89rP3eAHZu8vJsZFpvaONF1B1iCC57x9bLINxQUdJioc4KIF8aCzYHL2CZJng1DXBO/lZC1MQOobGUaVYWQwWGW2mU5SAIdN6xIVh1xgKLjnu414p59F3wcMXL+ReD2KSHNUzjmiJkdbs9NtS0sVs7V5GYqtBaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764360774; c=relaxed/simple;
	bh=xbBqB3htlJEJQKNM0qGjIr5lDZ+D/86aleFXqKkUtz4=;
	h=To:Subject:From:Message-Id:Date; b=az98xrlJVtH34aWIrHcHawfM4c6UT8hm0fe6nzCs8OLOmqgfpIGQt6738BK3C/6eXCD6dB0M+jzGRd8RlWT5A16uREGjRneR8xNjLdq4P+5pRrcC+lCMpcmh0h2jnylgjtdCMNyMLIC1FW7uBPdXm6P5C7PimSo6uCI6s136WO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toWVyCVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toWVyCVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764360773;
	bh=xbBqB3htlJEJQKNM0qGjIr5lDZ+D/86aleFXqKkUtz4=;
	h=To:Subject:From:Date:From;
	b=toWVyCVo1EhkKhmsW9kHM/axcm2hU8iEEHQpliEJxIxmqI3GIrjwTr4OXQor+43cm
	 xqpaM9nC7p3szZJ86R+vlFFEvw7hNwzymbCs1KZixkWzEmhMKsRc1I34exqoqv9ZKd
	 FVUqlo2ISsnQkl1fe7wjr+8ISYNWVgTHFlpDdEpIoOWYxd+/8vz7alOaeHwsuTYkMP
	 f2aJuJn/vaQYanhk2qNZTkQox8VkI6Iu0d/WUFqayXIbBs43bZe9nBfUtdKYOV3Cnj
	 0c5JAOOITnwQElNVKiiIXUiTMLVNq0SEI604DXpypqBwivxZyw8hfknWNffERpDzPv
	 qGXCfQG00wQSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194BD116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436077358.14388.13292612069078835106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8077e9ff1a3d940920596704a7179c938aa629fba37e78c982db236c895ccc0c
Date: Fri, 28 Nov 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764360773
