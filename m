Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E6B2459EA
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759091994; cv=none; b=NGMQLUPGSl//dxnad4ocgwhZnoK6RUKxO22oor47K2P7uELI0RBvSYiBYxg5FTZcnGrd9VcfgC5ofGYnm6NToq8YkunFb6pxnVfNlTRnCKv30rOYsQoxA3fVnrRkNkcowwLRRz2hpo8I71AJkY7hXnRGWiFr5aQa2/VypWQdQO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759091994; c=relaxed/simple;
	bh=0SvvRt+qTDmojRO2ikxo15iwGCOuw4UXepkywhgZVJ8=;
	h=To:Subject:From:Message-Id:Date; b=Vyvtb1gNDwMduRmIVOXBcT3SOpF3bXvS/PJr0SKpBGVnkDyS1oTMu0JKnDw2dCNv9QhrTfwx15z2hupfIxSRpDC5FvykLCedbwj4DPAHcXinS68CrWgplw6471eQKui2rEJpi6oAqkwr7M0QMhkhxzZEP12dVIVUYf7h9TKMLh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeMS2/nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeMS2/nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAD3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759091993;
	bh=0SvvRt+qTDmojRO2ikxo15iwGCOuw4UXepkywhgZVJ8=;
	h=To:Subject:From:Date:From;
	b=NeMS2/nr+L/oJYwspwHzvNrPitC7KeuaFdfMSuL2+aAfvVjbNSHtrgvBuc2ck9cwA
	 yTKJXdWhJNYIMkUSGkryzlT/kB/KaCiwYkpIOyk8338DZM+dJ7IcawsK3TC1aqKmhP
	 GlnSossJZ9/e7kzywojaopdxTmZzebMQH+V3CQxAuGzdOth3yjUXu4hDrDC4jbfNxQ
	 QqypvNOaDmwlVJrIk4ImCezGzwou//BNsoISG52aia8ubyHtOLsefj6u/SiNKPShIv
	 +OAnNHIyBmejfjbbhzJ5XLWpzRewNdLuTQrx1ts+2CcrpT6Kvzdw1nQP+AL7QxfYTR
	 WvKo1RDM/Ia0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995ACCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909199358.8919.3546662322672208610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa34c0c9ff905ba1128e66b456b265ade68c5e7a62374958b08edc074360420
Date: Sun, 28 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759091993
