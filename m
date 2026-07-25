Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD3E233937
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784983234; cv=none; b=JKDobxDsCY2upRb6y1RECM/veeCkT2xk9LtpFJ9kkS84uHaVVVj2v8W4r7XD5QDofhX/L1+DUG1NB1BnHqJWltpru+lB/kQfqpxcpaEbT/72tqe5HzpCYh2aLTReqD5YfoLadew3tEAaJvzHJKyvsCyDfD2QesPbyJuHX7Aa6ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784983234; c=relaxed/simple;
	bh=1DdanikPUam3qarUtLEM1fFo8yLFY9vkOHA2dnqmP8Q=;
	h=To:Subject:From:Message-Id:Date; b=E1741RZH9PbLWKKW42KpM884G/vCtRvl+dIf7LaVi8VXuHW/wyy3JMLiTALqAy2dLf9FhlVZZdF9NNmGs31TheGRA81Uyh/PPJukUIjraKqKXdygfD1eqYXJAsc2wmDvyhZztOO3EgL9yZZFLFRmWZ/CCdMyC5a5Q8SJRjbpQQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAvQPyP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAvQPyP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C6C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784983233;
	bh=1DdanikPUam3qarUtLEM1fFo8yLFY9vkOHA2dnqmP8Q=;
	h=To:Subject:From:Date:From;
	b=DAvQPyP4Ypa1WSx5jkcXH3sn/GGUJwtXGKqGuT3appr+to7+pdXriWz20iRGv9pes
	 c11Z8AD7sLlY7f/ReMvemQ0PiblfQYWsU45iKmKkNv7gWnDGti4c3fScIL5Eoq1eZG
	 3Q+YkSoQ+AfbQhj6W4DVSAOF7Uavhj0vHlTaGbaJAgl9Q6gMO8abRdb68TcN32xgXW
	 HSpcC3p6NYCULtF4xoZFaRIXwjyQYraniN+SuF7TV/QrWkW1f3cm1g/cUMs+d6Ux7N
	 /U/uwFf3K2w60nu2imqY1inRU2fuB+y9xAc3ODPoZEBWa3k6+sNF4CcexLcHzML1Im
	 q7LzjPliNVPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB443C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498323368.16089.8992291246319962916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2d85f662b63940306c76fdb0ce164b6e1d3326dd1700f4b5215d40cc9231e4
Date: Sat, 25 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784983233
