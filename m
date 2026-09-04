Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF603BB40
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788564034; cv=none; b=XyZiYPYu9sbP5hfUUhEgku2ag2QSSJyQh/QRgUjhTOJR3XqdK8gBHhuNS+HtxEjBBSiDHHYq9j7aU5u3lv08TSb9YAG91EY3WTEFuFehVuwSdwAgdmLxzGMA31eF8jBX9uGJLobhhL8h1DYOpxhdtkOKijiJJy8Fj8aTH8tezrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788564034; c=relaxed/simple;
	bh=mA6c4/X4BJ4nKfbbzvLtSJXj7HRIM0bPmwpMjTKjSp8=;
	h=To:Subject:From:Message-Id:Date; b=l0ToI+gBuprM3+Hzk98JIidgElZ7zKVawgx3xmg73AmD6C2tTNVVyF6trXZDDQgnopL5zGOtm+xsTvmNnj2gQhv8GHWEx0DR4QaH4q+gXhlsc0X13vbCgvx1SfLRHye0MGcjOnngKekQK3zCJzVBXgERG8ME1/de6yJdoJMGt74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhyEsi4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhyEsi4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6305C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788564033;
	bh=mA6c4/X4BJ4nKfbbzvLtSJXj7HRIM0bPmwpMjTKjSp8=;
	h=To:Subject:From:Date:From;
	b=EhyEsi4f85j4EFR3fcq8Be/wYTATKyXu88tvHYZRTcwcPfd5kLI/N6w/i6vijD/EG
	 UhA8ijPWKrjEEM1icQOIE/V5uROx1/JUbrs8gB9qfp+NWzyKLitzKKpFTWm+jp1Hyn
	 33lOC2Harvj+F27ulmx5++C6atIqv5qFUvs7vmwomv8nTE+HqP65SgHqwYXUyTQZX0
	 UYkvfuRhXsCYHn8DdnRc/d0OOOIHDZkoGtpGr/qMnqwoFMpl8Pfv02GxLlNRHtGu18
	 XKj6nmOBjsH/ZuteWMPq9BWvDfhoPaj1l25jXwDh/q/ENM2x834tK3bqyQBcfE/abc
	 64+PMtTRit98g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F9EC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856403372.3231.17705339306219309894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486fcb4337681cbfb58ea2b17a811ff60ef640fc2987b610600b290c05e49c78
Date: Fri, 04 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788564033
