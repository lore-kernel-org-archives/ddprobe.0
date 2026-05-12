Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E613655C4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778587834; cv=none; b=nkPE6O2Jc1zb+A/8X8tsEY0tMJtiO/rv3KPhp/hkdpfdcoHy6/HltlLk9pNecUO/v0fvMsikIsYZzcXZaLPXSpBH0skQjYubvD8dLhvgXJayY016mYxOEU7PcyXNwAh0CmL2jsX7LFvE77lS5Ter9ot7/ByXlpY+MKjxRMZ4xbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778587834; c=relaxed/simple;
	bh=fYfdnCc8FH2OTxYNEsjZ7Oif8mOP37WEZPsdRhy/Pfo=;
	h=To:Subject:From:Message-Id:Date; b=JfGEfufy6bPqZImrnfB/8QuGe95cY+taUlhqoKq29NgRvoIGrJo4kssJlr1PI5dbPc9GjMswdNdAafC2dZnI4mRATUL6s73EqY6Xe7ViTmEwuvtQcsaDb/wYamzN549JGnq5DWejO6Nv1BxTICjIHnea8gSGCkjT3DGo1lQAFpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ci8Nu9RR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ci8Nu9RR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6AEC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778587833;
	bh=fYfdnCc8FH2OTxYNEsjZ7Oif8mOP37WEZPsdRhy/Pfo=;
	h=To:Subject:From:Date:From;
	b=ci8Nu9RR48jI4D99BmZQruWxWZsxcmG8MGREC3brkrPpfpjZ9uLQZvDU7kJBm7RI8
	 mXHTmO+f82kAG+zXxEpRkO2auPTGbk2QIO2lfzuqjpR1WRTZS6O01yhIJHzifds0nw
	 yqnPxHOZv97zQqC2MNrv5btv2jZ8oltFDYC1EkDx9GmoQ0uVBbcWFCGzn/v1/u50jr
	 noj+4V7ICawyS2sIRGgwZtDyasJh32Yxq1HAnie6phCMuKlYH8zbShF+DS/dyKKsSj
	 z46w49I4dVaTVgOmNJg40ude6DVnDHmNMUuB2/Kayfyv9Eahd4JAywkxeIzhQHpV5L
	 khtDsU41PNv+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC762CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858783369.25141.7726272016035343748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872059ae50744ceb1680923ef273a673ea3cdf21aa68a3923793280a02f91bcb
Date: Tue, 12 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778587833
