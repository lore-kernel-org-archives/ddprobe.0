Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E3C42065
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756635594; cv=none; b=VX7WHm8VaVoVey0PR9RICOVU1UuOAijJbDWemxZRkq7WOWgx2lYsCAWqXqLgfUavciP4ySkHE9iGKyak35840CAETLtuYhFNwc6ttpY9LOrT3M8LPlcwPvweQZc1KC0fIQnnbgNu2EjWgSaJ1o3JPLw4ZyzB26dAr7kWHp4j7ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756635594; c=relaxed/simple;
	bh=TgGcEh3UhXyjt/b/4vh3XZ9Ri98w8dxDwYuyeA0aqjg=;
	h=To:Subject:From:Message-Id:Date; b=QWU8dYRGRTlCpg+lJ6hGVIi+3Ic0wHcFBUE6bgRT3R41gx6TUMqhiwFfxlzgIKst5QvpxRNl9411bNBrBMSof+vA1ii4KQJJu2Wm66uRhomBCDYPknbo8LMPQcp7ncqxRZX7UBzQ7mz/kpPQKyThKtdcLkzMoDbDO3x0Xk2I6U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGzwtMIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGzwtMIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EADC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756635593;
	bh=TgGcEh3UhXyjt/b/4vh3XZ9Ri98w8dxDwYuyeA0aqjg=;
	h=To:Subject:From:Date:From;
	b=UGzwtMIEHJHyePqQFM5FQLN92OJeUQjXIe/gtBwfyoWRU683x9216S93Q+NGbkQdS
	 oy09TQEV+t6WQAEc7BXHCLVkGe4P83NHdllNt+wEIOU3rM/zTfGCRTvCxlwUcwGSws
	 S8vhYvF66LpX26TjE2jAACXY6ltmtnckZG/t2s0cnHThxHnFYODmkOC8XiZXlCj14E
	 NbU98ZpRcewhyAEekzGWvjJSnPN1KQck2bhJmZuiqHUavi07oKAzZH0yeBYltBiiS1
	 PCtM/rov1xN9szMdyZnuNZxG99z2dCCmJTAgEqzgwmtYgCxM/K18kkCcq/w56ruOSh
	 l34Gbd1Orna4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F5CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663559357.10401.5593501920739758822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cc334152dd9bfb363f3f82a02a99309bdb64307471e8e3582bda2803a08df9
Date: Sun, 31 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756635593
