Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1793A5B21A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768109034; cv=none; b=rZ7Iobqw0uPrWVZEGDH8MknCaotJXb8s8kXXMV6m+E/aS29m1IRCdJUi0XxCrPDyrtOW96Av3iBo+GpR6MSyXZWSyMyozxLjz07kTOGsl1xf9sZ4HgzD19KVt5gTfjfCbAYmjXNGyl/bq6wHZpkihkm3qxpMXuq7OSRqTxlRpp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768109034; c=relaxed/simple;
	bh=LP0m6uhsM5jQY2R9WQWpOzYBROqMly4zJ3AEPfrKiEQ=;
	h=To:Subject:From:Message-Id:Date; b=lNqFlZAuLAML1V41+Ho7cpqdzrirU3OnLdn1js447EKvJXWMhA/nRom61ErCXosgHSwzs3uxtddaBL3ZHjN5UGsoXzsVtPtjtX5TMHJ/cCe1RYoMsY1GjcubyJS7kvrCdQXLIjhis/rCsgps4MYaYJp7cPj6OYwaTutpQyvqb5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nxxu7o4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nxxu7o4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55CDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768109033;
	bh=LP0m6uhsM5jQY2R9WQWpOzYBROqMly4zJ3AEPfrKiEQ=;
	h=To:Subject:From:Date:From;
	b=Nxxu7o4ffS+LQ5iswKYjZFE5FQHDrFkli2PvoN51gtid0x48+Hhp+TzyRZPf2nxZJ
	 TKQGz40BRbQKO75zGK35VyAwjET8e/Q2ZwYu8biZFkTSRewvExdvHuB4TzvLHnloZg
	 538qo2Qdh5FL9EeG8oAM07dm+Y74VzV24AnYck6+lhBoSqeVEPcK7DqkVXGR93ZKV/
	 vOYaXK6CW5SMyndGKw3C2JGmP8iQe+VZKFE5OxeqdKMf0fMM0wKWXCGC0iTsdCHdxW
	 Et0VsFDEBhgfZ6PjwC61Udw6AeOPJxd3RZzJ8lP9aPmMnuPwshKYxkzNJgMEl4eaxL
	 2BH6Fm6gIJbJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254ED25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810903357.13034.16249263206249632720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae71593f06e934c400f9049f019542c200fee2510493cd23eb2ccf1301cb7d9
Date: Sun, 11 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768109033
