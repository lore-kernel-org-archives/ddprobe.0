Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9A327A107
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771068294; cv=none; b=NqNMylukNzWrMdOBSRkY41Xg2e6lU39CGqGDHMVNETpesCpSwa2qvjcEqjHiUEjnMnBwfXbKrkt+xK4oks80r8RlJitXbnFTjtqxh6B0sGd+2cHe6uvO7Rq+JPp3ZRFp5WXMTLZH3ZobcNVhtlLSMC1dgTG0npWtSEz4NGzWiUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771068294; c=relaxed/simple;
	bh=mITXt0M2Ne9ch2AX0vALemGeRa1aXKrk1WLQieYkygk=;
	h=To:Subject:From:Message-Id:Date; b=h5tWubcy3QqHz5ObWfBR2rhSf4bMZXeVJuAzZB9u/jEbNwyeTV3ac8ODxDgwGcKuis1B/16WGgXac6RAdrNK8lHSTOwgfKyZeSKLIHDnKHWB71+oXPMQo4BqAzeug4aNpIefdIY3lmDGDC2IET6otlPWvWflFLhqThrIN49YVRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ql+0ZSj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ql+0ZSj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB114C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771068293;
	bh=mITXt0M2Ne9ch2AX0vALemGeRa1aXKrk1WLQieYkygk=;
	h=To:Subject:From:Date:From;
	b=ql+0ZSj0ZGU7Chi1WH1E1Cq4BSHLBNix1zT7mNjTq64/s4CyiPc98bxoxgugrITNv
	 OjEPqofuuDniXKYQpgUn5Vi+/bx5rKG2bDYbyXC0AHxXkP5wb3xdScysfTUdtmR/tb
	 cgTDoQZtp1+Lb+n4er/fTdk+QlT03yC1Lo3NE5uc0rNn2uGs4B6XVDZufh1mROWREF
	 YMpLyR93A/9jUbk7DQjZ0OjUNNoYIYmQZDWAhHZjNy2lfVdByzTn6K+P9dDMx6EdLe
	 iXh52KI4Djokw7wuo3oCGU58SaFTctBe/s32coFzyrRdKY7rI8pRnDAeCxSexAkxG/
	 knJYT4Cy1ZFwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B3EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106829360.24341.8642127839233701999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13bdbc2d1f484413f20d1e881996ee91e411814e46072d7a6d4975d133c5cd86
Date: Sat, 14 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771068293
