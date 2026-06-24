Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ABA3839B9
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782284794; cv=none; b=LJlyTw/iGMP7NbN+xG+vyPAql/T9qK7he2UBpm1ihevJcWzn00B/7OzOfLPJFw9nolkOs7az0zyagB3Qx1RgOsjk7RJtJACCXqiRePkdQ0T9LF94MWUbn/Y7KpLiKUjpGgTpwSVlusBY1Jwj48ZkkcwR5Va74TAMA1gxKQTLN+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782284794; c=relaxed/simple;
	bh=Yil4Tz5UEcb2iUdkPuwlo3PNbOE+sBXcX+3fe36fNRY=;
	h=To:Subject:From:Message-Id:Date; b=MO5ZvM1hby4ieYzydJ4RC50WWxVmIo0mlCXORLQT+m5FPPiAfGouRy5sxFyaqByYQKMjipxHcc091J5ii6DnZGzBOgp8p98tQrl4zfaqyrJbUHcwM30djDpGCxnNIfov8Abo1VsVFLOt5ejtofofwHKMKn/gwvJjxv4/E0MEHrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExI8j4QO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExI8j4QO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0435AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782284794;
	bh=Yil4Tz5UEcb2iUdkPuwlo3PNbOE+sBXcX+3fe36fNRY=;
	h=To:Subject:From:Date:From;
	b=ExI8j4QOy8mKO/eUJobtByKk2Qqq+h98dQKExWjO7OWuRr+Ehbcq6PZwh6SHUawha
	 p2J6s44fpmttFuPw+GZTEGHqzbd2bfhFDeO2hHxhWVQIrspYNXuaxoDasWuRJ62Fx0
	 Nf2IYYODE4TswiAj3uw3rfrPxAQ9436O1zuyvMFytSa1Zj+qDWHJ51/jHRIadi6eUd
	 FgqZdU1qm9J/fujm1I0vdcerfu2CtYL0tIOc4IyVSmcWWX/8iRDdLXr9q/oveeI/vO
	 qdtUmRKdKmthmT3ZGQ/axhxgeTYsxx4mu+292Uf3R0R/kfhQtn9jLsxjJRRCLRdI60
	 PNNmDnaP8y6Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEAECDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228479382.6664.473183102260753108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dae62994be8ab62bc0fb7af1fbea607b7ac584c412464f9e3f3115569003cbf
Date: Wed, 24 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782284793
