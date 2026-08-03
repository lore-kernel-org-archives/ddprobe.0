Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF8419EED3
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785742834; cv=none; b=gUTnbXwFyD0X6LxmDG/EWdfiTdUvLWLs104j2Pw+Ao8DEdefAAtvUxgIcB6PjcJZ5rY3MrhQWQGUbbI/cNO3z4KZuUUHTXiC/GR/zTZLYFUhn6n9Ju7VIFbOWbTG772MyJnHnBxHVQCCemC3BbzJ9vIsIsJ4Vvw2arfrS/gwMVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785742834; c=relaxed/simple;
	bh=oUp5zfj0FKCn2NDoOBmmhRYmOkVfCRrd0pIFCVajZZ0=;
	h=To:Subject:From:Message-Id:Date; b=Js08vAxVsF8Xc2XtDjjJowIgFHagD/hmePW0cxt4WUwKjQ7f9rShlwvAbO2AjnJqjCdwkoHoucmks8i/RnpiOBM3vcBNorsL7DVxb6d3Vg0tsLhH9EQHbV9MppaD075qaxcNhgEmFX3f7wZdsTVDRRoSLbok0yg/KRmclf11VvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C30eJ/C1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C30eJ/C1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD475C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785742833;
	bh=oUp5zfj0FKCn2NDoOBmmhRYmOkVfCRrd0pIFCVajZZ0=;
	h=To:Subject:From:Date:From;
	b=C30eJ/C1DZhriz5szwSXwGelbKUnxILac5MDtv8UW3doCaoD21PvntoZ+lPHtCDcB
	 797F81Gx1LBmdPCrRZ8zE5GsRp+cWxV73KcA6fUOeF25ftWuuVKLFEI/ZMlxXM4WD7
	 UaV7Jm4eaj/3kkQIS1GRceMBZtC27F/WAKIqlvqofiySOx24J0nOZzksGY90laOVqx
	 prMkR/g4XKaKPtizDWzcyoLZZGotPxRLDJdy7euQoN2dvi+BvgRpdFCdJJ0jA+CZkm
	 Sw9zNIQTS5/ESuAVbHwte91dvxAoA1Q5PXQySemxLOeZcu456v/3vHMZr3Q5REl/0C
	 Vud7OGWuFu06A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF8FC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574283369.10823.2568105927189001880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2303d2ad622ca1f95f2de87b4d26fc69cb00e0b9efa6f8052d7c69ebbd8b827
Date: Mon, 03 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785742833
