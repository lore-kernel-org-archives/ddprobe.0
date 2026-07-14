Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E91130C155
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784066914; cv=none; b=lRak7PhImBaV2Y7DD+DymtazMS2hsCbuZpsypre8qlGbbs5RKTLMRYGVRdKZCWrV16zOWHgI2E41nK6GCBOCJ1xakmlFpfE8SjDinBidDnwE7/eiES2rKISEDEudHQQn3UUzLdWAcUmIr9eEWN+GV3a8v0Go3nR4PBgpXv0mrW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784066914; c=relaxed/simple;
	bh=nTS2DzDAYm5KOwi3zw/D04Hws8qTZRaBvGR48OvL06k=;
	h=To:Subject:From:Message-Id:Date; b=hz6neYlyyXjJ6LJ4Jg6wT4dfjpOhia/2yMoMkMi8/hzf6JdY3sOwgfq+IBqJWwepfYjP9NlUV1S5uf7bb0hp4Gg4LdyHQeeiV6ympZ0fYUY+gLvZMep5gE56C0pW6Q7zMPmohzPE5CLkh0obf6EHLVboJUk6FNlQWbJGQte2aPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQFxLAnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQFxLAnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F24C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784066913;
	bh=nTS2DzDAYm5KOwi3zw/D04Hws8qTZRaBvGR48OvL06k=;
	h=To:Subject:From:Date:From;
	b=UQFxLAnEwnN4/iOsR46t1fubu/K7eiLoHlS/Qq4HasboZmhmTcYoeZSSmYVJZa7lU
	 CGEOBMzV+YG4x5DEiQjLZ05/Ea4TFlGeRPG/gNmu41JfJV4FZ8ndxExEUjPxZ07ThE
	 rv11bQ8a7GFwt8bUpZc7phX8JOQ76fD3vA6Wul9IYZReb7iL9UQJNkdFCDlUNJlJqx
	 dkaVszlGMzA9lL0s/iJu81o09z1AHepDrStc5UyO263+xjIo5tagok2vz9tXJxp/pS
	 q14iPUX4XhbOfnqWJOP1hQLOfh2ccSDLj2oN/BAEYjXJunN4QUpWBQC5OlyvDEHDRt
	 0LC5r4QrcfUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D39C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406691369.22949.716547344359991611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26b64394ce87e33334e0aae460f04e7dfb70777ebd427ba0bb6ee4a769fdc54
Date: Tue, 14 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784066913
