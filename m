Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A91817548
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749062394; cv=none; b=QsfxNKfE4LEffEXvyHPjv3S5MSyAo11PRnsj+OZP+NRhwYCiJx1ute3z17vse8YvwIGcC9BUhNX/rnNXK28BexXkNSuUQhaEJR550xiLf7nijkmE8sK6op+/IUe76Cd4sMh8Dp20FS3y+3fyd3jg0IwUqFwG9Jz6QDThGKkBqXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749062394; c=relaxed/simple;
	bh=TEdJaNK/38Wsirzu3I8EGp323LBApttigLPtck/VL48=;
	h=To:Subject:From:Message-Id:Date; b=JhL6uiGMEr0QG3mn35B+KocxCnFvudpUQBjdq9ktAaIDQbal2lFm9z1eMCnflg5E/1nDEt+JHLVGlTV/8ojD9/7XEv7bwb8syQe/nPgbOJJsFujGfjmHLUNSDzFO+HkCbBip39D7HYbsh+ME1Bx6M2QEFk5O/ikq7xOiA5hn/ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAX5Xtre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAX5Xtre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749062393;
	bh=TEdJaNK/38Wsirzu3I8EGp323LBApttigLPtck/VL48=;
	h=To:Subject:From:Date:From;
	b=ZAX5XtreIGZhmx6YK4/yQzw/SImS9yj7ADz2ji7GYdX9VhUTXoNMEfVqr947FEY49
	 nSfb6Q+eP3GkpgGwkFt7NAq/cnc7/U9X5XILd7suoCbws37TSc4pitAVP/tZUztARX
	 q8Y67mdJO0szjVNY11vS1dlGnGEu2SQpQ7Tgt2GNUQ3m9mnNpxJvJU6A9BP+GytqF2
	 pTt3HyZ+oqymxReBRUrX+4VJfgPg/18NPsBetTsPGPd47CPp9qQhQT81BLlt4PKBtl
	 c7EoUqS8yb3u2HFCKBSy0rRMNdKORqStAYBqiwQ3EeZJ5LXRnYccbik8kuhsb7IbNJ
	 KOdzK9h3oWyNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA3C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906239358.9346.15524116384200093447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c388deb3af6d33d437974e640070424a6c9fafc2896852dad65dffd1dc38cc
Date: Wed, 04 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749062393
