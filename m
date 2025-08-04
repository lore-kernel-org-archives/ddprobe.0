Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C91482E8
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754303394; cv=none; b=P1jrUfWttcvyMk1KK20u/jiHJzIQyUOZU3MpNs2/441bxUNunyIC3Z+GywYqiKpZ1E2fkHXBKVt94xMvlKfm+kuXOyXp13436k6ZnI7o7t8dEULI71NPBITP800wJDcDx4bT/qZcc50toQETuO2KxumZglLDjApaHhuZNcOIxFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754303394; c=relaxed/simple;
	bh=qf0q/eL/p3Gd+9VutdGtNI7Kt7Oz7q0hNqr7MdnisAo=;
	h=To:Subject:From:Message-Id:Date; b=USVxonBSWArD0hayRbTvkMoRk6rbakjKg1TwDMInnL7q3GmPl02SaBEORV/AirUlwlUH1vDXHvXMDMFEExe2fqhcPa/4Exd4gPgxNeIyphtl+Rmev+hTmmcK3cMj3fzMSb1jzeZ129M27ECFUgsXUTF30m41cpru0/5ionuNhJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7xP9OH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7xP9OH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB2AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754303393;
	bh=qf0q/eL/p3Gd+9VutdGtNI7Kt7Oz7q0hNqr7MdnisAo=;
	h=To:Subject:From:Date:From;
	b=V7xP9OH+fnd+7+eozyy0XD1iqOSdcVJrMfR4sxoTfFTV48DuDVdU1WkgkEhu+Xje7
	 0YMQj2WKDtzwogYCfPu2jplQL0XPhRZSXFDT2yl8WfLTGLPWfSJTm2obU9OWLnc5Am
	 YjpnWoRb59GoMMH3Z2SjG6MVAc7cIWUt/aReIYSNkJbggBthCYlTNYN6xJChgkiOOL
	 MiqK1TK0705aBLkTaeJ9V33aADLnrP+adtCY0MjnEQg+M87YVXpjB2idv/Q0aIHG9U
	 OFB7tTq4AHAzB+coG36cBBGa/C+ggVcdXwM7BRKlRbEVIlL8MmYpGr+FuPjRNzAcja
	 nzd5jbS1iwEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E35EC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430339357.3113.7281060400748890592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ba3ed753f48be9b03a70f6b36a3fbacbc75a40085e0d40678034165bba987f
Date: Mon, 04 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754303393
