Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA5C2F1FEC
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768434834; cv=none; b=dlEqH2/rzqBEkSzV0Et2j4slxaHbI8yrMZOOnW4xm5auGqeVW9kLZAgbApbtJhxzV4iL0TIG4CLLG1XDE1UFpqyn+jTzcpiFyHDsDakvIabeqMAa1HAX+zl4pyZmUxx5PjXNJW7MF05exWecRRmoolqKC9bOjhB/CvY+bskYk+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768434834; c=relaxed/simple;
	bh=IkYn+Y0t062aIcdEHVW91SWp8EmQrD1879Btc9bmmbA=;
	h=To:Subject:From:Message-Id:Date; b=SpkhorgvQ2cVh33CJsRXwSS5oEmiT8LjKTVCyXounEwijH+ebaETAdJTsiYmJcbV/VeKsNhuw0LgmlVhgf+kr+Yt2ARpnVU8d8rvxT/Y8scYT+KleOODtp8iN0HS8BON/eHvLX8A78032Q2EtlmpSb8Qj/fPi2v4+PXpp+xE4HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5vVOmlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5vVOmlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB312C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768434833;
	bh=IkYn+Y0t062aIcdEHVW91SWp8EmQrD1879Btc9bmmbA=;
	h=To:Subject:From:Date:From;
	b=q5vVOmlv5BhfuKrhr5TpUJgiheAO9qNEED594zjPwA2iXUDnVdga3JBarRpCEOJ00
	 FY52OlD2ItWF69EeLJzCZSxI8t6cjxO+b1CqQzDWW1mDEBbf6GyavvpPmy5pEdXWgJ
	 WZ0gKivDDVlI2xEGJW0NnA4nqvhmXT5Xm0l39CatvWl6PzqPgL8h9SfFu27q1AvXRH
	 41e9Op9hB6QlpY4c/rkw3T9QJK7t32mKK25e0Y3lMQeSHSUhgyel31E9GRWrqzgYKF
	 9HTI3FCIhZpnfPQhANwPNWarbjmtiwtBrJYsAQWPKz6dtJLeryADnW9InDdwr3XoWp
	 GPak/iKtHuAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C0CD3CC8B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843483358.2909.1761398130298831138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f97ee4d9f2fd8eb874802077bf7add5ca926403bfc35d78d1daeeca966e375a
Date: Wed, 14 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768434833
