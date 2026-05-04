Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3081DC9B3
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777867653; cv=none; b=qZHjBGzXiih3CA7jM33DMM5Ij4yklUSqtRRAx9NW7e3hoCjcepDGl0QZ9aGEFgfZ5U4/Oj7p3HnYCE5fqM48EAjC7f14wFq9Cody530yzbMiFjphHvKoRu2MznAtpmkY6sIth3zaBFqtKoTHpquLJcvrwx4fzZbT9l+sEOX2iM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777867653; c=relaxed/simple;
	bh=kY5uS6nJ2P5FyM3z5qT846ZNXel8DJ8L3dX4My3PhNE=;
	h=To:Subject:From:Message-Id:Date; b=WkJjin8blb61sC2jQPAayxnWg7pg5x5pYzhuPtxF5KNL9NPWmZhvXUs6/2rrK2EyxXBvVaZWi3kKxF6xapH4Dbd0k+An/oh87dk8TTrFrrWs12YtsDSdr61UAH9L93WLuhxzeBxlMw/O/g8rD6usK4czsEH1uZswGEWhoC/kfAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWd5SyDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWd5SyDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02CDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777867653;
	bh=kY5uS6nJ2P5FyM3z5qT846ZNXel8DJ8L3dX4My3PhNE=;
	h=To:Subject:From:Date:From;
	b=pWd5SyDmzx/jhDEes4KMKaY1XQMvSNUOJf32PpJhfNDFxUo3mAoa3m0/gXypUqC5m
	 q2w1THElNd58pNlhXrFm09H4+NYDd1v3ZTSZrCc4RXVyBvk8G8QcGMT24Rj0KkYLhQ
	 F62U1QiCP17pdu0XppZ0Zw3L7MCSelw2b4wUvAvPSzCYriDDnO0J5Cv9gCu4t3rkr4
	 iAs7emcFzhxGRdlU/vwK8xsME9bRbUbacGScn3BxUvcuWrgddJlKAfLA2ckcgeMZl7
	 JYipmzc+ynTF8WwNKRc8XibI+zl/AevVeoX0NdPBVxcPElrq09FSWtQVo73PVuztI2
	 Sqln3qrXmkEog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0C5FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786765368.22160.11461819045586241039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4752452bc990e38e4d8dbe35af5e76e5e8b65f9b177e1197279968390496d638
Date: Mon, 04 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777867653
