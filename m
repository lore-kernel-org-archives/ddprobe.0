Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137110E0
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751735394; cv=none; b=VSW0aZPMjkNVQ8Ka1UWgk2CHhOoAmk1tjZy3gEht7W9bsaiOrwt+a+cyk3xIvDeWTZSJAFtEaaXTvLI/FyFftvm7bNRfjwz57SeuJFZcwa/HUyG1dZk2pZe1ZXIChNVp8iYd2af0sC+iiPDhJl6kk04iODjD11zlstUREvhnkZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751735394; c=relaxed/simple;
	bh=YuDXmID8oVAPYisFnWWg9/4T1N0P81DSihOlYKRwwCA=;
	h=To:Subject:From:Message-Id:Date; b=DL+ANiAchhoJ4nLQlHMYj9W8qrkJ73t9etJ4p9h56uSPTwH6ZTSEl5wpsQlAn9rAR9HtEc9km3/5nQZzbghw42cXNOwNyNItSd6roGT61D2mgCmFHghXztIV/E0H/QK7cIZOfX4C1o7DFaFca41zZi70Z1P19fFAya153HeI8ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXQzox6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXQzox6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A952DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751735393;
	bh=YuDXmID8oVAPYisFnWWg9/4T1N0P81DSihOlYKRwwCA=;
	h=To:Subject:From:Date:From;
	b=gXQzox6h45+DoSAbsT+1vKs+oHUZrKBORZc4ycLfIaEngGhzVGS6UCT6ez2+C22ah
	 fIFAjo1QP34MzJfCBJ8vG18wQg5mfDIRqt+raHNqcb0u9sOFKf2da3TTXidtpWWnSl
	 ijiAUOgFGmkJokZaIvz6uerhZJ9zruNvR67cgU/58vuGdnop/a65pPeZXrlxw6JAit
	 NaGmmTxgsCUC7YdzXWhqIIC/Yhcglp+z9OfNWjHEt7Pu8f2Sb2WWkgaNMb3Z02Thds
	 DOifE+sYr4LwAI+Vg9KEke1M0GI/MqVbPW4YyJef3KoVULfJLC9ehinozF98mkWekl
	 Q1ySddJBLIYzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7EC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173539357.27022.10367057173412559406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03e26aaa0dbacc06faae25b6cd874a409e18d3f03e5058dccf67604a8db3263
Date: Sat, 05 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751735393
