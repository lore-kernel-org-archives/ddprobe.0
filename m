Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4C636404E
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790649634; cv=none; b=Oh+YJLEHzIAZtnQJg8Sej+lo2Y1K//T1rh0j1+8HOaZ39cGELsJQL8GyXT92uCUYZ9dgyxRYWxB+QCp/v/FuMIBxDfhu35G9CpMVaUDcRNo8rzCOYOgn6jx6V619zK5iqWXqiqfRIE0BeeuoXTdzw69rnVrBuzVZI0qN86d2Gqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790649634; c=relaxed/simple;
	bh=BP+HQr5Ps0T+0OXHkgoYJvXzGIopzG+9nopOQMLMqCI=;
	h=To:Subject:From:Message-Id:Date; b=FG0mdEgmA1sEZOYNu5vWcXh9lBMiQbkYVvrSiY9TLvYXO7hLz8aTFbOgNbAtRRfV1J2s8cQEaXRv5bNgXoC8ZPOWqeB/KFhSTbe1QgoZcyzprzRGruexhcC0mKrN+wCFWbZt6vsmYmDOCmVcYm1T7D6cv4Kasj8kwLZGUG+mMl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLJOLvrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLJOLvrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D79C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790649633;
	bh=BP+HQr5Ps0T+0OXHkgoYJvXzGIopzG+9nopOQMLMqCI=;
	h=To:Subject:From:Date:From;
	b=YLJOLvrEDCh4ZFNaOnEPmfIir6GjNzlMLy9xoF6/U+OErLT4dLqkDMirfIuTEMXOQ
	 7O8OleKycUeNYPi/I5JummKpb4Z9e7CZ1/qDry4qInO481KdfeUCvS1ujlLj1GsBVK
	 JM86VLowAjM6RnDS1AlPnRF2r5A5jtVM0zYBDnacBNDsaj4LevlOU9m8CwSIPw40Iu
	 ogU2nLV2Orf+tv332EloFbU53LTxW/j+GIdcbk2T5Yaz0qdcO5oDy9hM0jqFv7tr0/
	 O1qYrfBSg1hug3L9B1+ZGapjGOrXqyVvEfC/0EpaCkxyPoqcKFWoFxR9mTZbWrHO2o
	 X+iNq+XQorApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C68CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064963373.31529.12031381767037612283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c90f94b4f15167dd9385c4d63aceaa05b585c40f4045488532eec3195ebdc5
Date: Tue, 29 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790649633
