Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1977E285C9F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758488394; cv=none; b=Kc7rcIBCoZBGkb5sgvmh8DAy8zi4vilGFn1Ksj64MnW843ad1cdYugF4QfI03Vii+PPzW3abZ7560MSjJrQT4q2RB8O3grInyNkfPXrqhi1EedTBlHp8PbWm4+PnyOnZ7yP4WfmfMLJvknMSKfBUgRLzrPJCl4QR2jBLAWDeLD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758488394; c=relaxed/simple;
	bh=NoCqBnsJEwK71BYY+EKFGErqn8ON+yV1B2uTGri5CuE=;
	h=To:Subject:From:Message-Id:Date; b=FpkRaqCuBy0uXCWCZO8xeWyJ+B4z+o3QnXhUXcOEA9y0bpr7XsSbP1NWzgZweJ+X3y7rbTNAUNkEwUZnAURifIwf5geIZvdJIpD+nUiGkM8RG7+dGCw9eNgGiEUWjqOwBat27SHlzJqfsMMQmg+sD0BFh908yLnHBCw/SntBPq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhQlTpON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhQlTpON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EE0C113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758488393;
	bh=NoCqBnsJEwK71BYY+EKFGErqn8ON+yV1B2uTGri5CuE=;
	h=To:Subject:From:Date:From;
	b=BhQlTpONtj8uLxwaPi6lSLecdq2FjZdWGrTR6M9u9BGiqcFUxJ+/k4J5pB8LubVFd
	 Lp740+EEYsq1XKvPc4z95nbpXLx9aYRFVTcQSm07Jatw0pSI4DBe32soA7x1zXbBGX
	 9dqWg8ZrNPL7u6TpdX/O+rIofNCGliqzeW0utLu4IQzDDwlQ8C2F8hVBiPq8KZXsNX
	 SaCEx4+1w86QiEmRB8Ka8yptHob7vJh6TY8I4Gt5rYrS1MKeZXNh1+BktQRUB22Pe/
	 nqTITsajwnScK1O1WvphkrBrtUJb2O7XLqjfpmiyjt0dBYR+xMJuDMCebL05LxW1YV
	 jatNpV8ks4URw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C6ACAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848839358.12805.13570446411549414642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecff6e80eb72ad4a18904bf0c94d38ab1e1cb0cf3aa4cbb593a65d02c25d95c
Date: Sun, 21 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758488393
