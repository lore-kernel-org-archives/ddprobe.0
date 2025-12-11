Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D71293B75
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765488174; cv=none; b=fbgpVuGpZind8/qmbds1MUd+BLi6pJy50/r8T6Bl1wHxUjU3v9IE0Ic9ZPVuFxJ7tNhzQaZWiJjGJW6roAnAufbednwnQtTuWBiQuAJoKEAs9I1PPhQY1/lcpLQPDx16o1p9/37Vp36KrgcbScQUZqdB7xMK3IWOf95LoAYOI+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765488174; c=relaxed/simple;
	bh=hp8rpKfgZo4FjrsXqn+R9+BwbQXjhXo7SifZTHxgh0I=;
	h=To:Subject:From:Message-Id:Date; b=lSITN/aVzw1QLb4i0bOgSgdYXwCtgmRhuXpj1JeyQHOnkUBmy02xbnkSyKw9BIszgVqpOMKsmtzAqfmR7qUR781l25qdNla3BgGJOHzjmI0oe4fTdxXEMCQwwnDXmOvlkmrSYuhuUTYoeJY8REaAWi9pQtKG6OZxra0uuZaMM9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2/0F1Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2/0F1Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD03C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765488173;
	bh=hp8rpKfgZo4FjrsXqn+R9+BwbQXjhXo7SifZTHxgh0I=;
	h=To:Subject:From:Date:From;
	b=k2/0F1YodOOsOjwTlJVHxJoaUez+78jAHxRE5nTJvXdREtNftoA2B5AZga+DIlSya
	 JaSJIkoWOC50xa/htmBVdUf8iq/qssFN/6zhzGc/vL41dlYJY664H7+0dwaHgUqfsL
	 0QubK/888mnuOP1ccn0ge/ILBOUrbmlD4/m5iVhyFozb5mtyAudS1mdiYXE2BcyI1P
	 +rCj4iXiMhOWnj/DloAtwPsWkuLmYFfQN1QDeTpaGdp+hHuagTQDGKz5lNcuCvh/d2
	 pcwbXW0PXlSIa4y5RkFGZPPBTzSsn7I5FkF3iz3LQufRjLeeKz/ALV2jBBpBfsRPu2
	 FssG7EEtBXNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9131D43356
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548817367.5470.9458503755165248929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb1bf0cb9e2be12423cf97f1557339fa2656f2e985a73ae64ef821fea7b409e
Date: Thu, 11 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765488173
