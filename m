Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3EA3AE6F5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790235634; cv=none; b=m4/ihF2AXBOrZ3HoKKjDN9mKZZchbSDTq6IZsXbmOUPMxRd5ywEroDvmDBewY//BpA1VRWpuuBQCsU3qXAGT7Pp7VXOT2SDf1DfbCy56rh6Vwuu771sZkfTaaEIUezy+iBIHrqMRaCYzrSgebErxuZFrwNxKPh2+FC2MPiF2yVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790235634; c=relaxed/simple;
	bh=J6AA6RuhmgxTbGgTydAKkoH7yepKCpi52SKovRa/K4w=;
	h=To:Subject:From:Message-Id:Date; b=ZG7IKdGYGSQDJcxUGuhYV3EwKC4L7a/orkTyGhJN8R0ls6Q61YuSzhIp7/YN4tk5wu+mqLE1mTjdxYV9bM5VQEUjmzTZsGVJAUh5opk8Pjd0M8asJoj2ChoCz+upTGQ2rv+KCQzT9mSkcHzlKZwNMzdh/mK2i92l15Ed3PJpQT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDcPdFJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDcPdFJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C0CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790235633;
	bh=J6AA6RuhmgxTbGgTydAKkoH7yepKCpi52SKovRa/K4w=;
	h=To:Subject:From:Date:From;
	b=DDcPdFJ1eEuf37b/h7vcads777P+Wo8ERekloNLg18m9ycOZZf/kX1pnhpoo4obw7
	 S21D1iBUnGidCe32Zs+EqADgPJk9/wC805Dq3cibsrkJZLbduBJSA+MOH+YKU1Yvud
	 ZsV34LzjiUeMJuECMH3ifgOKo1OJW2LiM70KM3RfZe3QA9/0Dn1eZlg9Cz9yK2y4AG
	 OCsCEWl0Rcacdk+mj/w2sfB6VWSKKjJiaC88Pt9Bxa9nuW18vFyJXv/uAl8d5VeuLQ
	 xsChx9GtcQA+pLatJT+tMw/Uij+EexVmlVM9qyO4vM1vxV8DqaExiIrL7V3aVcPHpF
	 Tz853jy9+P3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD129C98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023563369.672.13376911638664405706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08a79b2f1b7603168b999d749a7d6468f2223c167120d0b3a6dd0b570e164c8
Date: Thu, 24 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790235633
