Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176C62AF1B
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759779594; cv=none; b=atWCXOdr1t8YG/VrI3pZSc/VvTX8qoTQ4Xn1Y7YR6BfMFKVw2/w02kvxoIP4m1Ytu/URdOVPPsCjpRQYPG5vmDNTydNo2zsewvCsTuHa75ESQf9PPxmNSwzq310erS4DcAGDS42SFkPqFTXor/aKVMfrCh0NHoBdzw11Nm/zK4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759779594; c=relaxed/simple;
	bh=U8IC/3omh8WkfOgZbeQlbfVSxQKSosV05ozWCHC5XfE=;
	h=To:Subject:From:Message-Id:Date; b=W4gJ6DeQBdyglb1rMZdJ+CC96rVEQyPdyEjNmfEixDpfjdt0xdcFInTncxgq5doNJ4RiChek22bf938fpzP4dZxZQpTyVTmS4Li3zaSSPUfv8dDcGzJfMa8PloMp3cRCy0dlwIXwcODJjMwzlrM26CLfwHFYKAgmCA6lDTP1dHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZmwADij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZmwADij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759779593;
	bh=U8IC/3omh8WkfOgZbeQlbfVSxQKSosV05ozWCHC5XfE=;
	h=To:Subject:From:Date:From;
	b=MZmwADijsJrsfFTQ0iSd6/oAPTmadsQM4PCrEzJwl5sBtD+deCFVSqsWraGJZhqzV
	 UHpCakbfz+PLM0auZmJG5P6BrW5hgPt7li1z7vSP4tpSTBmX8MfI2+YxUOAkgZwbyK
	 dwOuyjxLg0hk5CXW/iGPEzpBG7au6g98m04TNeYxxjQ5OpCOi0erE0i/832osfZxAS
	 UM+J1fO+I6Jg9/kNnakz/Zn37dV/rjKBzSNQWIepl4ceQb2wcIN9pc7wYUsUW+2C/h
	 ZtA+cUvSELLSFv6Zqu4IqWN0Pi59Tyu3wPgbINhtH8uvjGtpEaFsm9mxPpmOwrFW9x
	 31YVZH04YbdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DBCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977959358.6379.13196306485558417738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f3b8f01dd7404ea3bddc95b736a29f3e6bbe6c3a3edc97484d80dcf34fbf20
Date: Mon, 06 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759779593
