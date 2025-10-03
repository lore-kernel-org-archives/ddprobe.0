Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C2C264F8A
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528194; cv=none; b=KPts6Dr9f+fN1UO7+H7bQ+uOit6DmcfDKsanQJWbcxWHJyK24kldSs5JXzlnOYDl/4RB132oVyfpVMtcsjfjllF1sbSyAK2gURmqa6h2kFK6dtdK/Qsqj17L1oiYq5MtqVpu1Oh7UFYoDGr00ex/8NFYK9Vzz85yuzB0fWDVweM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528194; c=relaxed/simple;
	bh=/76CmcNGv12kuZNTSxDUkjfep27dYYU5XEh70tDUAp4=;
	h=To:Subject:From:Message-Id:Date; b=B/0cXSo1GDfvVVagWdGRvrc27zS45s33/O74/cTjlnQQcGq/JNdQ7vzs+MAPE1D/kBizBsIIzk+Mb3KB+OEHmEp+TcjmczvAfgKKmBN0/XwNXzzqyWuv79ttOuTHefIFczfpKi5cbWfUUBobH7ueNMc5++ZEvMOak4GBlX//hX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkytFxwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkytFxwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C1C4CEFA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759528193;
	bh=/76CmcNGv12kuZNTSxDUkjfep27dYYU5XEh70tDUAp4=;
	h=To:Subject:From:Date:From;
	b=NkytFxwUBZn//bRuSe3GRUiO9UKH74cije1mj/Tpm+TJjl/n/PXaQjuRx8jTpKVLP
	 BpaenJCugbbs2QxOLV+Vbx0aEvunClpo/Gc9VeZWA0IOt6s0NDrkLu7k3c/1GFkqog
	 Ewxwjj/3Dgd4qacFFkx5P9C9wL2PxAWJV/TxCH28aJJjO03y2CED5vMzA7r9ZHaHv+
	 N+2jkEM0ZprUbrwpB5h52JFR3HPasmv1YVqZE7kWdzVuwQ4f1V785kTtTxwRkbbqmF
	 23FEYXEilZcAwl6ujglM8nlAPodNUU+A3ZNmsUoF/vRfRxfSKXlRukXdCLCHE05iR5
	 LurVwpzmcJUtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94275CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952819357.31101.17328763813833108156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9710c31cadf9c0551412ec2853d45863ff5c7511ec5ffd8fbf8d4e4af06a438d
Date: Fri, 03 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759528193
