Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B2F15CD74
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740346734; cv=none; b=GTptNSSqiahtgfFCUVgwWQKTyGqaIvGHMfp0tJiLReAeyFXHE83tMI03Y51qcC4ssZJHLmqOLx7PZM+ks0l0RqnEjwIlPw/cIEqvziuDJ+t6XMesvwD2JAl8epxGxuLzuo2MXyuTGYT0eGR7gaRPTJwXgwMiXgyM7h8Z403pk0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740346734; c=relaxed/simple;
	bh=jms2fos8H7Ufwvd+HLpWSPE7mDqQvp4mOZSNSZA0PpU=;
	h=To:Subject:From:Message-Id:Date; b=iSc0EhkRu+/XC4uw4dyDbqJCCI0RaztjqFC9o5BHmxHMemwH/cQh14SiiWq77WkBHZWpJN+RWgBjfrLoqx+0HeAnR+VF4jM/fkRACBkWb/7E835hSGGOmMXcg0MOWCk1+gMFARinh1A6kggKlyNXubwHDFPeg9UhF9JuqQarFW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo6uMCkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo6uMCkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDA2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740346733;
	bh=jms2fos8H7Ufwvd+HLpWSPE7mDqQvp4mOZSNSZA0PpU=;
	h=To:Subject:From:Date:From;
	b=Oo6uMCkvLdkIm+0b14Px2o2sMFJFUP2oi28DvXf8wR9t0aHPSW4oNuBrPr0Tl1qPl
	 tclPKN7MnfXOMHZRO+5QKmlRdZIkHxfYD6q9bB7wpAweeubVbY+VRCX8CbJqK4fjPx
	 V+KLkUamJbBhlAz7r5FPcPrvRDnw/SqPlTxLzo0zxdaraP2ciHOJvwAPoqeQsrQ+Zx
	 0qjc3O8uizeV0iEKVmW/ivxUuAMpZbLpux/xZ/yrko7UyXRCTEm89tHXoJLSgnCx6w
	 JV+7Lwg8IvgHVk2KWxt6aNw8UOEjAE2sjKb8CU4Q8Z7HR7XJcrjrKI5iXJHSKtGhIx
	 A96076EgthZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9795AC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174034673361.7256.11685107323569876030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8340ae2ccf474915f4241bbdff5d7d96e681666eef0b7078953a91c826ef2fe0
Date: Sun, 23 Feb 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740346733
