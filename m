Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393231876
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735276554; cv=none; b=aRYdGTZozNI4M3yor++ILVg5K5jfjQOz0ijy7xwshYKIzcatCOyTuIKhsbUPg1J5+Ujelvb9Ncjgw2OwKw+c8x/mKqcYLf8KcQKRj5si8GFOlYXVfh/b3mgwJfe1kcQjzPK7aBLybdemu+SfU48S3OHAwIDon3N4ySObn0Fam4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735276554; c=relaxed/simple;
	bh=LQ81Zp6/LkSwN+lNYg5U1T5TjGx+Uu+rQfITHiblRqM=;
	h=To:Subject:From:Message-Id:Date; b=p1EGwCJ4k0Isr5Z5b5b24VQLklxE6D3wnNJrmi4hwXRllbahbs6VAp6RjEn9d1l9USloYEyqISJpT2s0AViFdx0KOkr+Ruyx7omVOX2wKxVZTLzPxIe/YFzzD+pqUkmkVoMHlonFaySWjUhcqdkXiycFph0BTKbEyJlkWm6qu8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzLaVXNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzLaVXNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F54C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735276553;
	bh=LQ81Zp6/LkSwN+lNYg5U1T5TjGx+Uu+rQfITHiblRqM=;
	h=To:Subject:From:Date:From;
	b=VzLaVXNYtI6cekriSES00faY6bT00/AE+M99UzKs1pycFpOlQ4hpBRDZc/KJ1dMcK
	 ka4vSi4spOqT62nRTpiBfyEKVicahq4iZu4BJPCuc4nuImalDb59QSURbaL1tc3kfG
	 Xk9k7AmXlK4juyr0fgl3NrWdUIeHgss8qlUuugfN28ynUH1kOQ6QyPvwOeejUw8t1Z
	 Rp0clUiIyyi4sWJPIdhXyRL2ku/mn/uwNit8EucV/6parcemmSA+sO9sSdgS3HGl8u
	 BSXJ+62SOc2aeyX6D8iMduA+wD/MV/5M1r2CXl+Pe6/KtrjT3H2KJs0UXyCTmwrwgf
	 EHh9yceiXOwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E7E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527655359.16764.17661049816788286061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1931dc639a0f4ea2e7c259470fcdfe5fc2b0f9c42d321bb7e2962427dedc712
Date: Fri, 27 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735276553
