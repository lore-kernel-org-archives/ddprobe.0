Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1432AD03
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782664714; cv=none; b=NIkH+49evbjuvct0zM/odhY5KMDKGnibGCJnLr22dx8MSB2xn0bBRiwtutkt14sQuaJYbCpKaXjjurjfBq4/nPlPuXHKdDHTdfMW9Oe1eOReARjIHmFx8/wEIMBpl7emMvgoQUxHfQ/5tm5hz79kEIcSG7aXdMyMY0QqFSWmYCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782664714; c=relaxed/simple;
	bh=qEkDKtFxMN/cgdErENejJwaWvrgW8K963jargr6Bli4=;
	h=To:Subject:From:Message-Id:Date; b=QhulvwY8F8ynYIijj0k1hQcn7TtCuwS6LB4YXLgRkI/RvFX4MoaHJkh+OFfswfNE+ge8EaCdp+1W2+y05S+Ky0712YQipjlQwfWNbPDx/8TSDnJVDS1IxfPvISoCwMioBCKeTkfgRSrr5UNEwwe8vizfqB4HzEkZ3py9MzSumiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNjrMpX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNjrMpX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33CEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782664713;
	bh=qEkDKtFxMN/cgdErENejJwaWvrgW8K963jargr6Bli4=;
	h=To:Subject:From:Date:From;
	b=gNjrMpX/NZ+bpH1XsdSOYsifGqA3ZZK4cnQEmYn5Wq5gNsU+P3TAuev+yAWDkutNG
	 bQ7CHT8dwuP3AEgLO66+KiwBTZ7t9d1Oe4WN9KWmbn0WjXHp68sRdm1/lsnFFyOBKu
	 ltMeZVZSNg+56sDMePyd2aSjF5Wafa8T/lsQRvptf7sM65E9WhjvqX9Lr3aw4Ygk/x
	 9HO9GLkfvR85rG1RjlnSqkYn+f8RUKna4q/sMLV9hVs56eXTO9IVPkBafs2WZBxj5W
	 3snjsuf66/+/0J+0/w6VVbJ2aMz8/elSsqMHVS+ktfFUxbl/KGn0SrXj5EqkBvl6fk
	 G2mqynomZztMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F47C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266471371.22053.1068948456857008383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7263cd6c0e91143c62c179adfa343c1c34f5141c14004471b541cb27aeb58eb6
Date: Sun, 28 Jun 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782664713
