Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E3222069E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752946194; cv=none; b=YWOzw7cMCWB6YpqqylFqyjp9d5SBRP+KRnoTykAmfq13k6okjjG3+dR30I4p72Lnuj2dHU7D8jSTTbTcB3WdIN2eOufQaca1THkeTPO2BXq9byWE1RQL165bRi9PO/5ljgjXx0LXH10cRCD/aMYxvbhUxd2uRtTVXYwuKVBMiIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752946194; c=relaxed/simple;
	bh=3++09EMrGN2QPPUz1gS2F7sKm1I1Iq19iu3RW/aOV9E=;
	h=To:Subject:From:Message-Id:Date; b=t197006Apo2WPb/Z7O9NtRKX8A0+ZwvStxeT2Ur0HEKP36ZgT8fqJudjRjpX+DJSeDKpWc0Sr93QjHxlGjog5JNhOuE/oq0AL2HUVmRXs+quJv/v1tmMwcAytYZu8zTcWg64sY9byYPQ9wQT1pw3SkQRmB3dITO4UkYpIn9i5Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtlJETYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtlJETYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F87C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752946193;
	bh=3++09EMrGN2QPPUz1gS2F7sKm1I1Iq19iu3RW/aOV9E=;
	h=To:Subject:From:Date:From;
	b=NtlJETYZC5UPugfZyoO6iFmTXUadvtcRaLMH18wPG4oBnpOhQ8CJhN+ZOsEOD8Cq1
	 MwvkQB42Cx0Su7EnXINYsljqBzefR0hTLtzbLWQmhwSiY/yZuQjFkw1/gTPCqkpCOM
	 GWlrFTihaL5xFRh8dwye1jhtGup2fCviOdo8sdsu6lDBFRTCECNSXuZOUpHS04yGje
	 JQgEmrtcVVi3CdmSYda4vPFfbzzZwbXCiwta+wsFp/29ti5NzO0QSodq7UpIUk5cPe
	 2YGmQsEPxtwqUVZgKkF2MiLK21pUE4Nc177Lsflkpxcuy1iI3NVskwQTHqdlEStQ5X
	 ZEX06ylg4FHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F3C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294619358.27453.11535938868510078937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d308d756dbad56cba3888441ebebba13c9c2e9fb136b4ada7317828f7a4dd3c3
Date: Sat, 19 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752946193
