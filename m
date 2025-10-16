Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B586345727
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760626194; cv=none; b=LQn8pt53THosHMrRywUiVcyNMYjPbft8YowSHmakg6mTzq/D7eOvw6Qs5qZ6Py9C8ltrsOW3zaEM+zvqqcjQoVTVjuyvO1LIpP7dVhkUobPdbHIcVffKRFP7sQgYb1su3ytqlryWI3EcemwpExkB4q3YwkchI3uA67laVFQZK70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760626194; c=relaxed/simple;
	bh=u6GANVvnXvAAHh9BlaR5+n6aGhMQmImSG6QNzC/1s/8=;
	h=To:Subject:From:Message-Id:Date; b=U1XkzEFZ//G6SQ+0iFzXm2tvoYOEZLmjagdnlOeZdZqw5tN4/B6SWANbkEEUOshxPH936TzHKpwYyO6+wUkvzeJzcALxD8YSe2AqKR6/W/dYjTnDT6r7kgOTr8U5d/ALinTUp9aAjlvnAKX9mxk7UArNx5AdtDZTsUe2hOjZJhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXsYj226; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXsYj226"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F89C4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760626193;
	bh=u6GANVvnXvAAHh9BlaR5+n6aGhMQmImSG6QNzC/1s/8=;
	h=To:Subject:From:Date:From;
	b=tXsYj226UrcuR5jsVeVuiE5FzJuMF17Fi6CVaX3dOoh/lhPCJ5T9vJg5YaPBCEybZ
	 P1oKNIAMJ4m5AbvKnX3R/rdHRL29VxyK0f3byaRrxAtsdIRiiFIZWXbyn3f5c6Anmh
	 SthZo1X1Ay2XtGJynxK6lLyhJxkGDeDGduXvH89ObyHJw0yekHQXHoHxpY7MS3EdcN
	 AH5GNBmYA/JLpnFpeynGaPXetEcbqggoHwDeRQhyYMx7CLLJ5cOWT+FtIpXCCnnh8J
	 qSgzmoXEx59WorCoR5WosoNA/4b/ozOijOAuAB18viVPkDwFsSuWO2yZ1ynonJ3v0L
	 hHqcM9L+cSOlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049BCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062619358.18142.13184924260824161540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b09b03319bcf7f02b8323f76a848516b259f78e6d81dee29baeed45adbdcdc
Date: Thu, 16 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760626193
