Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E9BCA5A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745794194; cv=none; b=I2qI/7JabExDxFtWvq9/AFDiMuTu8sbm8CYcc+S66YT6k73PnaHCC1I7M0C2FRwSxLvA8DSaEn2eQYLCXXdpiZMSbYR+MmlvaKR+Jvy3I9avelf3ESF+9aZiMItJsjuj2nDng2xKOYHcJWDcRc8TuWWNOr9TjPD89bwoli+gmDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745794194; c=relaxed/simple;
	bh=fg8eLDgAmL6v4xqyxjsy72Vdq7j2gwMjf2CoJ5yh7XQ=;
	h=To:Subject:From:Message-Id:Date; b=DBuGjE61j8h678/mIoW0a2ghvKO6qNn8Mch9hcTPT4Tru+pIDNDOtdtUf807QvG7Xu9FAZex20qO/hi3uqscBBe7UNq0GKUfG8CBmycS2oAY0vVgmnl3gkftI2M5gy2AAxjLN7lJ23dKa1x9G5l97yQxEtb4lzD8/1tjdfHQ0yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAcf3cm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAcf3cm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745794193;
	bh=fg8eLDgAmL6v4xqyxjsy72Vdq7j2gwMjf2CoJ5yh7XQ=;
	h=To:Subject:From:Date:From;
	b=LAcf3cm+s0co86sPlYEFtTJUCzTXYCp0wxM3g1s8hmAbB1M/qqiYovRZRyjzZBjSO
	 xwRQ9IFuqZrrPHnBT9qmx+wWn9dnlfcu9gb5OKlNt5DOK97ESDhv6Ff9kw0i/j/fUb
	 H/i4pCOr9ymOWRZD5bMFrPOaC2Qy+w6d5Y9NeSTuuZt3U/XLXdRtamEWzNxTX8CZK2
	 0tIGWPHEqrOLZ/vk84M39bhD5jk2LMLbDTWap88/7ITlFdkw4/nTwNwOmwlZ8Tyi2g
	 4kaLFcz6ZV5bOiUvDXe4krMUQYQodm+aqZApoXmUUZ0lQut1LtPiLUKN+wlvqD9TYz
	 3yNW7GDTFXUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB8C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579419358.7325.8095273910350049532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7b5774bc54bf968ca4741d0e1fafe507f76b89664ebebbf4eb08fe79470dab
Date: Sun, 27 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745794193
