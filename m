Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BB732C942
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774598094; cv=none; b=WaxiT+yS/xE/VR3JjpX0PQssCDcSqjH0eJvpS57HrrG+vxfjDfmmTmitv+kx6d32TRpnAzHQU/tvLYWnGfMYKkLV7+OGCtl2tUqLd3A30dmS9qevCjH7fusJ16evd3nRAy7K/au2D3K67BuZWnjPO0NVIPdFXe5U3q4ab2jM99A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774598094; c=relaxed/simple;
	bh=Y161wRw3Ab8baO18UagRjlz+3Ydg8JdGVc35q8eyxek=;
	h=To:Subject:From:Message-Id:Date; b=uY5ry0qi+vIpCYiPbgTTrUHP34pzH6quTyfB9lgBVrxVJHme7eEogF5bTmLpI+9EK8mBDbPZtrY+BIlEdfE9mhzrKNtPmgMBLOD0NOyYJuXIYXdQwrBg3VQkciOHfOENt4yMVKR+pq2hv3B/laJeA7AatiM672BhhW7TiRKN5ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYtE7cA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYtE7cA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A381CC19424
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774598093;
	bh=Y161wRw3Ab8baO18UagRjlz+3Ydg8JdGVc35q8eyxek=;
	h=To:Subject:From:Date:From;
	b=cYtE7cA5SqOshG2NJwYfhMuC9jyuF8jEOE2AdfJO2tOQP4sR+wYKgRjiG3NLeuX84
	 xmuoFgbKo4IuRUC+ATk1OoBaB30axVe7tJwJfbLNRk1oTObHSu1HDrud0xBYX8JPTj
	 uoRIIo/j205dBmYlKlrCiqnB7R9G2jGS+WJcRdL17GQBNa2DyFV9h6QWbefTXZxOEs
	 ONZWoGhteKyHqpTLjj2aGgZ4FZSJ2bvU0v07nQ8+9GL3DYpwnsSRgo6vZM9I3KjBOk
	 hwWigk76QpSYLYV7oGLBdOaUwQ7JAUNqkxA7eGYm/L3QpDT5WmIAKkw5/jZwgffobi
	 ScIrLQMJZNwUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431F10BA435
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459809359.21273.13046611524104958719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb22d4292e55a235f140befeee6201b4df0ce96d9cefd6784b1ec9cc0c1a4ce
Date: Fri, 27 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774598093
