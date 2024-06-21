Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488861553A4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718973743; cv=none; b=fBuXGZmxkQ3N0n70L1siql0YyZodZL67Eb9kJzwNinXXufe9J4pIjK///GgtHGRXTe/NZGbEN/YHm1AZJsKgIY76Et/KxFT2klpCx6KFGBqtLyxtgZhK6u+caXGxemrweZHzaYdQJiQ7UccsdSowW7ECTWtfEs43dWyP3bu3d1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718973743; c=relaxed/simple;
	bh=gAuWUjTSo8aaKYRRNfwJlDEzEACRWZg1WwKD/wkLNQQ=;
	h=To:Subject:From:Message-Id:Date; b=tDUE7jlUtSE+KLdcAtny+rYyRk0V4714hl7IMl2ur7D7bH1GLJalVj/3ismq8OCOaKk/EPLtQ7Y8UnbnGjn+T075iuMOg1TYEpV2dTnyLk2EULd53VMYweeMRLT4INRI4so0mL7kIHHPKXXbenGBUCAdOHpn4udOEaL9fUnnlPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucRlFoI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucRlFoI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E00C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718973742;
	bh=gAuWUjTSo8aaKYRRNfwJlDEzEACRWZg1WwKD/wkLNQQ=;
	h=To:Subject:From:Date:From;
	b=ucRlFoI4AfSXtQIs7jvCxibfPcOJTsWhBQzIduoqRnha/PccukYOiJP+LcPVH2aAO
	 UcSaIcpiLavTHWqkRlFZdtrYl5eH48+wVZg7hOYXMiGmdxs6UiXrGHPuqGnbN2O6ii
	 c4SSMemrTCC9EoyyU5NM+dhvRvSCc0kb2S+rweNfg5RSxqU7kRhn9I0VxYun/VeCYW
	 c0FlJu6cc3gsEfznPQE7UAl+06VH+RB5JOCHPrGBOJ41XpW8tZNVbTa1pNdM5U/mx6
	 GhhE7mXJ6Fo6ask32eGXG76YwCc/Y83B2vCzT762AT8G5BzjF2CVRQISE+m5p0kTB6
	 H8bKJHTx8n0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A43C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897374275.25908.2217837362219870323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4f714701a6a2c94267b97304f89c9048a8101953950a8dbfa670c4f2fb1c76
Date: Fri, 21 Jun 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718973742
