Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6415315ECDA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717621043; cv=none; b=du7XX6SJaDA1Y1JNgN+1YP5y4Zj9O4iXAsF26ennjf9LheoAlkjvcp38NRH0TekY74YYG1d5SvJfwf2MNeUzw27zjdguRzj/Nh7Nx2UriPANvAHwmw314yW+CCgZNc6tr7gfz6XcSpvLAjVmz6wVHEdiXa1jdSGiOWv3dUsmAWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717621043; c=relaxed/simple;
	bh=glVfMuICYo82qceBb+GHYwclxlNr+nxUwP+VfSYpwvE=;
	h=To:Subject:From:Message-Id:Date; b=Z2MZQEiVoN8gVgH1osThYDDOIp6cfjpC00gBkIaWqmLchpHha3b8gxajg1RFLhSxbKslcMKI8AY/DvK5FXsMwuiAhBXOT0s4AFrG/Uwv3WMKYUhoJC+BVmdlmXr/zhrhCMtpbj3mmmGd4iohpiefOGMI1LjOgd58MJAarC8tOd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/370kMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/370kMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC03FC32786
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717621042;
	bh=glVfMuICYo82qceBb+GHYwclxlNr+nxUwP+VfSYpwvE=;
	h=To:Subject:From:Date:From;
	b=l/370kMnGABORJB0t7a45o999w4I13YkWRd7IrrGnbq6AR7g3w079Q2Wk9SyFsOA8
	 8dcy2J967LMi+r2DUipT/JALKpV4CfccPWLIYxhtc/85waIX89dIMVwU4RU4AexUxk
	 dZycIRfp+pAGuU8T03RY+Av4js19kbtatW/CJDvFMeYhxz/5PAXyt7wBWyjioPWuSB
	 XPbN7uJtsHSzSnb4MCrDE+3uR3alo2Z6JzxTTku7Ufkh+BXT9LSYSDLFww8/iqkwpa
	 eh603GqwgZ2D9PqMs3uIFhJ6TgV/Q9DpYSZjGVX7vi5ff8hoTitOcE1qrr90wG8s1H
	 Ne4yJbjPRmWWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6ACC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762104281.21862.8378783849690633512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f77cf199b1a72ffc28b3692d5040a8876d25d9702941227f6ef86f6014fd96c
Date: Wed, 05 Jun 2024 20:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717621042
