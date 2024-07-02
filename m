Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A5C1A2C29
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719926123; cv=none; b=YF8b4YS88vBJbhQp+zPlK9Z7A2754Cjhny7B8m9GadugE6i9Cys5ZtqzWhbzWuxC6llfnjGtWErjpEP6u6jJ7KnS/Gefa48Z9cx04M38YXw3LJNNRUhXhd1AleqJW1v26CyAABAFFIrj5fwRWxOt/uaEbYKzslW1jj9u5tQEDZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719926123; c=relaxed/simple;
	bh=WHEotMYZiNV5N+BY3km3YSGpGsWXd51MGBpN0IVKtpA=;
	h=To:Subject:From:Message-Id:Date; b=OO8JlnO2/nsVKstdvQSp8tudRNiLcgQm2Wtpkv0ZEiGCRWul40An/mNLn+5Fd8/ng2iGau8GW7DinLaGRpXrl9VTuH+Euz5Xo4iUMJ07VhXQljrMLPUpVVKtdy4FqDpu5CE6XLw8ycwXUjFrHlK1uM2ZNLvLzbcLJFZTqPV5Vtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOtiLrcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOtiLrcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7544C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719926122;
	bh=WHEotMYZiNV5N+BY3km3YSGpGsWXd51MGBpN0IVKtpA=;
	h=To:Subject:From:Date:From;
	b=NOtiLrcsst+a8g+LpIjGnJpYjZO9dOkvA8NGErWl3jrI71NbmsPI7blr/TbaxRv+R
	 4cEAHQOO5y2kVCAthXVRf6OxGqa1GPNFOWEjLNLe4U4Z0BNNMyY7atyDv/cYDMYUuR
	 Z5KyV/ubhq5CcXhKyIZFzfglz+In5GbzZq/Znhx22iocj+gq0Ng8Mw5BaRlLlZOMWB
	 66vdWSLkzewgr0IccE3zy6diETyx9JsupbtiH+rO18J2fVyg7sHkxfdxpbIlEOfmU/
	 wJ95vYJst2My1MGpdjDKyETupXYM/NMVMPvv06+mwRqdBRx1ZsVrwjYHupogh36/rx
	 hZmo/sDAu+gAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A6CC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992612277.10992.17615432364889450218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468a4eb1a8a1422af36f80ad9472c3ce937bb132e858ec6d83a9736ffe706915
Date: Tue, 02 Jul 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719926122
