Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6EE3A1E86
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770215034; cv=none; b=S3ioyBhpqbi5qDUEPs9lJZvPkeFsk9LVTBoIXAIhuQtQePFaZgc/HA/jQpRs5FRqwIIEpS+35KUifnP/4flr888TSno0KJEUjLwtvq7wWL+y8jS/1mUQ0F40TNf9lP/41NO0WpGAkz35WAJM9myJ0/vW6026Kh+9ap/2g2wck30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770215034; c=relaxed/simple;
	bh=Uv+9aaDA1kkNitIHP/c1/bjqnq6zIb959g+MXYfzhMs=;
	h=To:Subject:From:Message-Id:Date; b=oFVusQO8+K6k02aWrY8RkfaVUlf5WA1lqT0xY5x/LAxJcM8BUwshF8OCngFU/2+gxJDqbL2bBVRExA/0+Up6R2UizxbIDnhupFvpYNgONENfkGMSB2hikwsWNQHxmobTk/JdDNqtjX2PHCAZ00rrmmVfLixJqdoDwoeFWkT0Sps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC7p0N/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC7p0N/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E86C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770215033;
	bh=Uv+9aaDA1kkNitIHP/c1/bjqnq6zIb959g+MXYfzhMs=;
	h=To:Subject:From:Date:From;
	b=ZC7p0N/VKdrRwVpxC2uqVOCG88btLn/LTrpTiZRRMsleXUQHCoeUwyu9GgHnwFJrm
	 0t+9GoMPwFyfOLsMYGyySS8DbzHOUVMCNgdFWTcRxZ7G/Mjr5fADHOeUTz9U8BvULD
	 MHSk3hT+tqieMi4slkUaCFS+9vzjtMhKb6Du5TimLtijuSXauMMNQnqmXOBJShI/fp
	 +bsO/rIDxYtGMHalrBXWkeN7cnea8pmxDtT5pYVKBhBZv+fn8RntKYmamE0SF/1IV/
	 9Jg9WZDg6ErTCwAUmmlOhuLg+4EhYhr1tFD/A/MHCJ/8uq5NVYnwHiCGS8OR1oX3HC
	 PmhsF2+8lrELA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4736E9D3E2
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021503365.30185.14745677059063985000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8802a37a3b2a498193fdaa5b47106586a98b93ce98a6484740e2eac03d012812
Date: Wed, 04 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770215033
