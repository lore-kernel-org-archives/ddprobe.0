Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E7A2E62C
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742303994; cv=none; b=HagcXmujClwfVBl/2G5MFqBKlN3/Zk6qjTX5wmR7P2gTRkBiAGCoq4bQhW47HW6RkL2FjsOUdOCXCsKSQFDw285m7jUFqfte62+SbBPz4B/4yo+55jSGCxiQeuEL8XCqXWY27ptOFR3sBpNUTQXpVC+qZBV5k7EDov+P6ihTN4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742303994; c=relaxed/simple;
	bh=sgNUM+pggKnqWzhbfcXMZJ/Ne2U0H233y0oe/OiuiTk=;
	h=To:Subject:From:Message-Id:Date; b=gwTNbiNPk6aCG1DrQFO+4Ot/W+BgG/14+qDgCSvfn6/cJ0umXQE/ahvViNMbUwkAAySiXts+rPV07jxZ13IZl/m1G9+Yi7trYiJ6S+04bkeF06527jabmRrbqtYabQSoolIAtyxPt8XI9QmKYSejsX41p/IXVbZPxNSoxdrYMfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3pLX5M7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3pLX5M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C17C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742303993;
	bh=sgNUM+pggKnqWzhbfcXMZJ/Ne2U0H233y0oe/OiuiTk=;
	h=To:Subject:From:Date:From;
	b=i3pLX5M70xIzz+RVj4EjX2uHtQZ+M3Zy9WbO/qI/E1BWikrL7Blk4Q88GErprQiHi
	 ha/4abHXVlf3t1zMhid9UPYnO+fOtvEh0fp/fKd9kqa1eeFjxj7irObkqyWLN8D5nv
	 mvWT7iYa0YYA4twgzttXttcFzAKivAzjGG4+WFilMDZ6o/bxCphCUGd01RGOLV+ggP
	 +xZIqtDJePyubyxXVyG/z7GhcA/UIuRpWctqgowAF7xDndfZkZL0k7jkLR9ypKUnj/
	 EonNsUu//OxVx8m9bnD79pW8sLZXyaPQ14J5r11qE3UNUNqp6nPfKUkbbGOK6+5Wsi
	 5mmtj26+85O4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD50C28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230399364.14147.16599868645117365106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7dcdde1cdc8e0a6c639e7a1e278dad333d9693bc4f8a3de9c5f2ad40091c7e
Date: Tue, 18 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742303993
