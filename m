Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A29207E03
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746527395; cv=none; b=JUPVh0KZNjzMgKTWi/Z6nTqM9ilB1iUOgGaBdx5MpzgIRfkk5SELxmZJemXyJohOHGj3RDWxkJRLhqDs0C1Fqk7vSZlZir8NOEP0TZR/HPcJz3cBlOeXrIC27nuO8c5oICnT8rGq6cMfnwOaVnOD0W1Kx7azJecRFEy3yzHmZ6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746527395; c=relaxed/simple;
	bh=PwCPmltTTsH0duk6yZrf7NAmhyNxpme3R561+303xm4=;
	h=To:Subject:From:Message-Id:Date; b=nC6990msYbYdRWxgsRWx5HjafD7faZU7690VQi1raXSfmD+GhMfIGdvd0fttQmZ0TvFWnPOJysQYBFoLcUK/On6S4UGps4xh3syanf0Kn9zTjw39CUxNEad5XYAlhDVTcudswIGnXlP2twJoXKBhUHMnAeYoXIdnhJQlEvx/2n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFyQhiA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFyQhiA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBCDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746527393;
	bh=PwCPmltTTsH0duk6yZrf7NAmhyNxpme3R561+303xm4=;
	h=To:Subject:From:Date:From;
	b=uFyQhiA6+FNr1ZbWMy6oHo4M5SbBICgZxBxtE33l1Y+TRgjl7ZJjHkgcdVnRe8IWA
	 lTIxhJTUqV7JkYzm6nv6+O6RaLPe4+1Witmj7XVHXa2Bc36Y7UBlwzrcaG0XRYscXK
	 TEOYOEzPGlNHupE5/fBMuUIzbmMT7ZRG4r/oMiP5Qwp9q1UMpNBpmFy0SR5/ILbwlq
	 kvNWqY7WBozyHcJBxgrat0/QOKAIxR8sIkWgSGM6Ya5jxfJ9OkfkQpPgpQnoT5rDJl
	 XoAASvh2Z+Rb26HkGf0ljmko8xz+bBTsg1YgI3erOlvj2o3LL3kyYa6vzllbdEDKPY
	 Ph2ve2+xpPyOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA3C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652739357.3458.2835992511891425949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389386795382aa202d3af3e453c5ce5187be8321310213cdff20bc342badaaf4
Date: Tue, 06 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746527393
