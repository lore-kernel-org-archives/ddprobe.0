Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228FF1805A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754458794; cv=none; b=Z97LZNzV2F+kjdru2RLc+CqtsvpZ8NPaJcoCQjWlkHeVyyoNrdlf5aSsLkUDouK+Xm7WIMhiiUfchpFEeqoA/WsIB4usK3gzS2cDNUmMCBS6p9Wafiq2on+qEiaGPBOl4mScTsNiZEQZeY7n5ZkC00panlLFEiiOEB1Zrz1jrxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754458794; c=relaxed/simple;
	bh=f5QbvWskbfJqndXx8d59vFeVO+k9KqrZ+cm5mXUfxuw=;
	h=To:Subject:From:Message-Id:Date; b=cLFg78OjAEG5QlljLU+STgFUj/W3/5Qn14WbfkiSxJuP/KXwtg0snkJYkL+3wmAUjdy2wIGFyore0MSMHDDdWOye95N5AN8ojFY4DulWizfNfGbHYpAw3R8c/JiV3Ywd5VgnrJApAYohap0tLr/HoTKyqMX02nX4hrUT3+Du7ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npvdSVhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npvdSVhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0081C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754458793;
	bh=f5QbvWskbfJqndXx8d59vFeVO+k9KqrZ+cm5mXUfxuw=;
	h=To:Subject:From:Date:From;
	b=npvdSVhktUR4P6PRv16qOwZ4H6EWvgdGYB8wvtI+HeQ4j3b8mBxshpMAXNTfjtn4H
	 vNZeuoRmj6ujW+EE0iqStqhFNMhhk03ZMbeczDopq3XktpruHXINP5GTn1gAndP1f9
	 l26HBTcIZL3ZYd20IhFIEKwFoIaWHu1U3Hokgd0fghMDEZgGSC9ZActnCHbnw5H1KE
	 KOqhfXTTa4H1yJlRG/eeXRjFV9Az3arEugCg95W1VwRXVu2BjNT/9G4jBlpGRmesYN
	 Md1KYfFuk1atcVIQhBb8/ntHNBtvYJU4hhNM5CGSGj8v+YLBj+XMsV+Qbd2WCpbmpZ
	 RliKOuYa1BBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90388C87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445879358.2022.10942634988108016663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a43281a23aac16be5f8f97d294024b1c5d1f214ba433485b08d5d72c585f63
Date: Wed, 06 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754458793
