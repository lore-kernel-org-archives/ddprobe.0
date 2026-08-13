Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81151490C1B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786647034; cv=none; b=WYVeda+VUkL6WToehoGgtV7VBJhx/2e5YIRESQq0t99mAoLRTYt5RzmAUS7pQf2NIbUq2VzNDl8SiAn+hefLOrSDPiJTOJiA9OV9DRetMwkYXBPNnBasVz86zLCG+5QvwRjZG+ZplhdjYzylUNkmgvBL5gF2hMv3O71CwuFV/T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786647034; c=relaxed/simple;
	bh=kr8Caa7yIF4BVNqDwxgz3G2Tlt7zj/798YucASInIik=;
	h=To:Subject:From:Message-Id:Date; b=ZWURVW3r0fV4PILPEk+tyKjdzmC95hJeXdHJ84a1L91LISFqFROs3mTo5WAqN0HYESKHXa55YalhcuJ7KQj+8V8nYmqYMTOhS639UxPc5Ar4FfOTpeqpZkBZkEQ5+/XpGSBhMcURnwsk4vYBzRb0rEE804YlxU2sn4YFhXZudYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV5vxic3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV5vxic3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6DFC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786647033;
	bh=kr8Caa7yIF4BVNqDwxgz3G2Tlt7zj/798YucASInIik=;
	h=To:Subject:From:Date:From;
	b=aV5vxic3U/Fsg4Rcdp1bnWYnQsSOm988QW1cryhHeIP5H0/Kc5+U9TsWd0leh/pbU
	 uY8WqezwkNET+AiHO0ZHFXZmhdfRbNMVDcX/bQZE8E782UBVrfS8GaxfDbS3EB90dj
	 9KSBqWzf3IGz65lCTcb9di8q4p/hUtqRaCh8YfNXYn3lnXb/jucSTlg7l9L+ak9uZ0
	 OqWiRSiOotFU2kqZc4uLZF0J8oWSBVsifLpYdh11OcjmaQAYuO/G0J0BwddQ7WLaCJ
	 GT1xyz526uAF5LK66UrW3QlomhpL8whLqHym4De+LcZcoHRiQHHZkI08z9H+2oYyD2
	 IzG6Uh/erE1bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C2BC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664703368.11292.7639507405510702340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb082e74d19e5a3fa3ce5c0be54676cf6db1e08a3c8fb44f2fe61b9922f9830
Date: Thu, 13 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786647033
