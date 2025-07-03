Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2206AA7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751526596; cv=none; b=LYs7TBOEsD4/NjB9qioQLqWcr7vlJCmsXAGfGp7eVI9fbl/HLhUu5FduNCn0a2IU1cJRFsksEkQ+ipklbGNDV4Q6MT+9II7M0VbSgOaY4GW3+ymebHzG6sy8HrfILdLGT2WMBrH2vTjlIlwD0A8o8RooMAacOINZFpAHAM7T/1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751526596; c=relaxed/simple;
	bh=RTCTGmhg/nPha2QTCgHbFL8dxfMd/8F+vajU2JxXE6w=;
	h=To:Subject:From:Message-Id:Date; b=ltnG36vvK+uhpbD4KyfaByHAT0hZx1vdbjWG+XcOuOQ+SYhPLRnvY+BTpwUeEubS+l4ydnKrsLcPLX+vlv5Ss6rUU6V5O2IDPs8He9b9IkFI3U9+V6PrcBFbGhMA3I7IO8zRMecXzGik4ycSLbsMMzsfvadm2JQYalhdOOpjFeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCXl1eDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCXl1eDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A215CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751526593;
	bh=RTCTGmhg/nPha2QTCgHbFL8dxfMd/8F+vajU2JxXE6w=;
	h=To:Subject:From:Date:From;
	b=nCXl1eDA0Qybx3J03PoRjb1YdPrFj9qrYCeYEuW4Wle1D+cclMV0EYGC9peAJNxkU
	 gXoxbRQlPpW9ezw98KQQ4xGIwlr1IR+RX7fqq/VdXWWn/PBN+xG6rBCecHHIrxhXfG
	 bj61aelMhD6FUwXXIzS0NeNEWAiMJPrzRXqI3z7WDTg1rfN5TLS0zd9ULNXo9az274
	 KICBjXpSJxy74D9k+RJkmi7s6hBkPy6qohkWriIZ7GyvPu7kaXlwowdqjGVW/OjvX4
	 W1xQtBKv6JUoBsY40jIXI+WvCVGMRq521arDkCCXDV3N2P8ZMkCafhTgRwwXJSxwGd
	 Jl7CIvefWElZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F236C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152659357.7926.13641484692188865930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0849b87074eff4a605bb0343d73eff5d9dd84db28c515df35d0cee648a2c8b
Date: Thu, 03 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751526593
