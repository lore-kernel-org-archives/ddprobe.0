Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2191D2110E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766364234; cv=none; b=g0n59YeXkzugMMriR7nwwxFpRDJd84RZ24oC16I6lk0EaZFnv+DnuNXanasDuXETjePsQ6Bx/jSmTxGOg5xX6GnipaD6hGeW+iETOO9dQFVKcBXbFHVbLTt7/FzfcniZZUH3MqnOsddiIPwF3s80+Zp5v5Y+Mvr98NNSYWtZEDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766364234; c=relaxed/simple;
	bh=RTma1rTQ9hMZips5qr28H0Me4MfhoLNkNknqrxaW/+Q=;
	h=To:Subject:From:Message-Id:Date; b=nti2I5ZRBOfC/d5qPDf+8osjV3di5pM6XfZuT4ZI2pi1f1a9X7Jv6u09XLk0BKUuHz8O3eTQz9pcmQka7uocRW57eQ9vxreJqVqOBusc4ykwTIYwyBYU82YJkwbHjr3Z6wv6gIkeabDLPKPZOTBAta/NJxRvQWu6W+myE0jTIoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVMmO6ZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVMmO6ZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D1C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766364233;
	bh=RTma1rTQ9hMZips5qr28H0Me4MfhoLNkNknqrxaW/+Q=;
	h=To:Subject:From:Date:From;
	b=nVMmO6ZVJrOMvOIqYoFgRkWqQel4Wn3p77+BQFueL9UcRfeJ0cB2TU+AfR1KCfspR
	 XHjsJumixkmTFCpAjuJi21e17tRUXW1AJr/gW0JflVnvcrB9cVI50FK//lkLOsMane
	 InTs5IIKdhc1cTNWugqSOhca4RqgxSey1/trtKnIBhxK8A/WK+nFNhl5X1jWlf7LLd
	 5Ys1fKCQRSuPUd61m6gJirSeUg174IEfW0SnqzoeRguyCZD4Sx91m6cYIjmHpupQUv
	 eY2Bs54VkxfLHLw0pZ8iYEjZH/SFbhnfX9dNgAA4ZF8QkHz8LWwMVIglgcmS6KETfK
	 X6xeZotXKZTMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923AFD68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636423357.30071.10943754704344364469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ff14b34b37f6fd43f06b3b775e10aad4cbc609bdc42d2808222b8728b9965f
Date: Mon, 22 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766364233
