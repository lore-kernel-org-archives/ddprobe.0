Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BE0238C1F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769708634; cv=none; b=nwEUP1a4r6bjVUcUvKhoTb9fp5nSZXt8+w3kUFdhqQM/j7t6KpfRvQZuaJV/uDKqruTr88jdYP3cN0spcvi6A3z1x40foTHLnY7M/4j9l1Mv6syEYZEsQ3dmyTgV7LhkP4pCXaZm3lkA7JKiOikp0E20fK5pFbhvCz7QqLKcvRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769708634; c=relaxed/simple;
	bh=TubH6+hXGfkajXQzKJuFxVTQ/ltdsUCYUnhw5H7OVOc=;
	h=To:Subject:From:Message-Id:Date; b=qJg/fsC3FpqVUnM9NfzOxfq3fbtj27qIBgGNWxNQR+euPPK8qT3SSEi+7fe+eaX0T1+FR0zBxaxfohz2Utt5lel3B9DRqHx6X0d8My4fq3VtglZsqTbkLzUcUDWyo9wYM01gEp2BIg80hvs/Z9zrEJl/d2BprFa660HagDHYBXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufjTY+W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufjTY+W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769708633;
	bh=TubH6+hXGfkajXQzKJuFxVTQ/ltdsUCYUnhw5H7OVOc=;
	h=To:Subject:From:Date:From;
	b=ufjTY+W4zvSVD+/8bMgdbfNyeev4BPp602fjsnFjeTakYwLiOhw27ZlaLP82x39+a
	 zAyzl+aTvwtTvnl8FsPOSBDDE6DR1tFkIAOoxl+wh2cuZXpA8iRKdwUlVbgmbrHGHI
	 AmdAsR7A0Pl5CH+G3jSFSxqSlG1CaO2q1rq/XSO23q1idtmnxcMDLYqKRBW3n77WZS
	 RbvC/QRWJC5sbVrQedN6jKtPxLtO9uAhymDsuQNlz537z//mXaLzQvbCKBHsLiIJ4W
	 PYclT54JdQ3+FVn3rhrlo5QcBkfQSe+oH0iXHppvAD4J2FJCh3pIkG1/XdvLARtMyB
	 0UAN7ji+y1TiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA9D73E80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970863358.20388.2109549555460445842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd35e7974c887831efc7b4628fd8060160c5a77ac67cac7e9711205b74dc2d6
Date: Thu, 29 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769708633
