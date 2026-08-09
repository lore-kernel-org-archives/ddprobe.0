Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C00919F121
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786245634; cv=none; b=jcxwkM45r943SDQZruozswaUrNWDIQB6veGt+wZpc6perFEwNussfwha8mWrl3DcIp7vICUqfoiIol9u1wNlI/hiLjV8aiTDZaHiakVXhvsD3BApZC09RmbrMmp57indfOplZPqWVE75JW08KGa+cXk3fFn0agH/QQspCEbPXm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786245634; c=relaxed/simple;
	bh=Mrd/dtkX5pJyLYOkEcqTqg5bpdcAes0mj9/zYQVNoDA=;
	h=To:Subject:From:Message-Id:Date; b=K3gMEkxN1DBVRxmI1PVS3t82qpPdjD9/xSHvQqd+5Zu3aoUXLVkAOALuXFshTzIFHzklZyVm4gUww2VdK70gkcraHvws2oTJBnMJr8jKdhbVbLU4rpuRmeEtqGivKlkTLbeouVdoScoeo0BUPyKiVVfyKmN0pmB7xD0XgrTylys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0qIx3ud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0qIx3ud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7625C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786245633;
	bh=Mrd/dtkX5pJyLYOkEcqTqg5bpdcAes0mj9/zYQVNoDA=;
	h=To:Subject:From:Date:From;
	b=X0qIx3udYqutKgZNuKR/nfFx5FKXBH1Gn734xPPYggA52xSzqk3s4cL559hR/OUFI
	 nG6wQr5lh3grHrWBol9adl9R/JBxsAAFmzZxS3ZAvmyUO4/H64C2o56rGhP8qWcvhm
	 ojLASRS9G3n+PJ3A0UNTNqjxQ+TD/Q4jh/EpD8+w4IjJaNKei69WEIEZ58Zg9Gs0oD
	 jp3hfw/lqmIGCb9lnadxklU9tgtWhR713S+qroh5PznET82wqX/9Y4ziZz54rr+Nsp
	 3tBpOCJOe+nPp15LBUOEvW06Q8r7q9Kdm6d/wJw/OB1KfHh+nRi1IzxXmwuYnIIi5C
	 gD2ip9JSkwkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEB7C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624563368.12866.8774327070951584950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a6fcffbed0d74b1c0f8a85ec1a5672fc23dc86d0819dec1452978df58205cb
Date: Sun, 09 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786245633
