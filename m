Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3C0EEAB
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757051394; cv=none; b=s+UU/rpSeN9wfAyI8I4kfpjnXauAtFqUltZBouiY+pgKqGYkehF5es4SS0H9S0L8CnWGpyyNLUBUiOWLpOKNURR+JCIxOLzeqRd5ak/08TPna8ck+ErZerpb49WyYfazdEB+72otP3SF3YC9kuJzbJEswryFAoXg3hYxL7UdOVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757051394; c=relaxed/simple;
	bh=eOiLuzjsjef/AlwFRRkFmOWxtfkpt5pfB3N10hwlnRU=;
	h=To:Subject:From:Message-Id:Date; b=CDzF7/IX1wVJdMJlJ7Ss57IRnJI115Vj9RLWWhWIqOTi8MFGz5W+ruPDGYpMXkemQrx13JuBMGZM+hEtRUOFBpy80EmQWh9tESw0X4r1ip7Kqhiix4S2bAC3tYxeaXJ2HfuVMLatOdgSFVS0QIvSovR/M0CGMf7BKaKyWsrTiAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srfbGm7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srfbGm7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BBFC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757051393;
	bh=eOiLuzjsjef/AlwFRRkFmOWxtfkpt5pfB3N10hwlnRU=;
	h=To:Subject:From:Date:From;
	b=srfbGm7K7L89I4S8RdgHzfPVDiwvf4xTXFPsYZwtlxjFCnqytSZcAB+gzywDSE9JM
	 RLnkbz3Gzd1gvLz51vjoegHSKVp1jrOxO4GKn6a6YOdaQCOb3QVv9A9HnoDrtgDjkd
	 /cktjAdpW2gnKx+TzE7sRfOIAUeJ86HUfwyO1nMFwp3pu1RARPEW9m5ZRJgATce12E
	 6dNlzXttxy/OtvMCFxRbPLYtBEHtlxMvKIpi+97ienURvvbUW+2tXpUFcKHHlyvDfh
	 thE937rUEjrL0ZD0qpCaiY7q/JZFAMEIsRA45YR1BtjCmrntLpOInGw+SvNLHto7mW
	 4hzAx4TOgbglg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E577CA1015
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705139357.25104.13777118739379501933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3291fa3a1f69607e3ceeffe5c228b504e68ab53ac4efd3b607709fa0e91cb98
Date: Fri, 05 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757051393
