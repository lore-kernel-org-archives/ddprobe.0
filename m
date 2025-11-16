Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCD522256F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763295654; cv=none; b=ZuU+RBE1+vRfKU5ZNOiTL/vinkIh7DUF5ptqk0SNttFrYKsUKuAo5Jl23VoHoBdHwYx0fx8oSW3sTRdfn0tNRVifYUZOVJDpIQIrjG0HolPMP+uthcKhaddiwhonPx26t9bH2xg7IO1VvPxiITneR3AFWLFki8LJRfYagWi9+sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763295654; c=relaxed/simple;
	bh=ss391zmP2d8woY8wB3qrguXZm1C/iUnCeF4jIo8xzLg=;
	h=To:Subject:From:Message-Id:Date; b=U5C9SdWNVK+70gEN8rXMsCZCBr/ETQKpkffgX6qw/o+XVNW574AHS3vP7GgCKc0mXHBkku4bwvD759WyJYjHE89z2oI9aaC4RASZOJ+wCcD7270PAJv2zTCpr/ow2eypEcUY/wEZuVEBvoAgv7Q1X7217t8/Y3/w4x/OSAuTA4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJZMNuRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJZMNuRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7A5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763295653;
	bh=ss391zmP2d8woY8wB3qrguXZm1C/iUnCeF4jIo8xzLg=;
	h=To:Subject:From:Date:From;
	b=cJZMNuRc68yT3f9U7orbq0D/UD8QsAC9/qYTWHTnL5Hc1CwaJ9Ol8ioUgi0oXRJH8
	 A6QYTz8Z8dZomLbTnAhOroUfJtPKBWm7aJy14wKc/SxTtDlTDmBpBnFeRYZ+/74n1y
	 FhmrN/d1PDo3avi0BT3daBkz6cxhPhflu9AfBUKYnOxtk2sdaxl8Wg0c85/M/tsLRV
	 QOhMbrYjoc8kLX0Y9z8fEVd90TzgJ2Ex2Yfo3UMbsOg4JtsT1jbDv2aJhztzbRMA+m
	 R75ezX5/DAm2TOVzlUVYV4yMg+CKefulSEjcUEoqdzNyRMOsbCjv6tcbjXRnvYxvuR
	 5JW3guLpBYptA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D203CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329565363.23723.16973567653445007759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddaa6a614616054ced78d9c250fcf8bb3620cdd7151f4e94606bd9dec8012a7
Date: Sun, 16 Nov 2025 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763295653
