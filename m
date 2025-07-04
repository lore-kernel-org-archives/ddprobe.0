Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A471D90DF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751660394; cv=none; b=sg64Bwozl7GLs02BRNm4MzqKU29/kPSSKlx0I6BmYAnwJixcIaFr/spwY+u/0xtfXcltL4eckqnl3enuX8PSyKF6bT/CFkpIDlCzHmQ4/mcPkk6wH9b1jC1ZGYQH130dUpfyWSJ1S9p1oDMxJ3/61lBNiqoWvvNN6McQ8tHws0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751660394; c=relaxed/simple;
	bh=n74shs+hpJFSmiRXGsuJpyqtoucyA8CKf2NNFn2AWgc=;
	h=To:Subject:From:Message-Id:Date; b=bKH0LU2evujkEm22JFpHlqL2V6iYGmBQDB+BHXnujVDMJ6PgYyvqggh3f53CaSw2+Ir/vgsBSbTLnVf+By6u/R4NJawT7KQUmJCEpK5EMqhmsNHbO+VlwDHrdrTHuNjcT1AyXU+/WxkHtOiJ99c+Pm7U4WDgliNoQzsyr7JvPKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK8EjOtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK8EjOtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A8C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751660393;
	bh=n74shs+hpJFSmiRXGsuJpyqtoucyA8CKf2NNFn2AWgc=;
	h=To:Subject:From:Date:From;
	b=DK8EjOtgcP+STFGG+ffQaUEC71xDYZBn6Gy02v4eQzP4reELowfoSxPGwVcXJoURf
	 STjp+KKRQAgH8g4MFKQm+p0UedLnwgN440iXItpOVdoXPfC6AKt+74DvULwumQzA7k
	 Zol3SceEGo7fJSlvG4IWCgKy6Zz3TZGbclCDrZv26L9lHI2XCdHn6MY+Bpw9mrYzDY
	 vj0jWR/PEV4Cxa8zZS1fDoBdyGE6HIEdgA4Fy0+0mFqUTxE/3MOJ0Z5zREZZWS32r3
	 h9cZhST2/8xiSF+fUR2WNjjBO9Dl8lFQfHka+itnipCqiuqn92OzFmI5wO6gxDG9/W
	 +8fNfy+IZt4/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBDC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166039357.24963.13778325799390304305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29997228eabca013b79c118b87d0eb0dfdae468f5462108c4066d39364c5d9d0
Date: Fri, 04 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751660393
