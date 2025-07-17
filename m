Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ECE35957
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752724794; cv=none; b=SFNyQcmrjr4FpiwCfizrg1yIrWjw8G7kawBUKHabmh00mFfYAUHdA2qwPLoxi3fgOW8NyMJavpoQaiJi7YWUxKZ4x6qQv2Bntfx12c8QxaiRw8tIE72U+oI577QHn5x1RQnp+nWk9vNtHOvzwq8JpUYexLZC6ing2dunbx1pPC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752724794; c=relaxed/simple;
	bh=4UaP9PWhrKmVe1UOipd0emGuvitQOdPrfRT0rYThSSQ=;
	h=To:Subject:From:Message-Id:Date; b=Rst7vqfQb28xfc0LodisUhu0DpNLWcYpg/eOFWmBnCJAxMi6zevXT4+uC9lrxj2HF0ZLNfJgrRB7+rumbzm8Spfq6cdF4k1g9k8WCMboC5zuzqSJ2zFj3AH3iiRAjGovnsVsZJzO+Y8knxAersvI+djAtFvQn9YQ/VTAM8zF/Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juNzY5Xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juNzY5Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752724793;
	bh=4UaP9PWhrKmVe1UOipd0emGuvitQOdPrfRT0rYThSSQ=;
	h=To:Subject:From:Date:From;
	b=juNzY5XnveVOnphNSVZZ38eBmLDeSEyjoSLtCIz5xuOe7k5kKWwU3eLEW8lzTUICx
	 2xhQcunWxNaubdsiEQ00LCZR9rnfzswGj425ytLJmDppkR3b+k4OKpOHe7yBTBn/qi
	 4uo4RUL3YBvZUx9PiRlFRuu+SQpid2k9OKZ3LtAWEd0T7eGUVKb/J/Lkanpmka4DKf
	 CrjdSD5zzD3aprmQ3zDH23mzDMkSc1SB1AE/WXczY9iiy8i++XApfOCO7zjLTCES1o
	 M0m/xLbz0/QtT+KMzOyQ6+42opG6P3hVLjCIVjBhDmw90xwiKkie+i1Xpiw0jXC4xw
	 CUux3ogSj7gOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F244C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272479357.2903.17435175931193070352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445474f6bca81ad912bb8a29f000e73a6d92a85a2cb175fac963c494fff5f523
Date: Thu, 17 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752724793
