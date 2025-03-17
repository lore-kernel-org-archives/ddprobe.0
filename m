Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFB917D346
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742212194; cv=none; b=ZM1kXmNi8dnnPdop3X/qpyJm3HrZBlX5xT+A456GpCJBicNoWsKhkoGL61qjqApk1WQkgUkQp5SxjdoBOE2vMBpPyEj+LlE/w9P3c/87RkQg/elyHNkkpmNhTLdqFIxjq5Gc8fx4DxlkLW3G9xSItuoJLKmppeVVH2xMqre71ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742212194; c=relaxed/simple;
	bh=cOU3h+vf3mwe2b0XpJ7ZUfAogH2tpxC9BnbWA7R96qU=;
	h=To:Subject:From:Message-Id:Date; b=NHgNM9eV0wLLpOroFadchdt3EGgLdPMlZsRCrPoJOcf5dqhMnnibE2APH5Zftjmkrl/AowVeku55rtowqzw3DfdzQn/A1UriOxBGz5mRnd91vUt8kSJPjARs32gFVT4oLwwlwJAgKC+9glVjgPDq+ueg7GQNwbKNBT0sosefITA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzROjKho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzROjKho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8186C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742212193;
	bh=cOU3h+vf3mwe2b0XpJ7ZUfAogH2tpxC9BnbWA7R96qU=;
	h=To:Subject:From:Date:From;
	b=gzROjKhohvZVmOHN1NcJ8DvaVcM4rrTvrAuY9kNpk63FNR4WEj+kn+CY8ZgxhB0y6
	 nXMrbj5KqunUu4HOSKCzYfqTzo6arYUxZdCgHyPcKnkxdlJnTslZ9ZR7ZnT4HcZV+s
	 v66Y890allPVDPr1ulXGCUO8naNREMGAHkeY/sL8oYKiP7ZxY7X1q1bSPpc2fRCGxB
	 QfSa8dSMpCk+jtQf8Yq/vtVES13TDuDf0CWxi2/ho33Dsp459NIJ+UlFJPTUM+pVtr
	 ka4D+AwBFiBclOGya8JtqYbq2BA6s5tkAU88W8WQGPY8ybJTKgtOxPL+6NnH+udWnX
	 uGsuWnCsGIHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17D0C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221219365.733.11347760583155354654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6142dc3a49b5cd0fe3c016688ca018ca817925ee843fad16bcf51ce72a495232
Date: Mon, 17 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742212193
