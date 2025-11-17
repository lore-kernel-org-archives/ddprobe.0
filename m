Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA99A2264B0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763343714; cv=none; b=bEp2b2LJPs1aJ+UKkXGHCBY+s4qSpGQsX7EKJAVOkhhETXp57VHDf/IBFDBkD4jT0zkYcJqM5o81g5F3mZghVKoXksZEYMFuJekLHKt4/U/kbGezpf9JXxVFKtVb6vdshXBw/vk65kTXdfrvG91AWSVdpd4oOY5nBbTNypXwx3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763343714; c=relaxed/simple;
	bh=+/RRciI994keDAZquXokYITwRTpQTpa6SmgNznULAew=;
	h=To:Subject:From:Message-Id:Date; b=LY4ovru1wx4FHfB/UgCCLGMrNrODLcmDNTjKGAP+kEaxpbtp+lEoRXk0Jew3Ua3eHJE6slI0N9OFHCD0800xZ3/ot5FQs5YbSlVxf/SGjgM8NgrFa0R88N1LDfgIB5EBamd5IR6bIQ0hMmsz+dIdggAFWIjW/lUo3WRDrtRPoYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT7eosfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT7eosfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4438C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763343713;
	bh=+/RRciI994keDAZquXokYITwRTpQTpa6SmgNznULAew=;
	h=To:Subject:From:Date:From;
	b=VT7eosfyImDN0Ku87NpRqDxY0eCsB3sQCLHEpT8wtsY//+NI8i9TNp2pnXxWHvXDH
	 puL4N0DV5DK8G0XrQHKzWapCPo9E+himyxvcGc9U82zcS+EN6mNrxHPOA4aJabacAg
	 ZuVz1GtYxRHKb5OgeZmQx/z1tXwN6A/6kYWKo+eKg1GS1JhyO5NFiFXIc4c1gJ15Ts
	 8rRKDp5Vde1qBY8hrPxhTw+00DmT4JQL9WdICi5Aymp7wnA9I1GY/l4Sd312knn3zC
	 s4Z/parN0ImIpSG82o7nAlm/5L5GQzIRtHlMrdBAFDO+sEEE7YWZwRW5w0Qq/s7WkW
	 kzjOnJ24Rf9gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CFBCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334371360.3396.4145875086810569801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636797370a078cbf9aa76fdbcf736a6829d2b80644353a131963ccd65ab7a7c7
Date: Mon, 17 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763343713
