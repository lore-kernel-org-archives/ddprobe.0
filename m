Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7E33BCD10
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780048354; cv=none; b=IcLrwS7+SmlrBacP20ozF8zwUtDoX1yby2JqqzZkPH7fvlJPq/ii0h3sw2N5WTtrC/xkiIWvYuptr7YphZ/I35w7DdAkadKoPSZRU1HShL7TkCWdCx8gmLzW4EfweXSOR/UCf51m/oiOh2lQAQGs2kuCLWWqHPD/efqBkBgl4HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780048354; c=relaxed/simple;
	bh=TVYlOakbhWpRRoL9J2ZFWsXd0cTEQ+y1p1xHGLdLz9k=;
	h=To:Subject:From:Message-Id:Date; b=oH2eRB7g5Gz3YI+RQQBoPN6ovnE0k3JMItB/4PUnRl2FbPzv1Ry87vlhSgYpmkhmhKHpe1nEE9kSrzNj+prtGJeiTmtgyZ5jIoQ1KKhBX6QHcYnxg0OWlUfiw5D4Qr/jqj9/yaeHgjgSKQQSY2N5nwLjkRfEi3mTFrUKGLZ2hiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCinCc2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCinCc2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7C9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780048353;
	bh=TVYlOakbhWpRRoL9J2ZFWsXd0cTEQ+y1p1xHGLdLz9k=;
	h=To:Subject:From:Date:From;
	b=UCinCc2Wrd7HTdBcMtsQfnD43vIGWo4C+k6aXhQZ13h/0rFBuFMSMZaaHaI7hm7lE
	 niYZflwUpxoFRbFLYgdNjOotJ6JvwdrT4YIckDd6a8XgYJXyV/VO3ruQPIUVxXddiq
	 r5MY0b/8EiEHwa8aLoEF8ip/IABZ8qJbVvgroD/uFhDlvySqUT2dq504AtyVRVLsYP
	 N0KfBnSUPkOcMbrE89pIh+TyE+vGDgE7XH4IkcyqhX4rcip6XXmft3UGgJsTIm9Jbp
	 Teg4BBYSEpDTfy18397QqPX/QNVKPNQeI2Zr6LycS3tle94pGtKwZ8YuUrOIXlAgZh
	 xS2TwoP1MaOfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F8CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004835369.19107.164105310006620752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8585489563f1752c5163c0d8d0741f3a0975dc9858075d52509d7a36dd9e53ee
Date: Fri, 29 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780048353
