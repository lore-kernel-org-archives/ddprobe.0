Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0385E355F37
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773193494; cv=none; b=cFo+cdXljdpWPfSUdIhHspbUctFP5UfZzkvRWFYpAfO0fXg8u0UFyBWU9bU0h4kLBMjcYUJs2qzN/ldLQU686SizIpumxx4b2p697Ld4yLw2n1K1mvsI9RhFHxPOIpxy07QjskeMKAahML1tsg4ML2tkjp+w5FIj1DS6tDtL0v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773193494; c=relaxed/simple;
	bh=SjYex9H9BNPywly2LstIf8U7EtHzzq3h3EczhPS2IYg=;
	h=To:Subject:From:Message-Id:Date; b=qVRSN1KOU6oG3KNLF/tI8wUiH9zGC7+qjhC8kbu0qDt4IFw4nLkyEGnmgP6niPKQYnT/q69hdJCqku+e2lh9u2f5UOE6zgpPzwfjlnUm7HctlWrmL8FawwkU2vT7oi+NAkslhxsouURhxn2Ca5Wh9lr888NB8TtJrtvud4MQUwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCLmzYwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCLmzYwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1EEC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773193493;
	bh=SjYex9H9BNPywly2LstIf8U7EtHzzq3h3EczhPS2IYg=;
	h=To:Subject:From:Date:From;
	b=OCLmzYwjfN02y4OFmpN9WkfJTV2+g3PgZ/OoY8CujqrIgvI5oOIHDDdqSwFhyHJFX
	 BjNyxyovpVnFSsGaIQ0VzFFgeGLAM+4l/Q86gCh6P8jePT4geRaLd90q1t9Y1sqJwu
	 04qPkkA3aI8ARGzi2PutO68pRBcYK3fEVOTzzQZyXnUndkBvp7bxsPvroLx2worKw7
	 r4DP4lNiqe7eYz0QZzNZ7IptOngatYmdlkg5dzR+WMpm709zJqaWqQN9Ggm6NhJsK5
	 qGSLhqiMWWTNRI75xVCUvL7gfa930jpZK9MS7ZdPKqgVnjtwZ/6e22r8x3BICYc8RB
	 LZ6I0XfndGvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8CFD88D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319349358.19194.4269578296362322490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90b79cdc99eeeb5fdef07e1335ee867c9af1d6946dff872c948fb3ce2fd3802
Date: Wed, 11 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773193493
