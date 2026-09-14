Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ED549CF5F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789417834; cv=none; b=VYMwS3wxA/CcQtF8YtDgPa4BMKWLcH120gQH6zBklcvb3O3n2MiSZi28pNLn/NQ97TNHSOPkvKMWOEmunB1wF3jPuK6E1SJpywfNR/CA7xr3mMMg5pKegFTMnMuvNk00zS3J1sej5Ur2lp1z34hcQx9tUg7mccxaF85JEl+LSKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789417834; c=relaxed/simple;
	bh=v4gkq2ftV2iKBT7tdIlHy7XOS278ZK00Ks1Ud1jjXrc=;
	h=To:Subject:From:Message-Id:Date; b=JaPWEDhtZ4yEevEVH6aodn89it5Qxcx140hsgcU1rMWhNXI/7pm3fhKBZEGw75TlzdMnCs3sloTCqkWsVuzfAro/yq1XjocPlNmCjjHNXCwpIZ2NSVZt0iupP1FFY9WtUSVqIuPilUZysGj+FrCAEmrw6NjW3pJACn1qiMhDCOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4wk5VSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4wk5VSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8133C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789417833;
	bh=v4gkq2ftV2iKBT7tdIlHy7XOS278ZK00Ks1Ud1jjXrc=;
	h=To:Subject:From:Date:From;
	b=Y4wk5VSQhvtXtxVzo1PoS2ADFLWDaFD5HTWUUh/kMh2szmISSLVY7nw/elNsGqn8l
	 b2wAyALHEvXsumBb3jT7mnI1tYffiiEscJx5lTSkLMRNio8ftZzO8eQ5/H21RCxI2G
	 n0fi78zkBwGboJPRARkTqci/LlI+wRKjrn0QTmr3yZy2WHt64bJWqTXuPQShNhsRA0
	 eszEUGi6bd3f+gnNtCfbSdHQLXaF5LUxqJSIRC+TklOwsUwPD5fCdjXyW3NHT4/eug
	 bmmilQWckT7+6KAUtR25UDJeFO+IaAG+D/uRktKpRmynIBRj6fHxbwShfrhurSkOTx
	 R4X/URwOK0Gow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF72AC88E73
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941783370.12161.11815148949005235259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9476c39e499a564d53509df309d0649e7407a581d19338c93e6484a3ab8e6db
Date: Mon, 14 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789417833
