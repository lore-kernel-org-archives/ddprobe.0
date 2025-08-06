Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD1529A309
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754497795; cv=none; b=hwDlxMofIM+7WN5mjpOXyrOGkum1PX77A9uHd/02o9SWUF5B54p15nmfkRMZI+bIRe3zJcxlIW8kA6GG5kH81pkNQksJDqsqiSDquDIFj++NoUibx4GBzY/SwKuly2xomO8A1X47q3G0gTy1r4KjGKtle8vo1vLIdt4nsVMesGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754497795; c=relaxed/simple;
	bh=j6PrcMpRYYfVN1RjHHwflGqOXYOZBQre6F9eo0urahQ=;
	h=To:Subject:From:Message-Id:Date; b=tNcgIabgPqDAXWmYssBEDkuv8cBV1ukeSnI7iuCQX1its8g/eqlvaXmPEa0ASCzt2nP1IpQHQ91/szNlPQfZOe5Esl+h445uYD11AUxyte2tV7NiRsxzuc/l62Hlrl7T1EaJDbTtj/PyjjkRCB3oawTQ9QwYa1ch2m3oIOZTX/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni/xWLp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni/xWLp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D845C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754497793;
	bh=j6PrcMpRYYfVN1RjHHwflGqOXYOZBQre6F9eo0urahQ=;
	h=To:Subject:From:Date:From;
	b=ni/xWLp7lvflzLHCkx/aKSac9370kyJoNsyltc++P+wcIUD6V1f/dkIl0eKeOtwsB
	 8FfaMVakxi55PUBK0wSVcN6QR7i4GbX8ICFb/Amz/irRVlpR03XBaETvF8t/OL3dAg
	 qovAjC7fdd6sDZ8jnT2f/vtnnUMAMDMe4LKrdZmOMSkS66SC0RkPOluMPs/Zt4NB8x
	 A3CAjCgdgsZBic4IqfSXnZblob/mwWmsQ0Yjn8tb6c7EY2kcWMmlkDXm9xRExur2kr
	 1PzicwM9NwuXFwUdEg5kAH7nqMBML20grjGQf5j+1nixSgCZvHXVTlfFDxjzq1fjXr
	 b4rprUIiKFz5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F377C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449779357.31725.5228986898141561931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550f1b0ffef81d9def661f1577766abbf2509051fe71ffe9b17a1e48d8c0cac1
Date: Wed, 06 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754497793
