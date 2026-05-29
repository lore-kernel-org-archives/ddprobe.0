Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFF714A8B
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780017754; cv=none; b=pCWCHzIPeUL2HkVfNQzCLeD/lVSYtmvd9UuqFSeukXMeJv5aXtBcr2vZ1bC+X7/fh211F9rZbbg3v7Qg07tFYZL1wuivCpa8qCgRl2S47jtVSGVJoqIJaSuwmcX9tp86Df36bU7p2ku/yGt+v17BV9kZL2DN0JkoSRV9rjzOQfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780017754; c=relaxed/simple;
	bh=A9bWQ1OfSQqE8Jthob3vR+hV2hHmHbGzX++4luYhli4=;
	h=To:Subject:From:Message-Id:Date; b=jjjdaA5IC1j3eBfzk94BVqJvYb5a97RSyjaDAYXT8CQM91xi3jHh8U5GrdbDkrb8EI3YgoJouuMKScsyiIEyaWUiBL7YiHqSUpFxs0cTydnEh/uWmaZWnxbqexYZd/f2trm8cAEDqKMiyraIRmQYN4iBBIPrbHY5EarM5GGDhNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvTmbQVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvTmbQVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BA0C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780017753;
	bh=A9bWQ1OfSQqE8Jthob3vR+hV2hHmHbGzX++4luYhli4=;
	h=To:Subject:From:Date:From;
	b=AvTmbQVNgp/cFOu4lsqcIfkMNWWw903vFybVct2ZdWerbZdz2F2jR+Ms8az6hygR8
	 71IdU3Ruc9J9zbE8OKn/a8nSlyu818LGERRXJD8T0hKWUAUokwuSW4LP6AWbt1lpuA
	 AqCRUwgxq+VnLr/sI7e3IgVom2UUU0hAeCV2yg5cRwEuBHLwloFM8dCQuboRjjNDGv
	 t/GminRYmuj7ZQ0gmWCpAGtozA9LFDRbmsx2MghmSNoBAxJtpxcZ97QRA6dxp2g9TZ
	 kIj3s8TBdkMj+8xxJbYoyHMsphLWpAn10F8Nx+SM2GiXqoenb9gnHZgW+NpLcBjr9U
	 WHYXnA1yqrFzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F4CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001775368.17056.12991801194486206688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29272ed2c869a4bcf1a5ab6194a5aed2d60d79ba7c75886b3810c38b2f360798
Date: Fri, 29 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780017753
