Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25440214814
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748381994; cv=none; b=NIWnANco8TDRNgXzpfKETgS3RYDlyQOnd4MisHEht2oVj7dB6ZikPEUeRZWY7dpkE13BNwVJQl29XCBFqRCVQ4k8vEzk+kaHwmLckwhDm++I/9BbRYoWAQk7BA52fCXkwCQnADhRTEXz+iSu9kry79iJOf2fxzsRZMRW79VLe3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748381994; c=relaxed/simple;
	bh=Bzv/ziqUgyl3LElJseHR5UOA3toJNiKkiIULhkUGiJ8=;
	h=To:Subject:From:Message-Id:Date; b=JlLnB54okCZa6Pn60dmJkkbqxk0BKx+ObAbCYZRxOtE/WjaSWg0f8Lj6vE3/ye9AQjVVqwbwZxXqfJDi6Ib5NT2IQwH3KFxKxMjdghOY09LiZOwv18R9vZyH6JoUhYnoKWmljhHkU7uWz4zyOjRissM5PxT55IJxGZ0EGBjVkgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoSK7mX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoSK7mX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D728C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748381993;
	bh=Bzv/ziqUgyl3LElJseHR5UOA3toJNiKkiIULhkUGiJ8=;
	h=To:Subject:From:Date:From;
	b=EoSK7mX97I679ZQuQszDB02yJcQWu9I6SZsuLvdASFfXq3v8ptm8QBT7SgL+peprB
	 mUSo49UsprXGvIdeQ/kq8ACeRT2q2Fs8XON7neRSYIHDgDiP2XQXB3AIC7hmpQeU7G
	 SBRxl/nMGFUfemrRjgwmCpSMj1X86P0Jq4k0njQc0uFVwUvHGClhHazotqKUWmO9+a
	 lL2gJUBcdLiYf9BusiodgxJGKcfGVmxIByAUeHGZACnuhHYt0HcJ+y8GyIBz5oGlOE
	 TWzy5yHakw0RxoyaMLgE97eq8H8m3tZEEZg3hPm93XqF6di7EH97x0btncFnesV9pd
	 QMHnzp0lb4WAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F343C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838199357.29568.8509672611225820323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af976961a3c4e030b3886d45151a7aef84dec352dc4781dda0ef444f6452d10
Date: Tue, 27 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748381993
