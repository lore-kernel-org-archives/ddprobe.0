Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C101128816
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762274394; cv=none; b=dRn/fuL92wnYE/FdGnzciB3bqD+5EwBreKjIs5j+7YJXcZFYmuFrBbsT3fla/BZxnlmYtYNbHnbjDEz+0Clij05xv8prel1ptiLrnwdNyqejrZiwm9K89nlEaC5dh8fulTxA4IWqMqWgu/5dPaA5hWxZ1xVX3367Stb0BjX2lzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762274394; c=relaxed/simple;
	bh=gG4Jmw0pz/PsMCkk3biJnk1qJbvMb+GVCBnwob0xp6Y=;
	h=To:Subject:From:Message-Id:Date; b=WjwtWLWiPXtwz5V8xOn4HUS9L1ll7dlZMK9jLkZ3Z2t7k+H9+QuenvlfJ/wOHdnuxI7FWjgJFr2r5T4Rb4ntpwtmJX58Zu9BTbch2FxsXGrxN/08lLiKZ52KdNiJYSgk9GEOqFBGuJaiACnziSFfyw6J6V6aL4ZtyDN/bJ6Ktls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ud9LR/aH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ud9LR/aH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01DEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762274393;
	bh=gG4Jmw0pz/PsMCkk3biJnk1qJbvMb+GVCBnwob0xp6Y=;
	h=To:Subject:From:Date:From;
	b=Ud9LR/aHdHssRyQ0asA65ZcnoiXoSep0DYnY4QBNR1eTRe3ovMMDnAmsq/HIZHjGL
	 m4EVBChRT018gA8S3UnJjSWopRFqkur1KYNBnMXw+XkCiNMBFU1qbTvRdLoiH1+PNk
	 IKOzR8cCcgU2a1d1buqkIE10zKW7TU/hoScb0/sPULlMQDbsyfg+NdqUoJKNHy21PM
	 ytTD2n5DbPM3gtFNqTLWcBFkrfu/W9nnvCdftm4nP5OImGM1Upcsd8Z2WS4KOsNW8k
	 SECTpHYyCBbOVpuyqBkC0pJybg2hs7WelQ5Hhz1dDU1+yEd7+D7QiveOSMgf6joNQN
	 0FSIkJKK4f9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B7ACCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227439359.29357.17511011217778716210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ae3ff866f6c3628b3e803aeadcb4bcf8afb928beef35792cbff5320a0a9884
Date: Tue, 04 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762274393
