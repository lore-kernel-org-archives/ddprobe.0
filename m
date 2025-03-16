Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39301C2E0
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742161196; cv=none; b=oPfiHQ3tpHTNvQEDUTKgPtNcOC7SfF6T0dMn/wBUnACo+NgKVZIsh+JNYA1cd+qLgsspi/bNsqOq2Con3lk5/nhnnb3U4rs9MchXHe28ChJQ/qiF4TGo2AmfzkXJHymZuMlDNS/pD1ul6tg7/QO/yORKub3QJvjtPSmsoQy63TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742161196; c=relaxed/simple;
	bh=nGzh8rycxlezREcIVYd2TNnXPdIhoauHDuTL8Asv3kE=;
	h=To:Subject:From:Message-Id:Date; b=Fi1nsR1nb37IPqOnGeTQ6wkozY/ataczc4boArohkUv2ouLNgUvpCQ2IZSv5Gq5QRLEERB7CXJyk1qD8juW3J9l+iSTCb5YHJY8qPuR663Nd8JPOgSXjDn7EqFCqOUnLJoSP8FWp38SNTIit7yNGlQdw7r9PulqkbhBrkK3qzFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOvtmVhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOvtmVhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17FCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742161193;
	bh=nGzh8rycxlezREcIVYd2TNnXPdIhoauHDuTL8Asv3kE=;
	h=To:Subject:From:Date:From;
	b=LOvtmVhFYVOfSF+0tt9jKZSIIEGSq3wBpbY6mDetT0GPTncc7ZnJ+qt7gYVFdVh0A
	 xdUEsAPdWrPsZxLdOf3aG0qqSXTmkZAe2qKj4qJ970+aRFHg5XZ4KYZ7Z1najMDslT
	 cthpGS+B2ResufDHltgo3FbjgEyWLxXIVfko+8Ndcijkpq7YNx3eYyjZOw1BTUgprq
	 xhAsC7oDHsOlINtV7wizpu2zZhNHhhVcji1z7Z0GdhWd0HakuNhyuC0UQaAK+rfhhY
	 fq43zpfgJhApwK60NGkQembG0RChM8Zi5bPrhDqI+t0Dxkf3Gs4WKlEK41nDvLdol2
	 zsu0Qj/vX04Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B86DC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216119359.13166.8973049577672359237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6d81914227ec455182a50bd5325d827e9a08c0310f586edc41ab4d1705a1cf
Date: Sun, 16 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742161193
