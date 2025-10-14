Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF8D24DCEF
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760468994; cv=none; b=b9uJ1ErA50DJuSUvLo2CxzY4vL9GlsiykgYKh+0leywqYYoLhfVx4KVjArUgvhqEaIOHT8QvFSI93Jkpe0KDQp8Zqpd0IDaaMVikAtdUiDZdxbL4YyoXqCRTkCJ9KP3GX98yb5om3k2NCyqPic42chx7lHZ6mdEAqwolCfKmw2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760468994; c=relaxed/simple;
	bh=mQqAdfuDpxTEGVQkxh/v/nRO8iqKsSDLS8s93cFAUSs=;
	h=To:Subject:From:Message-Id:Date; b=PLjh1QD6+TxfZ+2w4+Ix8fesa27bQZC4KZwf0qucoUHbJ5jYY11IKn5KtLkPc3sm7jEXS49ER2CVSLuPJXRK0mzorksujSx289KL/oZe6qere9p/l4VZpKR8TECnQI7oK3+4UiG8hqfZ8G4Hn7OBrgQ/uhA8sQTyzx7pfNe5aSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q59MWAGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q59MWAGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DECC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760468993;
	bh=mQqAdfuDpxTEGVQkxh/v/nRO8iqKsSDLS8s93cFAUSs=;
	h=To:Subject:From:Date:From;
	b=Q59MWAGyoPszEIrcYjCPoQfFIXyZLdWAy0ED3obbiZEH2Dvic9HdTPqRXrKifAgbZ
	 zjp9wfgBycQM8hERYOoToCliwSnz6tzj2LX1kbE535m7pu9yh8qSzsLbcElfcl67Yt
	 L45p19i8srfvYVd4n5XIOKKqzVu1rh/rpWd3+halZ0ItFgwiFwQXg0pt4iwBnw+XT0
	 Hs6JfMEL3PyYy2DC8mVQ9HtkTVEEkCybSgZRSgNZ31MgStEmq3c9HbggqoIx+1DFOP
	 GUl/o0mXCZf9VvGrdiZxEbPEi1XEAHpAk3Oa+ROrz0LWhQ9esV7qG9kvc2q+0E4Imh
	 KuKgptuUwUhxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062DCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046899358.26900.405348476971027841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b624ea18460db2945f0937a86a6d9a8b65352d5f5b1006c59a40e6c357b5e07c
Date: Tue, 14 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760468993
