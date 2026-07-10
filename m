Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381013939C9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783720114; cv=none; b=Yylvlrqx8Pj3KtyyL8qTTDZ52RWVnXHF6lks2TWkoI6bS+KiA5RXJvOOEdahfC3RgJqZz8uHJcqK/iI+d7/+pR9AG+68McuSC9tUxaUwsXCqojTewKETY22lAq3wbHYM1si5mUTCJmHiiZUpPQuEfHZx5eiVToLGvr+r3x+dKdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783720114; c=relaxed/simple;
	bh=saCDYucQ0skLrsAidV2Q4DOqhbdy0ic1EhPAuOxn6Bo=;
	h=To:Subject:From:Message-Id:Date; b=e3u4c+IcrkkQh93BWbDqqOH7EoFA++cXGmMnHSlhH8wxGXw3FhG7rF2zHCrwcikZkjPotVKUAmsfxefwTCDUuATRJRXZYjw/rzkcLd5t4mMAzIzSRWGZhdGcNpHvof9DWshA5D4b/d5Wl7e07KOUwwvDBI1raTTlMaJNdBubIGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zt/WhffN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zt/WhffN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3B4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783720113;
	bh=saCDYucQ0skLrsAidV2Q4DOqhbdy0ic1EhPAuOxn6Bo=;
	h=To:Subject:From:Date:From;
	b=Zt/WhffN7QTDL4w9wp/WeQ30kvxR4Ff86Zo017fMqih0ci0BVc/K/i2l6kOADKIy6
	 dzbeNdnzCcjnaytUBTTdn58KckmaSqEiJdYLNfTQJM4CbLP9T9AWNY+WJEcduTSQzk
	 2UFrtUfvvjqQyhO9TqlfH0/5NmcD7sc8OYS2XMSMpCnmprJ2as4Fmh5OqGDiekoxQH
	 0QNEKvi4AOPiLi9jGp/rjXSERS3IsdcchsWnOWQXjz/S6UQug2eujkMRF507w8/sEW
	 kWGini/Mhd9wPlD/oDHO/aqnitwFtErngcCOlmMNyLJmKzCCIkb5IJr5OKE1aKeCc8
	 +ABDcgOMa/oOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF1C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372011368.10684.6026229768093852130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8250f6976ae41cf809b0a7371a8b627c4034e5adba8f7a0f5e60438ce410f2f9
Date: Fri, 10 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783720113
