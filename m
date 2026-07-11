Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4AC223DE5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783770514; cv=none; b=NzQ5/kD089HquZwXuEHaIblRk9Zp129LwlSVgvxBg3Nl91/VmqqEm2ae6Kbebk2mwCBTArQK08+MJ3Dai1XXe6oG8jkV+afMlVuKnjQAL8BkQsUR0RzqtaCYZlr+OKHbFzSi3Xdv6sDHQvvzr2+tSjR9T0+cPtYykaA8eK/1Cls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783770514; c=relaxed/simple;
	bh=wAc3Zf3XECGhQvWwuR4TmBovr0eMpbfi1Mv9w/SpJ8k=;
	h=To:Subject:From:Message-Id:Date; b=ksoowSorpOYGIh47ZbRA2Qa6T53N/Ae7AekwtqYuqGibDeRGc/peDLc+9orcMCAaY4gg7Ej0vOkse39iBu7oQBbk2HfBfdcdCPLOKX2MDxVf/9v7xaPhfXG37qd99uV62Ejunhe4kq83Y2V7gl0BKpa/y4GGMnJc9seTSeRTD8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHt3jJn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHt3jJn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7624C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783770513;
	bh=wAc3Zf3XECGhQvWwuR4TmBovr0eMpbfi1Mv9w/SpJ8k=;
	h=To:Subject:From:Date:From;
	b=qHt3jJn1yNhS/fDC1gb1FNRsSRAEbqxxSMGzBYEpkL4uYamUUMP2TfabfPyiQtWZE
	 keSnTFF1CtQheHrf7zFRM2HjkGrYM3DBINL5rNFmklZhFrhJeky8WzJoojZNNo1kFx
	 cRUvWVTc5+47aco8Gkx0wsTfWJaMnWhT3rMHd9Pljtz7HaZ1b9P5NVoi1UijDf6Tg+
	 OKLzzjPbbWr8NVacP+cNPLqUYI43+AYKeMjNqWSHfrCUIfEQ+FA4F14xq6BFSSlUK/
	 ykCZ1T4XxqChqmcdm3tRHEJRx/06C6B5AKcESXnUB7OfoP1/tclJM73u/RpxcBwmrK
	 YmU0pqSIGAzMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0188C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377051369.493.5148909264616155957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb2ae2e2fb32935bb693b379c306910780839964df4dd514bae186dd70e8cf1
Date: Sat, 11 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783770513
