Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541422572
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721007743; cv=none; b=f1es7csL1Axv1DmE9kVK9iRy8sk6Ym2RMC9pjk8C5ncTcj3H9jSmQgocERQ81sUrdE/eWoyBcHaUbsa95zRP1qYZd39kj2YVD16X1a7ecmMflgY1PFR9VnURJS0TRn8RkC8xhaXCLlHI7qW7QQOkwgAQsnd2gVmLvDFk3ZhaesA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721007743; c=relaxed/simple;
	bh=7oc2el93ANWf/vNz45OJqWEaCkOoRyfqYUkQpNBT8JU=;
	h=To:Subject:From:Message-Id:Date; b=mwuWt+2LdP5YEKj7Zod4kgr3upV/vIEWZS7TyDmn5AeQMg652e6IaCmZU1r4nXXjZrAp5yQgqRQ+Go7aVhH4STEt+YuzMHxLtK0/IIeD0dt8gvFjE3qjyQAxKKtEueaYWEYnl56xZ2QavG6bxmoZQHZBCmw/cblWHP4qcSP0ZB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvCis/eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvCis/eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45E3C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721007742;
	bh=7oc2el93ANWf/vNz45OJqWEaCkOoRyfqYUkQpNBT8JU=;
	h=To:Subject:From:Date:From;
	b=mvCis/egGFuE7gD8g7ewNWqUJi11rz6vu5wlFD9TXDcTbPUvEk5jc/gSCc8BUA0Le
	 nXiVqwN6CcZ4tqldLhmcqlJBZXKYQ5mqN73CieNvGujKPso5HYp0tIckoIA9DB9BEo
	 8nM7iu7O2Y+mzXoAnBGvzjqS0R9Rha3qBx27tXU8jzlgHzN+pnju4EpeMb6zl4VSQn
	 qTybTTi83/YutWmlRaWWtpd80CIly2WQhU4C8kt8qECByZ94dnIFWir+4l7ByNAPHH
	 P6Dgpl44R61wy9UGmSzWrzpYYMKMiCou1p8kdVSbnLk0mLiyvfwHln+G3Hkyaq8aEK
	 hihq3UYW0sBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3370C3DA49
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100774277.16048.11238121154722694572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4292dcb54faca4dc8300f2352eae702a3559aa08d94054abfd1434eaf8e42d14
Date: Mon, 15 Jul 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721007742
