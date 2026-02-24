Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1272288535
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771947894; cv=none; b=Itn1f10CESFf0LR4Jc+q2sjmwX8bUhoSc7ps/wa0fxDC4b5C2cV3yZ5ku3FQcHeGdqZOXCqnP2MYVAVEA0WejnTsrhtzPqGBUxCMlxiITLqYt1PV1ZC7mBnXblQPTwpqD270LPCMHqYUBgjSmtI/Wh1zUre7aqCr8/IOmVWXmII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771947894; c=relaxed/simple;
	bh=zqK/a+ZbMuDTOwhe8V2hNIVzLBZL7xMYTNHArDtfDl0=;
	h=To:Subject:From:Message-Id:Date; b=IQBjbfMx6/l29NOnLxsWnO3i98sYEHJUz0rp4lAgDvBOF7NY0uESKnxuXN4T4WHNyKuHK4LmSyfqpZAeF9QuSk1iL6tEzaa3J08iXMWHwaS/SH7SYbtQCliThtTeg2hGob0EEIb8mEEeC1oZzqSTGDY6fHrcUB+SoYjG/47lrQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6zU3rpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6zU3rpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48AEC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771947893;
	bh=zqK/a+ZbMuDTOwhe8V2hNIVzLBZL7xMYTNHArDtfDl0=;
	h=To:Subject:From:Date:From;
	b=p6zU3rpG6Pt3pz8ZMGF/apcxlv7P2j4vgYSA8kN593zBITkcQ+ve9JxPir/Ep+W45
	 ZHJq0h8/krdMEoNknTeVRLL2oJKh+dJQbfWhy3l1pTgRli8Aq0deelde7DYm+Q9cfZ
	 MVIENhIzK0rGT37Zv0fl2DDjsFMJCB2rb5S1o43S/sNyPgSbQuunPcHtBvHE5X6V8W
	 D1JTTEjrCqPwhUR38pyV4krxBOd6eZaSMgDp1uDTDJptI89/LuWfLlxG6Q0qsQ/our
	 xjUTALWoUz6ZhDGKlvZcUQ263GDB6jsx0OGrOdaBYN+vc7Jb1ghoP6jx+wqp3coxkU
	 JLAV0VmnNJs5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BFFF3C99B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194789359.28734.14059815186350479000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0af2e7602b2f4233d7baa5403dd4a234b26ce83ef4fa294c1e8df098fb290de
Date: Tue, 24 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771947893
