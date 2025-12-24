Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E07325711
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766579034; cv=none; b=QTWL28js3slkGaOtzuaQhWMaC+DjaoLDmbrd/Wugm59qRr0Ehc97lqud+ngM8pJteV/SNSu2Ly23qCpWxujXj6VmTDSXCXZ/kUK6xCaPW9OWHq3gy6tvazMGpuoyXesTfMx02N5+PigKAaby2MBtEWnLXWqx1Qh85dT0yIXW/zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766579034; c=relaxed/simple;
	bh=sSo5E5Am/w4x+x0Gb+p9k9vxMTqr61a3u7A+DKbERCA=;
	h=To:Subject:From:Message-Id:Date; b=eDy1u5gVRgYmaRqzur/0/nbiPU7ApV1IDLFQO33tkPGS9oIjTv/BQCIm10JSA1hvndqivaO3nS7Oov0/etqHALKh0leOtK9TVqs+ID+tjMU6OJIl5mnqSdjG/UuyAuxDEZKk4lwgPi0PXUsI7TQR+ryIaqu4gYv/IjAIBLXB0sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFbxOOk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFbxOOk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766579033;
	bh=sSo5E5Am/w4x+x0Gb+p9k9vxMTqr61a3u7A+DKbERCA=;
	h=To:Subject:From:Date:From;
	b=BFbxOOk429VIkEVWohUmSSLkwZZCCAptqXMWP7m34GPMUisbqBemPOH6VqqEpKf0Z
	 GhXTmuo9qtKWNfs66FpOGeFveSdy3xi7M3vpc0gFVb/XbWmroA/w8NQK9gFnOkVXoT
	 uAS3+gEFUyXjcBxbf5zFYowIhGeOVx5vqoaQI6Af8BZuWLIw14abBXjGMNsQGujGNn
	 djZohCNfIava754oA+NxGzlaYdkfvpIcSNzBfgbf3JJaSKZg8SwHCW1r3heJPz9Oik
	 178Qiy1TdApEfO2QVCaeaegyU9s1Bj+9JYrJOHW6aaCbVnoLRfIIP64TCtIuGAkQLf
	 cjFGOLIq4OPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE0E74915
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657903358.18543.518108309586922436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fa69caf64f006cfbb2123b3cf2b9aeb1d823b8288839f5c8722dbaa4ce5685
Date: Wed, 24 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766579033
