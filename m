Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393901DA3D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737330354; cv=none; b=VKfA3q9wn29HjGSvLVmGrU27rzMX+0CaoXaSPl83aGDwZmCfPaqDyM/kCsCC0+u0HSzuEidTPinfuuBD4GnCwIeuauPGAr7PP6fwLeepnAWSy0vMrYkI9oix6uJIY9VxNALKX2iX+DfusmUscgfmisjDKljS8TYNj1mnuAeq1PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737330354; c=relaxed/simple;
	bh=FqV8cnugHoXN9lebcArJKqxDahPInYI4BcJjKcQxvKU=;
	h=To:Subject:From:Message-Id:Date; b=j9xGTdYZ48g1DOTJudvdrmASxbu8p8MoLLOLBleJUd79g/qJ2NIuh2/gnBnuvnIarEvwFWqIWkbcNt9+5ZDKIJ1bBtwPsXJU5uvA4SdxmAq0Rth6n2B7+aVvztBh5U7Szm/7NeZlc5f+wQn6R50q+QboUPp6dIvQTMqM99K0ftQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLoS7lFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLoS7lFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4937C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737330353;
	bh=FqV8cnugHoXN9lebcArJKqxDahPInYI4BcJjKcQxvKU=;
	h=To:Subject:From:Date:From;
	b=VLoS7lFaX2ajld9LmEWp+zRLSvfpJk2Wk6tuw3F1+e7WjFB/BzdXM7BLHeiFs6QH1
	 NBCUuxxWVhlBbDnGGOhV4Ibm2Ho7CL3jt7BIMwcASOkfHJ9pZg4mt6JDlVBIejcF2K
	 ufNnapAOjHfLys8BZEN8jVf6zvshwv/rKRu0A6T/UR5a4+7V5+YcnC6eKk+Xud8G2I
	 mAxCBaDZ0Ucv/hcm8PMmDUbLZcPKIfKOtjzp6Oyg/5UYUkjmh5BvyOYs+Sv8DmbrrN
	 qFItkWgOdEkoQFTeummQ4h5fGuZ6xKl68m8Byz+m7LUMwqo+qYqcJhKzV0UZSDW/0z
	 5TyRjlBhXoz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC8C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733035358.27923.18273700410422604961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e14a84358e8f7f9ca05becb4388fcb9e100919d56b0b3269c0027b62d25c7f6
Date: Sun, 19 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737330353
