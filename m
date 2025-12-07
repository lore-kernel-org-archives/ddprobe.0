Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF5F17BA6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765116774; cv=none; b=otSlzZpj+6nVvEinzewBrTqj5rLV42AXmI2CMM1rUtT4nD5rtsXirFp7EY9GdVdQTVDzS1vMKI5VIF4dy2YkcXK0x3x3yssOvSWMLgFs46wTWhXcIc7xkBhrAQKeDG3ui384klwTAqFpnsJ+KtclqX3TwyLFGrW64ztl22ps284=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765116774; c=relaxed/simple;
	bh=5aFIS29ciCkmgs4tYuQEQ+CDk2ZGRYYBl1gIHp8Un2k=;
	h=To:Subject:From:Message-Id:Date; b=SCLE+9XK19sJ7+vW4Z7tWNfS2E0xy82UbZTUM1XVWOgt9Bedg8ZyQl+/5uSZ3+lr6mztjsQrv4VHqMkd5fBe5k8NM3S4PISCEgLgmMUfXdxAHqrU6krQH6eCdglUx9iMyqPXbqeP3Nuu6Fe8puvPrDno47a38jvUiDKcd5FOrDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2xQXTaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2xQXTaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAF2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765116773;
	bh=5aFIS29ciCkmgs4tYuQEQ+CDk2ZGRYYBl1gIHp8Un2k=;
	h=To:Subject:From:Date:From;
	b=t2xQXTaq6pwCOnl9ekquSvjNvo9Ww0jrVhPqIgPMXKi+G2DlbFphpLOdcdt489E4U
	 D7WXGag1FnGNbLxIBtRZA7J05ZPQ/OCKr+ipS+5VBhU8UjVrhBd6UAh1fO8BxcQGdl
	 eSaQ5eRqXZOOIJqLG9SvJBwDl3SLzqIVQssN7BYdpWz5CUpMleYpKIDw3g2c0NR//z
	 TYE3TB+mj6mosdTKKVA0CAJ8oqdZZVKEMbxkM1l3aMCmwkScq+Mr5HHeM96fFKatYH
	 Il3U8tJ5sPbzKJ6wSKU2Azsm+9vkXWser1epTgiW4mOwfLdakMUb+pU2QskHOycLap
	 psMwFJ+lM1K/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97991D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511677359.14637.9489875924189536709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac63c2e0e0f649f24188be234dea061290a5f5a50afe086bfdbd151ebda7068
Date: Sun, 07 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765116773
