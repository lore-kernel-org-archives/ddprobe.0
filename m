Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C8A2914
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720330583; cv=none; b=IvcFtObX+NvA0aHZVXoccMq0Ns3OFf3YIa2wgFrsH7pje/EIi/3n5OXcHKFdHM7vv1vU3bjOYITa/sjpEZXusVF6i5kiwsZ2kCvD9CMGA/uMpqtT40gk2aan7Yslmu+wxLzF9FGw/j+YQaTH/Lvs0Gk4+04V2Jfwg8eQlrNoEzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720330583; c=relaxed/simple;
	bh=+hY9AN5jzKaD1/yiw1HZz/V/Ap1Thlw3wKdLUhRIxlY=;
	h=To:Subject:From:Message-Id:Date; b=hhjbuvkkXgtpzykb3WkYdgleIN1r8IHPrJpdSEK0faTF6uOSfkAr0V9Gw/K6wOu2wNLTGQaZNXBtC3nTYwnC2p3w6JyZ0TLFlaCLjv+PLYc6lzQHEpkSxHKwcpfga5QRPsHAXjUZObPg0cX5uxAqlKllBAPGHjMti22NnyDbASM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcTfljxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcTfljxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3F0C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720330582;
	bh=+hY9AN5jzKaD1/yiw1HZz/V/Ap1Thlw3wKdLUhRIxlY=;
	h=To:Subject:From:Date:From;
	b=kcTfljxpr2IhWCS02AQySTqy+lgEEbGUXcF+0Bvs0Zs4yPRuaddrtU/FbIQNq0MZZ
	 cHvbjBIEbiYl4oZFxrFcZEJsn1T+WjsSv6ZneaSdSnZBSXqTVW7u2WDYbCM5PaKFI2
	 DW9cPGmRbCC+C9/kV+MXa9GJEaMGGQnuAjTHxWsTYKoC8lymFlBmTO2tOigy+GN0QF
	 OQsfunz3MFq4E/KfPUlmHQm/RVmfo0+0IvlDFbCpgIK2ihbgf4llrZXbZxZw8/vA40
	 x9DfperZYgp0Ap0tGU6eAYUalb0IxApgA6/Za5BUdi89uTEOX4qjHJEefRliVgojzr
	 KEnVZTfMOlpaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7458C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033058279.28097.17548151880506991040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0553c7e3809346e4c88e2e04aa84a73ac7b4d9cc67be460d15674aa1131b722
Date: Sun, 07 Jul 2024 05:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720330582
