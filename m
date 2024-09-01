Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3335D33985
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725186354; cv=none; b=K45xzEj9wzH9R7NQi6gjBC84KGnbzJybY5v+h2YtmVWfPbyByv9POd66x1ZvoDMv082+DTZ26J5uPBKQwbyQB7igPjXoOkJl8JKvnBfzcwcWrzOoL9LLJNa2b+/KAZDiduwTJca+GVv9H2f9Q+7TZoKn/dT2Dn4nqktHCiosa/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725186354; c=relaxed/simple;
	bh=/LvFHyWsXrTNiaMN9pDt2fccDp+nIvmC7OmkfnEcMuM=;
	h=To:Subject:From:Message-Id:Date; b=iXSIb0pv/4TpXcP8Q6a6Pcv5hRDZl+FzZitqRUs8LcvOPVdf3nEoi8wSi5BdbIAXezQ+K7NOloAiLrS8DF5tFoXmwDecPUScOFeGcOQUTnzNlniVR5n9/NCI+LDptgdGYJN50GzZFRQmt04rvnF8OBIavDqUnULdjbFIMu1Ej6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyliMCYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyliMCYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725186353;
	bh=/LvFHyWsXrTNiaMN9pDt2fccDp+nIvmC7OmkfnEcMuM=;
	h=To:Subject:From:Date:From;
	b=CyliMCYsqY9Q5o2flwd+unGZM+6Txbpsz7Yt+YQIya1HSM1rmXEIc1OXJuC2CDPSO
	 MIzKWS2iX1TBafK9j62tqrxuFI+dO3/6fMhlbq3mzPGElOK284RN1W9GfQ0smU6ewt
	 S5h9tcA2lB6fLozxDF3EFwDwhIG8WG/OgOVXXao27kOHnrkCSXSWoxNVToJqeUDlC1
	 KUiKbNOsCFC5uZmVRWUMMZfSrj6DTObAJUFBwfEZWomIHLlsgNva4LzPSbll8a+Ger
	 vynL/vXuoEdsL5b2cBox9HPvr8KAF5O/L7zWcra/3QrQMK/zUMF/7c+F3BbnLRRebw
	 sDoH8HDXEm1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592CC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172518635360.27807.6492947588737115464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4768bebb81fbaffd3a8e60a9ae34ed66fa7de4165ccf6a70152f52c36bc5e2c6
Date: Sun, 01 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725186353
