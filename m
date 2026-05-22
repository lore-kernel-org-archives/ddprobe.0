Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC6E3A169D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779427954; cv=none; b=h8VQe095LyuBNETlyDVszE9JQ4hhZ9GyXdZHihrw9mqy3zEF6gA1cukT/yyJtEZrhxxXM6zcDjG0LuJLFZOjp6gGlUHkSkRoOhoSh5ttAUvWT33Xef7EV+S4lBjGCl1UlG5+kZwrAbznIboxNQH/7DYJ8XMPmCgr1URqTOnMv5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779427954; c=relaxed/simple;
	bh=RzLvpM5jbaSHGwTxSW82PyqypaL4HQm/hjj7CcWpYjE=;
	h=To:Subject:From:Message-Id:Date; b=Ud7vF/YtYoLzAxcgLidW9SKPAco1HAKN0vU7adutYQLA6IJbhS5UKiK5Oril7M/veipGtLpFO/rHxc7fPa0nRn4LprJyfgHUvSowQjvMizxkgAtQaXOgWGDMxSo3dx7j7q5+2L06I5t1HmK/T78hr0s2Q4OiaoNnuu2Q/W4NKuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=We4tLSsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="We4tLSsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68AFC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779427953;
	bh=RzLvpM5jbaSHGwTxSW82PyqypaL4HQm/hjj7CcWpYjE=;
	h=To:Subject:From:Date:From;
	b=We4tLSswJpkA0ywXxIqjtD6ND8AcGUsuSIzgdku5mU8I2wX+XoYJTRoeAiTIE5/q+
	 lo2wprZM7/rSjIB0ZZ86pX2w1HCYDdsBcQBRw4LvzSCfgr2LijYhNbF7h7HMpGarAH
	 nc0YjPkSiuAOp1vUrY8XWYPpAk74jTvoSlB0Qkkg7fbc1xjXmLPltLXsvGio0LYXNI
	 7JxcjtYCbn4QmM4rbxphA1kqsol+1dChBh7VG7fUwufdszNuxN3k6Z00q9uDeLuhAE
	 9stkXGAR6do//Ek+I3g5T2XVhfIy1XEhhubYZlx0q9eJZaeNurgDpkRMj8gReruqPN
	 J+fCKkATKpgqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF60CCD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942795370.32570.303299303445491047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793a47ef9490b3aedd5de3d8a230aa225aced11a6dbe7e9637d7d01b53ffed91
Date: Fri, 22 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779427953
