Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B5921D59C
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746007194; cv=none; b=H30Ylw3Bl6N5uJS4n8kH1VyT8yd2sS4eJsKYzwvLgR364uOFwGH7F8Ki+O59KvG4aQc1QX3CcM5X88+aJTEN6C9uM7epN8y+bokdS8HLh3PfsoT8kG2ZlCBn0dZmBVXMoIsJpTZzcC7Hhz+nezC3e0UGPVU23OQ+Qnsh4OOWApQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746007194; c=relaxed/simple;
	bh=Hv2k/y/dSZJ66UFoDwGSfE0v3zVa3Psn/vvH4d1pDus=;
	h=To:Subject:From:Message-Id:Date; b=VPCWazs2v/0BvFuS001fX9HlEkt6ut8788VHY2LHfqj3FGvDO9/xpf8/SuH8a72SFCBGhUdPx8lacsBmPK/kS/rfqKF8/WFEArNj7zQCmofFWmom6b1ft/LUw3tvm2FRUGfjVzV7mh8KF8S+avE+HQymz+swgd5QUH4b9d1PLFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUpN4yjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUpN4yjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B57CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746007193;
	bh=Hv2k/y/dSZJ66UFoDwGSfE0v3zVa3Psn/vvH4d1pDus=;
	h=To:Subject:From:Date:From;
	b=hUpN4yjI6aI7TWLYMqoVFuBJdZqjl44WqMIf/RafmersedpNYpEZXSNbqcoufOM/q
	 iRDedfBspDUH4ZWvQpA7BRmmBmMz5B5M1g8CibMY+qCXjX9MEPzd6cAryvhAO7mcQ9
	 P+DYM67unPNMlDfC7l2k6VcdZikIk6WaRODJnl0WSe4DeJVu9PaRYmh2SjP1PO2rnZ
	 D5/4p0bbrT7arOxepSLGVxGhG8vqmlm7iYfRi/IWkuChMcxun19PXg97a49EZgeX2j
	 lKFPt1UsSShOymr2pyJX0ZXpzqcGijtCH7tkR4hK+XBwnKwdoqs6ZixkRzTLAUqZLM
	 6BfAI3JOYZVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C1C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600719357.11225.1711717372107021490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35aa9852fac88ad2ad7e5b41640acccb22eb5f13ae856907170a38078872c12
Date: Wed, 30 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746007193
