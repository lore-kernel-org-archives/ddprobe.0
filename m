Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B50F9D6
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754256594; cv=none; b=H+3KTkM9L34nr7KkLTGElHszgUssdps3ecqkTlXE7yYe1oKA2lly2eTpgeyUaauL2O5y83JiuirHxS28ar0aGSUBGSf9ut0EIuDXAjOrUlmV/qPoSgNU7Npoda3hzJ3psN2mLtvMLebSov+M0L/1/IXrML64/Oz31iG+e3IHoh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754256594; c=relaxed/simple;
	bh=8MoITvaVd0o98XkEmLBCe745QXDZzWUx0VLtNsQfC1Y=;
	h=To:Subject:From:Message-Id:Date; b=j8aVucPqCDWFAQDIa9cY+p8OEu/NCTLZaDHONMLOw2i84gswhq93NKdM5CQ4L5rBxMG1pNPNILwKdrhyzOvCK8TK8CYxX0jWr9q3o9h/fc25nqmpShf+E5QcGLSfwD6PDpcKZeJQMPbe4idhAzXqRWtcLjzCF5G1GE+KeIN0wQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSJkkSgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSJkkSgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB67C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754256593;
	bh=8MoITvaVd0o98XkEmLBCe745QXDZzWUx0VLtNsQfC1Y=;
	h=To:Subject:From:Date:From;
	b=tSJkkSgBbbFwZolTZioIAzZUbINCcJBfU931JVPBIGCr84OYI/FBpr05xuCY/XbCs
	 teFhNMQVgDvzdDA+LaFzyZA0/PYIJ0sg0rXchNOjvdsAFEggV+R72jz+pzlNACtsLh
	 /uZc8XKl2WT2Y9ZsXT7CgWi1HR7Pjwz6cI7s4cle13Vv3jeDcpDdwq3h54MPl0p4EH
	 JZOl1wpBnAXkJ8tSA1PIBKenxOtE8jxT1TNE4TyMG0GG6DpxlWYA9wdw4moKLBtrhM
	 gd5CPwH7M1+tzmO3cZpiQjsqQuhrxtjtbWsdBIcaxMgCF0F089/9p7exLltVxnNwkP
	 7tm8uqLc/65XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D44C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425659358.10045.8240282982945781763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb5d79fb6257588bf3b96bbd750e0f26ca7e993c272b943dd5af140b34dccc3
Date: Sun, 03 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754256593
