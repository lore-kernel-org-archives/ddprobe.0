Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FE6FBE5
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705758497; cv=none; b=RQwjUJzo+5KNCCamJMEK5eztP3D+82xjYGCvf0/by5cGH+aVhTPPuZVpjm7RCq57MNmx8czNyL7gekunzLET6ekp/9OBwBwr4cOCAMQkX2E+1wRibUUX0M8YWbWAs8WcMx1joj6H337yI/lL5MBSZbO51aBpMv6tmaPdTL+8eBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705758497; c=relaxed/simple;
	bh=3kAah8jPBmH047IQzF7lbqHOVtz1GVGTVfqWqf9ts+I=;
	h=To:Subject:From:Message-Id:Date; b=GIKO2sKQwgNO6QMRmRFWQQiPESuxCkAglYmY9Lxt4pCNjDcf8nBOlHiOqqgbpzCIzkGlAAFeMbNgAc3Zju1KQjIrUvzFvJNS6pkqszHg2lPE4YgDNiRbF3nfS5fYPmfGU9qsmxsat0NHmCG9EsgF2T6EDxoRgr02SN2tWwBFKhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lx/+o/kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lx/+o/kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DA1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705758496;
	bh=3kAah8jPBmH047IQzF7lbqHOVtz1GVGTVfqWqf9ts+I=;
	h=To:Subject:From:Date:From;
	b=lx/+o/kRvvDsFKIYm+wJ8lXqVCatXlH/bSTyDL0V+sDGQjZjorTwNPIrMo/qwFo3d
	 mmxYxkuumzNaHJqjwyRFJiEnXtNqt61CJ2wMIxiv41lE9BkZdNBOPtVNAMcZluNEVg
	 gxbv36Crp+sIp9Ou9NVOTLf7wa0zo/5vD773vhOFoo6DUYlw1ii2JZUAt/JOlb5cM3
	 +bzyBUGFEDgweAGSmLFmrMbYzzq13ilsymvYEWVs/r1llOfFc5Lygety8gQxJQ/ehn
	 9WK8P5tAhjMkF/Znft1+Jm9a1X3B+Df/+YHHsgxT0c+ZcUgb3p6/25SX3fX9ocSDN4
	 f8CVXJ2uZqFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AD7C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170575849637.17152.8221500333601029583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f8e937f966417e78e80018ca75b96ae60fc31c918b723b1031d5ebf2ab085f
Date: Sat, 20 Jan 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705758496
