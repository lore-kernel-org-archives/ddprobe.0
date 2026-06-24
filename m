Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9E0223708
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782301654; cv=none; b=bq9XUI4T7fjHiSI/D77RTm00DrQPnkyeyhMscM4ZvMuqvsW/BZorjNLlGFloMSDElILvCDmSoP19xNbJxoTHY335jH/pKfkKFI+dils3F80/WZY1bux/cfS48ZaXX6ANNVczXhSdVo8t5lj5/kLMosEd5L73FhEuf2VPYBhuTZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782301654; c=relaxed/simple;
	bh=TsMN0nFuXrL1CTByEb5q8MfJ+9VFv4HhScGPwrWM0No=;
	h=To:Subject:From:Message-Id:Date; b=joKgWmFbuFzXsZdeW2hW9N/s93j7ZTHJbFbJDs/dzde43TvsCuUom3KLbUYhH0sIIoIQgl3kd08XJa+N16ukmHMt3w/Y84NWnYvtkJw7zppv77fFcb98+/Zm//meNIfdS8Ex6COvV/90vZ4gvGZM86aRMg237hZB2a1qEAutRuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpr+PeMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpr+PeMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A47C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782301653;
	bh=TsMN0nFuXrL1CTByEb5q8MfJ+9VFv4HhScGPwrWM0No=;
	h=To:Subject:From:Date:From;
	b=dpr+PeMziKXLhmluTok4lK5/XzH0Spt3QWN/icfz47Lkk17MP8e97DuifVlWZ13Sq
	 o2vfrgEwxMOk5cQOtfi6uJFoi3S6/xSzH7m0xSu/FvQJFNghvmdJg1zz5DayksGFhB
	 lzr+gSFRJkL/BimEJqDukcwe62+jKi0GCyS3ztAas5PqLTI5f3taNcGmZv3YM9qMaH
	 mWyXXQSCDN3XSq6GUkv0wgdl/Hd1CgfGwB+AONAsKq68YK5Y2/5fjEEav42T5R0YXM
	 whHO2HolvzikNU5efMB0ww9ZKYZzksHZtnteOKrln0R4MjI30BSijPRacuuFf3xH93
	 nFiI+f2QaD4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1942CDB471
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230165371.14392.5498375769677845966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f684dba03e6412da4016297fb6b4b45bc82772ad5c40fc5a99dbb8b3c90fea5b
Date: Wed, 24 Jun 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782301653
