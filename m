Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC1923EAAB
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767740034; cv=none; b=jHo2KkEuoDGeODTx9aNHNngZZwHfx6lN1GzctuSJegD//cLcD0W0jMEPbqBu7v5RA1xezlbZqLYbj5mrApZpgkJRo3tjhK3wsnqRKi5rvUS8LVFsXo3HW98NHj75Njh8mlU+SJA/QtTyDcj1jlvban+R0xjCnMMKSGTbVNzJvZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767740034; c=relaxed/simple;
	bh=+5Ad062roIYLJnRq+KvD/MGCqS56XL3S3rwqyyoLmUY=;
	h=To:Subject:From:Message-Id:Date; b=c2XMM5FMsp72rXEJZcILsHBLScYWwMzxnKV6HfoZPZfjYz04jZPQu4QTDfT78YFG5zJoz5s7Y2UxFhNU2Tqg0C3RcmtK5kNlFNGyxJJy/osH17eRbXEQ3+fCyhTKhe0AWwGgo60X8MbN81nH1rHz3h0s/tU4kbC9YIWmLDRfAd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTiNHgb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTiNHgb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D570C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767740033;
	bh=+5Ad062roIYLJnRq+KvD/MGCqS56XL3S3rwqyyoLmUY=;
	h=To:Subject:From:Date:From;
	b=qTiNHgb+yEJ0RhQt+fm+zb5WzU8etHz2TrSp+abzU7XSrBlR/lxpct6i+/vmxVCEF
	 RtjqfnJMLCPz2DgOl+/sejHuI0uhj19HFz1X77SPNi5IMrhosFspGV22JbsnaVDaXU
	 IXwlbk861vAdIGezwJXX9+2VpsAc3L76RfMm8m3Cr3b/fTmH5PE7VNhTTcbQnXHVoe
	 PKa/ctlL8Rq7nUmyeGD+S5WSstp4P2IdM9mSaGojioa+PhwXcTJlu+oLYrNv9cY8od
	 RGBIRivlQnoSt3lfX3EnXDpXcEV1atOE1TV9k52xGof+2OKIuPoBHTxnzuQ+cSR4g2
	 spjkT4g8nrXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21BCEFD0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774003357.22178.6859860597960813046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768cd3ca5d5b1f65c0025c9005bd9d3207e59c83db367d720e460cdff2be3ddf
Date: Tue, 06 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767740033
