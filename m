Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8B823D28F
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746833994; cv=none; b=U4i1j+xWOD7OWZ7dPEjtIGaaiYRoo+HAunlRMzYUdB43gDomJEMkRmu5AYLgALhpayGy8SQL0wMxs3SZ6MVQpMOWtIeeKjO5WAfv0J5noWfU96EPhD65utwyjtMhVetmr1w71i/FR1nC2N7gtGXzssxX4/Z9LcaeakEc/LU7nB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746833994; c=relaxed/simple;
	bh=GlcbCjazMFbEbCdU4tjcDpZdWcF5ZtghO+pXvmrTGbU=;
	h=To:Subject:From:Message-Id:Date; b=D22aKcGCUDBD/uRX/HJXZFmz/dNA3BpuHm5xdrwjJMDjx6qsNVyNOqrLWvVFxegy3sVyL1Tp5R4Ctabv9oZtkYY9olqXCv7ISyTrY2PXGL/0fPBehD8omd/T+sjwDqzAJFNyvFkKMak5OtPuHOMsahk+qAWWKoQ+PX1CVo1ZKLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9N4638U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9N4638U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C00C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746833993;
	bh=GlcbCjazMFbEbCdU4tjcDpZdWcF5ZtghO+pXvmrTGbU=;
	h=To:Subject:From:Date:From;
	b=V9N4638UkuS3y5xhehCK3/oY7jffpnKxWSIVFYeVO8g1kmHXOnbzpdrIgp4n4Wdyi
	 SfgXjLXjMJmT5tHCBiqbk/DBNypCOXui4WP/YwrPdP3sCiQ4L22fpwVZ7Ik4kTvPl1
	 qkIBu0fdwG3s/xCzLv6ogvAPJYIKPoLwwao0g8Oh8V7zzA2Kt7SRqu7IAYJAD5A2FB
	 B5D5R3tFL3+aZaYuBaTcZ12CwpV6rjrCAdFFp7pJAFTAaeRljkvCGhynEMngpVF9Zh
	 vCuqRKaurrkwHP1MkeGUidGRIofrwlm7TZV8y8tF6DGZJH9GjfHYw+IfrU6OFyJS5C
	 kXA/SyCkqhKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F6C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683399357.16551.13309242263191107812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e780020b6fd6044942f747d35af42669c5d4149345984fa3f168b3a48e07c90
Date: Fri, 09 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746833993
