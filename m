Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315BB8003D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780799074; cv=none; b=BrXOX2Shl61UgFX3faJckOt3xGoQrspNmkJybOpYR2G/PIxOdv7m+TdrGwEEyUbDebjqIA5l6mDl82znJG5Om1b5edX2ArlDoebGyAAA87h+vi1Tn6QhnXGfEJh6OBI74ZgPQbPTfPxnzHpahkAqh+FpWGQ+c4BK2VJ3FZvv4nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780799074; c=relaxed/simple;
	bh=8hUpO5xB73rEgE8f2f1rywEqdYuyX06s6JuzLnoGtDM=;
	h=To:Subject:From:Message-Id:Date; b=WpjIEaXkbirF4lV06GHSGCB8A8FK06Lr+HVfqnuaCxXGL64HW3/a2wojN8f6I8uCZ94YAl7epx9UMv4OLDaAj349410ktJS0r1ECvOCN69G8JpNC2LmEjKJaowPbxq0ZUVBmqoxaW9TqQNV+dWDQjbxehegJBA7snk9uBwSiRS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWL4vvLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWL4vvLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AA5C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780799073;
	bh=8hUpO5xB73rEgE8f2f1rywEqdYuyX06s6JuzLnoGtDM=;
	h=To:Subject:From:Date:From;
	b=RWL4vvLzpsng1avlMVeYKENaYvEFDoEycji+/dkdnkyEVFhaJE0YHLYe6JKoUuO9+
	 ECyzPK9pcqzkO0r99ivd+kS/PFCyH3pdQz+v8pfO2pRk7jh1+uRFGWivn5QwAY0it/
	 ibibgBoGZyfU78oz9u10e+A7Y/gPI0/1xlHf874Afp3NVgogxUJeJ7e781IdR1bVjy
	 1on0Cyh4y46ASb4OYLveNEJS0qcDhDNODyoiwynOGIL+RW4Zo/6SYDGqELhoRgaw+c
	 GRwn80XHyxYumwKsIq9r62Dq5SkpLQbz/JG+kEVftmLbfL0vGNOKKhB37MLkM5PwsT
	 dLYsrDpzKjEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D1CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079907368.7215.13606045947743059215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cf1d6bc4c7222a2be07187e499e85f4ef2477c7e79ede107bcbff1465e07e1
Date: Sun, 07 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780799073
