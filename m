Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7FF3A7F46
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787146834; cv=none; b=PWIGntxH31jxh1O7Lcnk+RKNyev5Gkgew5hdt/XEs9ugYunO77ZIE+jvagVts5BGHedXzZlAw1gPSWS3zJJNUnVMyIcvZwMjvGheASlF+WOrip+ldOfjHgTKS2THUX6EdPVmrOksrtEOPj2zSOkS+cBSqogpyPQenqZLkaLyeSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787146834; c=relaxed/simple;
	bh=ZRoddrgvX8AHkG8/lHCHt89yEtE/CD2HtAbn7SxxWw4=;
	h=To:Subject:From:Message-Id:Date; b=qiFies62bQotWow28J4V8GWhFsG9I3D7DtVRQMfNFXZR5LThJDlxMsS+pVwyqyYi8ofr9nQDM6waiX4wBkhpr2YJO6wMz/71dpSmd87e/iuoOCePBHTKu540zFljFMjA89EtYN7kadVfBNVYRoBL7zwsaj69BiLgce5YM3CDZOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EncOKWt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EncOKWt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D34C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787146833;
	bh=ZRoddrgvX8AHkG8/lHCHt89yEtE/CD2HtAbn7SxxWw4=;
	h=To:Subject:From:Date:From;
	b=EncOKWt2z5JWhg+5sRphB1D4sCQFh9mnapHd/sgdb1+2hvgwcJv0HxDMOrZwYGOjJ
	 9vw4S5e/5ORPujPxQuVo5nKhOY6i/gxG8QBXuiJIqnepD6lvSYcBy5lgM0k0k2XNxQ
	 wkGTcX110iygPp/KO3rfm9q+Qd1F4lP/ZhHoXK7DaYMvpnWIlUaKYsGroUFrGVvDEF
	 RcetVy47czQ5G24AE3VsOVoPmNbmrEU8uJ+k9EejH/Q7avlyZzcfIk1E+0/pAOsOp+
	 WKVsg8zYVZgu87ZQSs/oyXx1gShuv7ImLyIgIqr+MmvbWQfaNkeeeTbBUG28MBbhIF
	 uXpfEl5LCSuDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A4C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714683369.1855.8183668961773928282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14968d5327819a0ce1700b307af74e6ebd5cd00d039fa20632509b9e7c91f9a3
Date: Wed, 19 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787146833
