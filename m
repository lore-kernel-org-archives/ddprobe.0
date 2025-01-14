Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5634F234CE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736855154; cv=none; b=JwKmTrypaw/5DvQHjDACd7io7lSoAF0dDSk2cHT6AB9wQl4h6P2BE3X2lpzbUTHym/gWoQkDT8/Z+ioXYsTXT3FtrCRSCpLEoDOWGb4dq5MOF1SUjsOh9TyPzsa50eqc/HY0jyXBs+Iqs41TpBXDzfAxLd4O95YxvR/qbSpnXQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736855154; c=relaxed/simple;
	bh=ot+xUf0WgNEeIICnVUDT8gutZS9NwMq0EPARht9EUKs=;
	h=To:Subject:From:Message-Id:Date; b=NsXxy1wf59wtp7SavgWQAy5cKW6Kho+VhtJNxyxLP8mfOppcbdxVS5gB0RQL8Le9POWOxvwpSqPQTx89hD/Spqll8gwMTbO6VLssdSQ3JBwsK7KEKI3e81usF/HWNUxf0JE++KoWnxuyAUdqqxoalno8yaNh4E2DYcs84Q0IEsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h031a4Qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h031a4Qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D222BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736855153;
	bh=ot+xUf0WgNEeIICnVUDT8gutZS9NwMq0EPARht9EUKs=;
	h=To:Subject:From:Date:From;
	b=h031a4Qz6PMHSLEXlDtILDFGmaeD9Fv2r4N+wfSdXmEMR4nLY8rPoBeh5/74ZTaJ0
	 A1YmPL31bm/668iI4o1JYpFRcEo91LzJG6H7tXBLOovBAX0J7/Wgbg6rWn19iF6kaV
	 XoAlhOZVjcC2bdlmlDj1R6h4DR/uMfaxQ574+W/SMuphhapfcc24XT3m0y6DUMSJfz
	 lu4P0TfzeWGWKKRaa9LZsMoikt7crigc7Y9/dVR7/Pieo/xK9ut2PiICrc7r2a2mRu
	 +RIRdAJjHJ6Ym6Cet75UWjV+cxMZZkxOa5xaao4me+09g7NfeqFkeMd9kWtYg5Z6rd
	 BDDUDOszB/ERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7307E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685515365.20652.10329901536924480583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfca1fa8aa121b8f7f94eee337e580a45e43648c9416f38187ba9fd5fad2a0a
Date: Tue, 14 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736855153
