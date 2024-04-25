Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1FF6D1B4
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714029683; cv=none; b=NvnimLOjiAG4JDf92GJlIyy4SViWXUqjHdVN9LOxqQsvsbySnecPkVTZicLEvLvTT3sm7Zn++McPfhPFyrHr7avVmZ9Y2EX/KVcCSavPJosLJCkZZt1rtuOglckcenmyqyMwNUROiKBLCmGZaY8SsPo1szADANUoi/pNSKGG4mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714029683; c=relaxed/simple;
	bh=NNfPOo5oKOpeKayaCOwU6GBgemsaoQAzrA0BsdLhJ7Q=;
	h=To:Subject:From:Message-Id:Date; b=HOwgKrBoE6uTipBPxcF6yiOGqpax2MKmPvH3JNdMfRRp26u3ze4gSWIEq0PnqHN+4FTYnRa+FSaU+QwUhoIw6l+jAGiKaFG+nTdZlRoDUSxVJToQQ9ItpjBQa/xB6QRObMwDkJdXF+0cfTUxQQV6Rz1MWjzpxK36nBnhShtkUWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5Dlw02E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5Dlw02E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB943C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714029682;
	bh=NNfPOo5oKOpeKayaCOwU6GBgemsaoQAzrA0BsdLhJ7Q=;
	h=To:Subject:From:Date:From;
	b=c5Dlw02EWUl3gYi3DjWi07aLZqs+Rl0IwYw1N/qaPa/zua1phnQUoPsXSrE6d1aTe
	 IiLlmWGvn73X/rqDsglrAiFPVHu1eDmVcwU7tIqUDYqSyjH0XUP75I7vDtajGTWkXk
	 /649NOOdjOb4JiZQnDj/wnH+lGs2gYbu9a/468/6aRmLQ3Mmm2mrZRyUYYYJJWXi3d
	 tA5E40LF+8xih4iF8Dryw/1vnjou3dWrw5mqPHhZSXFVjJ5EgbB6ItF968ZkY86sql
	 5oO2yIQZ2TZ8jNkuW8JFxNPruCBgSz7IdqBSt29CKjsFFpn8P78oSf97Q0KgexeaiM
	 jGbMnHjZ4l6ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43B3C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402968278.3429.16272825468636099665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f682e6ab0880511e1d1079bdaddc41625ac70ba48be157136f4a7b03e52c2afb
Date: Thu, 25 Apr 2024 07:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714029682
