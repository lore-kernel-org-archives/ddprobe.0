Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1561422DE
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714989143; cv=none; b=AI+b1snTMRaMYpGXOmbPTKOlS8NhOL2AFp7mLkYiqfRwE2MDgW48z0Fzbpp49B/Iz4cr9ynYUVlQ7mNvg6zaMWGpBPiTKj/utEDMzKprSXFf3cNcduC7/ppEx1iaxHPBGp9XKYaTz/BA+AbxwXC8qPpMb2jKkc1/MAui1VaKqF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714989143; c=relaxed/simple;
	bh=LR4khA9KvYrVE87eyiDx5QjJ8BRF7MrMjvQ+Jg3inJk=;
	h=To:Subject:From:Message-Id:Date; b=Wqk49n7hU4vJ8hj3jr28r/a7yuDx9+n964V9Pb9i8MFD/zfZVAGOQzXK2e7nMHMrG+yZAyyNaVUx4Pc9tIw/jPpnes8C7RCrSNSt3+Cv3Jyei3gnPneou6lCpIZoamlnZgZx6DScwuksFkgCRbpYQ1i06fYs8/LH7VfR7IYb24g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UReBF6Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UReBF6Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67F7C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714989142;
	bh=LR4khA9KvYrVE87eyiDx5QjJ8BRF7MrMjvQ+Jg3inJk=;
	h=To:Subject:From:Date:From;
	b=UReBF6FbK+69E+PVj3V8ciDxJh0Cf1/e3V47h0MnXwNROfIhWgQkvBAkPe3Nguf6O
	 sC09pe8V5bQT3d3m2sZV/e4dpnrRf0L2y/7ZscCeLFYPZLYnMJHuRJquxYtJ1pfwlY
	 0A3m63vBdTTR6HOXy8yDU+vsYU8sXUddo+wO7GXJ6Bv5+YKqq1m45rGlgYv0a0GEyf
	 SBL8zAfcgUaiaNc7Gb2kFUOkVdjC9sRgs1yEbOlTawFE+sy60kZYzloGH/fL5bKz62
	 HuUb2UrqL7InMkygXHiOPmlrfzvfkSCFCUbEdAoKlIaxxQRfDGLLXIiguSU6exx+D0
	 RNmki/vMl+eMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2224C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498914278.10578.3896762783983540963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afd224e1fccaaba4b962a42bf2bdf7846ab2ea99f04e7ff52250aed5e4401db
Date: Mon, 06 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714989142
