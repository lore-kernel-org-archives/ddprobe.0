Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0182B3E0724
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783419514; cv=none; b=UjGvlNNL8DIvNBtYigWplc4oATKb2rO+2kgU/EkcYTX89gLz+8hXldjr0jueSyvssCa7oCwHMoYsHTPNoDPUafexjV+o6sonWvakG0tvb5xxiUh3pha3gb0FeIr+y4p/qC/AAkUOTUjdvegSoHuUnymVphUw/IjeoZCemZlD1uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783419514; c=relaxed/simple;
	bh=cP7c1DsDXMSs2sOxapyHcr3+kWbzcH9e4Ld7DuyT31Y=;
	h=To:Subject:From:Message-Id:Date; b=Pr6M+HKeYOFkkk+H3rlyVQ5dFPyD+bstbLRCzIIFay2KnbWc4wd5Hlp1LNgase5LgjOyskgJE1qL9Os+lYwHVBi0ISIqjqHgQZowQs9L4O6JIaW5CKZpq6kcNO3t4UThcBBo0Eogj8jlsvOh3X1nX2JyIrAIckNYf2GwSbOiT0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZesBOcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZesBOcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EEDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783419513;
	bh=cP7c1DsDXMSs2sOxapyHcr3+kWbzcH9e4Ld7DuyT31Y=;
	h=To:Subject:From:Date:From;
	b=YZesBOcw7jZ01BmjA+HOUU4fMufcLSKZJEx1Sxp8cI36g9lrRPimbxpbxugP36sbI
	 nOTkPkG7hInKRS9TsF5xdsfvXlpmWpEQRy7NsJM/aSxMzFivfrVtE1FgPOrh74g9Kc
	 +ceCTnY3SnHpp8m/YwbnUWspfVX8+SBEV0IcPj39cRwP4P4LI1oOuM8qphsimkokhh
	 D0t77vgWCznRHIlfDQMWerINFkfF3ol5L5kEMb+XI4Pr1HieeMVQuIKhq6QV4IG2d2
	 zvr6XfD5borIFOCNKBrP7RZ5ZJC/xYQB8Jj0y97VAA/tR6kYiJZ9WuYVHXmqhLGY4w
	 I4MFWgLqToNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BD2C44501
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341951371.13307.10671867967184355903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc450675c1735c0be7f064830a3c85da931d9fa3ceb182392b04c7daa7f6302
Date: Tue, 07 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783419513
