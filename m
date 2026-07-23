Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDA93E638C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784791175; cv=none; b=IfvUNbiG0kohnxhD8K2F95lDAFbeiq2lE/EsvX9voeGZBB6Cos8MqUMyC+mwil/wXJY3oJEIg7blGVu1vGdtSqFQ6rsfv5C1teaLEWf22QeDu25ANyYtkUYwjXQyJgteJfaFQEH+7RbvhKyxbKK9rF47NrCUDi49FbSxPs0IbZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784791175; c=relaxed/simple;
	bh=wU7B+qp03pkOM5K2lUMw/OTVni1ROhKyPmU2OBEkizA=;
	h=To:Subject:From:Message-Id:Date; b=MzTSOL/X9Szhi3iMxKiJ1IasvBqMI0bIJBuOI4vZ6UexrKaScAn5C66eA1lSKFoFcQRDdAfezYMFlj+PnyipIwvDZF3pa46zFKJISi8fxnsqYzrlJ6rzghYKHHwX/1bfQe0Kgtee9Bo+fehWy5kAVcu2ROJjGrFHkRT4Z+gTSys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOE9qYsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOE9qYsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5338C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784791173;
	bh=wU7B+qp03pkOM5K2lUMw/OTVni1ROhKyPmU2OBEkizA=;
	h=To:Subject:From:Date:From;
	b=BOE9qYsxuEXwtUNVfempxZmOsszHhmsxU5O4pbYEiO4xTmAkh83enaFFsiLL1L1MC
	 Hbn1TTMQD/IaZylTQYVxVU2nZx6Zz8KV/yA/b2Tz9t96hGwVe7zI5TGSvl7728shr6
	 gUjdqIoUYF8V1u91M7U8YjkrjjOox/fVSnT9zhIxWgVC4LJa3TqzIRf/5d78DDP0Eg
	 a/aPoY2Mwtc3Fq0NHab/SFQwdTLiEGHwjjJY7RUyak1TRuwI5oElslHOypxRbaeR57
	 x2VqNwEE7FCniOnXPhmKuku+ScZ+GZLMae20bSmadinhFfgLFfnFQ8XnTgImIqoW5H
	 k2Vx7ud//50/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE780C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479117370.6135.15135577092636590012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a4deacd7f9499546cdccd677cd0a6c7d1f0e4277e4cb69c50570993af8b748
Date: Thu, 23 Jul 2026 07:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784791173
