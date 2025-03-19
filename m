Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F639155A25
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742368194; cv=none; b=tf+Cx3Y8Kb2RBhdAWswFnRL28Z64Xnk6+zY8XaH/UvHRWWf3FbrLLonjGDZAPsxAB5payHwkhPp3HaZ4czNZHth/lL/IC5bzCHBTClSSy14WPF1HWrZ0jkBACDeMrftDWCQ/prDWYn1Mb/Z5AlSCExXOYO1PkJNhFAz7Jsobvc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742368194; c=relaxed/simple;
	bh=Ju2pl5Ra46JVL/9ocasYZHCkA95iQTqZmRQTnXn/tFs=;
	h=To:Subject:From:Message-Id:Date; b=o+RhT7A801SlfW7jHK4sgMKlacdSTIbSb+yEElLLS6koF74tx7XH66/33r7UwBkVd5j4C5GN5u7sgHIYhDorh6eUOcs2SDD/Zax4dXZVsOMUIO0grVrIC2z4gyNZ2BziwOaz1sboctcGm9acwwHypiSuyGDSm1iQJ+d0Qq+5W4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU4xjqj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QU4xjqj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE36BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742368193;
	bh=Ju2pl5Ra46JVL/9ocasYZHCkA95iQTqZmRQTnXn/tFs=;
	h=To:Subject:From:Date:From;
	b=QU4xjqj5KGr65/P+/+ZVvvUcQ6cUQrh39Dw4oWA3N3VI5nB+MueqQ0fMXoxUXu/n0
	 bC/TOwI75DYQLqPZp/wgJ87mB380xf9XlfgPgAiiP0cIywTsjz5yAeaovEUlMRouPq
	 zyI6VX5jPPyx+OAEK5/2gzm+poGjNN8tYZzY+cXp/1q2x0gtH+PeBKcLWO4BV3Xc77
	 Ym324W7k3uFLcGwvBUeQRW48zo1gYF3RLFbzV+KSf4eKWQAfgfjsrEEuuMckHBU+jB
	 gYTqf+8rqrEOH/jMg63FGKEQytQlj7XioHr7zY7U95mR/Zw7XrZWjx4aOAohf5mCBK
	 ShR1EMQoaIwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B0C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236819361.32400.16695673531661195268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80af74a82585855877fa40506b97103bc436f98f9ebb8ca8a54132e91eabbc5
Date: Wed, 19 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742368193
