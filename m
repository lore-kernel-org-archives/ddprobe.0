Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67DE2107
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711289896; cv=none; b=IkO0ro8gsZ8IUU5U8XGXYcjNnZlgal7OjnFrAKPckgaz8qFAP4uf9ok0F7TcyDKBNibHBNzU48g6OmKfHWHvL5KN88fSm5Oi27fMHU9z1TC911+7SLE7zLMk5SmbwSUPfFkT8+58IJOX7Q5ynk1yqRBXD0JWT508vvRPFcvUrg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711289896; c=relaxed/simple;
	bh=PTZ5pl+Gt6OW9ylIlCcs7KsverdbqrF4exGJcLJu+LQ=;
	h=To:Subject:From:Message-Id:Date; b=ph8dfCZck4JM9si0LB1xQ8ldG5dqTGwIJu/fFjFQb5m+OZ6YUugIuyD5AVzfpRhucbBctuzD30VdPK4n9l8dVP/eSv90vEtSGPYdoSw4YV82Z3H15wnmkgiLxcrdJSHZu9+y69CeOF4A0kiGwdJwQ7/cGXIjlzojIuW6zzwFvrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wui86K0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wui86K0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A1FC433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711289896;
	bh=PTZ5pl+Gt6OW9ylIlCcs7KsverdbqrF4exGJcLJu+LQ=;
	h=To:Subject:From:Date:From;
	b=Wui86K0Rb4YeWZrgE7SWUeqDBTVAZSarKnCOXtQHhkralXYo0BUsjQWp4fpBOkPmD
	 DLR0sDI9qkhEZlrElSZmV3uWdmeXouh0nr/dOCRgkon8XY9q7y8MPEDK0Tzu8+YMJf
	 +WXqMeaduT07Whq95ZqVpXk0AzMtMKucSna4pL/tmu5o9fZ+DPC1G8eFnssWjo0JKG
	 IMJm0gsaOlzLQCYJnNw3g9KC3iuZfJmz3Rncn+7OFn0iFKDCrI7G4yjq/VkpTv2cso
	 T70jFwv4Xs238Npw6UQMqaEPjpjr0IYA+Ew1xQtV9QuQ80sJrD5yPSsGFCYXomTLAS
	 WMU2YA/Lovn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69116C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171128989642.12737.15802641497741215008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e158d23e1b7d1a6672ad59775a9c433060763b3f9946648cdf93cf334fb951
Date: Sun, 24 Mar 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711289896
