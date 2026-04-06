Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B2D217F27
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775459734; cv=none; b=F4SZfpuviszLsXwtUUApzePdcVJGNi1bxYya6q4bYoocfdUHvAjRe7Kt57f5hNaDriWAjPs6nP/4N7pzby014ipGfQCaHBt5uXJyPoS0yEvS4KcDpcm9t1P/pHdO7i8qW3xh03NSLOXhG+dDSTEPYC8NmI2cb0DKcSXPw9wKJHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775459734; c=relaxed/simple;
	bh=SAipQCJPzPckNm+psGb5+KQK/iwTeb0utKjw0GpBTRE=;
	h=To:Subject:From:Message-Id:Date; b=LNofDgGOHEFg5/pNdCySduzEPI9AN7RqR5YStqoUYYh6YKYS/iIJFjAsWCc5wOqaj2l4nuyhLD/MQ/YkHlENcx0H1B1aVzxdIWS6ayQRvicbt2sc7RCrBag34TGPBvyZ846/x9SYaDITk5ctzX5+63lz04ov2oMmj6MSWx7FuF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diwuL8EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diwuL8EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FA8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775459733;
	bh=SAipQCJPzPckNm+psGb5+KQK/iwTeb0utKjw0GpBTRE=;
	h=To:Subject:From:Date:From;
	b=diwuL8EFJ41bv2U6qoJXs/j29IUysaZKNmVtQ2xGHUB2uhFvNwvhJHPdCfp/6f/+D
	 TY3teBG6URtRoYu9p7m3jRN8vjXht+pE7okCmhkZbASbjbCycSnwN00/hxk2t6gXr6
	 VDXQr9OtEVQRQfTIci1fQagHt1Gjf0fG//8Hn0YJqVZD3anvzD+jj5giVnhvFWjz5M
	 MNr1uLb1aGew44GYlzURgMNGo2+yaw5Wkkcj5aYo5U12X3aXMTe2jI20iivPg3lbTV
	 7/BN6OIqmBnJJt3IBEopphuL3fsZegp6WQBJSOeAWzQLz9EFObxiWY20PIMR9nAbvf
	 63vZedC9eQdyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34ADEF4EB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545973370.31212.15965588200369235711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29970586962de5c2a175e62f367938122b0f9b0e61fd6bb8a61f33a8a24ff42c
Date: Mon, 06 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775459733
