Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E00156C79
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742069994; cv=none; b=rHVcQ2EZhU6gRMoNccK6z2mVVEpitZHE/qua4G/xjilLrwQS4VvibZhDa4LQdMDnc6Gq/4ba3ksuHE1Pec17teuTIwEiWtMsFXKx4GUhWSdOBmWCm9yfvek8Cvv6PCngaKFb9t9HeDfPRoLxXaRCSJOak3lLqhmT7zzNAheOgFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742069994; c=relaxed/simple;
	bh=vvfgW0f/0gB+lQtNGlCe7KsV9CviScVQ2VbdgpWDlsI=;
	h=To:Subject:From:Message-Id:Date; b=q4Wyp6ElJsjztNo5Ab4BYKfJ7ZoVUlsmJbS7zCknMxbWwJ3NJLDXNmRvUR3G0BCjL6wK+aaQ+ja3m9Rr3AWscnq6T5HX0CMEtQULailPu/oJYnBxKyjPCE0qQXkB+RzhTSR43AtQd3i9GeXebq0g3exE/5d9jHTMgCPwJBZb+TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W847C8dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W847C8dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71ECC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742069993;
	bh=vvfgW0f/0gB+lQtNGlCe7KsV9CviScVQ2VbdgpWDlsI=;
	h=To:Subject:From:Date:From;
	b=W847C8drZXPnGc3n9iwzvgkWFMALzlGrnyb8gJZolv0xqBykiKEvxDxWeLjrSsJJH
	 K6iWP5tSOxtKd+yNPpnsnW3O3g1tf5bLQp/LIc5RWa3Ud1BOSHTEuQ+fOl523pW8T5
	 f3IRwsQI6++aiVIxWRIICKxC7ORp1diN97/5ELd5gs/HPS6nj1wo2EyaqBGhiFzWKW
	 h8lqGvUxvjG9OcpwSG0FHiFxIkmncubCB6IscvL8qDCjqfeb8LxguH/DVyA4qEHGXO
	 EOtbYvZMpxS/DJdSl7B0sn2kBfZ2vKhXzq+owCGYDGrjQAloUtrw/FbmiwnSxuBt36
	 TVf+Z6NhD4CSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A022CC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206999364.9745.1954024677310963211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818e6d33cd0f02be9f2c2a6098de52dad43ce4e5542a69c553677897f6c04261
Date: Sat, 15 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742069993
