Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C91210FB
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724543754; cv=none; b=Je6TziF566MGMWyeFasPUV05RCs2/BQh6Zk4J2YBfLq2hmk7D0znlJ1IApgYmggKOYCd9zzNSEg480i0WgoJD9Nv3OEutpGghSC4JqODJCh8MTtf6aSPXJ6RhlOKNBufrD4fLGzQaGyknShLG2Qv/qPTEiMolg75EG6KiqFH/p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724543754; c=relaxed/simple;
	bh=Fk9quze/8v2CGGksEW/+B8y2FzG6qLjSoP9S1hGxJf0=;
	h=To:Subject:From:Message-Id:Date; b=VD5x2zGlADhKzPTqe3yJJ+Jv4YcDpVROHakWf2rsfVbTBQHBzEsfXA1AJlVP5B5L9dyEOJ17NcaPkL2iA5N2I+sfC2uK2cKP6f++m4hk8sAI++6kmXXrIgon0tzMCITBAuIpC5XGegAFFDJwTeThE9/wsH+PN6In5Xjn3eO1qJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t03vwSPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t03vwSPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14D4C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724543753;
	bh=Fk9quze/8v2CGGksEW/+B8y2FzG6qLjSoP9S1hGxJf0=;
	h=To:Subject:From:Date:From;
	b=t03vwSPgEZkcb1YWF+Afbey4jO46poWrLx9PDWJG5WbUozdS2SoHZ+baB0coKMBGS
	 4fuvfjKauPmBPB4WCMRx0tnZMhsvaRfaykW2SDNI3KZjslXMK9Si/NEp7o+K2oSOaN
	 gOPa76gCWK4GjaPIgFeemS/EX9Jlgfm4z+VuKXg2UE1j2FW5JsxFVHFTjzLdmRqY2y
	 F6WAQnpQtJKvLXOLkn0TJv06sp9WkIujCHFWmcV1fRj3k5cVNS/Z93sk/RX+BKNs0D
	 OiF9tCvbB/164mngShOWxUN1crZPehctrWsPLPfO3IEPvw0EU75DdjtH2K3X7swW3G
	 TEhVLK8fNNZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F40C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454375362.12045.3751762749440888048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e467882af17080c32fa9b714e9c778543af591ce7a7804ea915cb72e37e9f63
Date: Sat, 24 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724543753
