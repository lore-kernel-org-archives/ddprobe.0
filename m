Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F51B1A7274
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725998154; cv=none; b=F8E2MnqFNc8afGeGN5TFWkaei8r7fr9T48v7Qj7lYCqv+gjikAe9eSdMPNfN+uNz5fI9hvIkiDECg4HbvltjNZixl54jWzf1R5kdjQo/3c/CZrVBfcHMRRNo71d/h/Yi68VVuelzqBc6aYI2KyrUbC5O2Xb+sJkUtfJgM4YOoTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725998154; c=relaxed/simple;
	bh=3qC+ytxr3TEVdB00H+HAdgH+CxKEqrgAwjjsvvPlCAQ=;
	h=To:Subject:From:Message-Id:Date; b=NSMOV1UeLoGxyvBFS972bTnWeRc1piLCglFQp5sveT98iUW5Ey4BbvCIxojamo6Nhge1Y1d0igX6IbsYRcHbiWVsKM0J2acHk6gXNzHucW044mVDBzFz9oN5HE5bG/0pE/587ffnZrH3BBZAJnTAnPRiVjgjPGCiv6sziMQLNiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUD6ekQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUD6ekQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725998153;
	bh=3qC+ytxr3TEVdB00H+HAdgH+CxKEqrgAwjjsvvPlCAQ=;
	h=To:Subject:From:Date:From;
	b=OUD6ekQ/6mIjNFSLfEd+OaJ60P+esHxR2m1n1E+oGc3pJwfbBm38raK1gjj5tUGjW
	 5RadGLd2jsBKC4rUghjplsA9/CGQqhE9Lky/wmhS040kwDJnUFZapPVGkPQRpednkN
	 lsUsqX4wDsYfQIFfuayRu6nNvDYuLhvevAouciaYJeJRh0P/8paUfTeCY4BPrDV58r
	 V0iCT2kIVf329APmkBh17BkA3MjYKR24/swBVNvb1dJweBEzD7vaVo/5soHLq0arpG
	 W1gwbKl0vdLt86aYj3sJKATpwjYJFrKfUTi8SeGTL7+0liJAEaKszBEzZlplrvrp07
	 QVj0lkb51mRWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99414EDE9AB
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172599815361.1950.12197292348011179176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d06a5e7cf700edb12acb2c5d2dc62fd45785e804401ad80e5bfbe51ed93d71c
Date: Tue, 10 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725998153
