Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF6B2045A2
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741097934; cv=none; b=YbwK2TYQBPEkpEMbv13MTLuwVwPXZTRx6TbAtH95cXmHl9kPhkofGbxolwcyvAwhAOlUb/QoEWiX9nXRl93F4U+yC3yhR//89yFOBcWn0pbhIbusEH+S7mm02fmlUFrI9F0wCKYiRY/DORrWdqfjFIfFVpVkGYw1xcXQqKamzqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741097934; c=relaxed/simple;
	bh=9juJkte1ObpnNqVMPs61/0KtAGFL6d14QkfmmXb+TBE=;
	h=To:Subject:From:Message-Id:Date; b=dQ/c+yo14sSjF8C1yU5yHyjC0oGTILVB4JOE51xZ8Gh9QpIM40DyD1MMsf1gzMKA43qA/sn8vElaUM9sq4ZK1hVfqdPsawzQ2uOxFJA1P9FXjaZlPDrk7t1UQtIhP+eMX83nvsDB1tro0KJqDnLJ/80zH70rfOuPYCzmqzoCsCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4qeRcI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4qeRcI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA298C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741097933;
	bh=9juJkte1ObpnNqVMPs61/0KtAGFL6d14QkfmmXb+TBE=;
	h=To:Subject:From:Date:From;
	b=e4qeRcI2Dc0nwTS97W2pYEFBW+6plrW2PphaVsmWZdmmmj6cXiJhP+N4rh7MMDnsG
	 zYYvIvbE6oGxg/bbloMSOlXm5FU5BRfYYTFl3CYidXs+FLoqoGyjkngGjENkYweRLP
	 R6tDOLkGQIUCEsdSf+DSQdhv6o470gmaRWIdd6Cft4eu9r+809YJDD4ZP5TLZuC0Nb
	 SPeuxHpzvd7dGykExjTeuIK7qXyk+hkQwIL4AAZy39vTgeBYDPhqIUVCKfUr3kz0dM
	 PMRoHGXLRmIcwsJjdZrUNIMcfksLFQdgmpLrQIGIhqJtL22FnaC8BGAJrXg/49O4rj
	 wMyrnhQDTXi7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E62C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174109793361.4429.4637112228516673431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cac517734f64014a07631479680bba4d5014d7c1e87959ffad744fe1b7c96bb
Date: Tue, 04 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741097933
