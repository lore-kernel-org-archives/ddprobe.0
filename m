Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC231DB13B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737710754; cv=none; b=oQZflpPiho51rf1CyC57fS7fFPfZ4pHCUpIPyCxM3XW3iXw4DtooUWCkCOljdHPWfkL0AoioXkeOTBpZXNB4kJiQCXPa4TOZWOAKIZgOwbatctl9uLhTh4nrLVeVq3q89ErJUyhFpvnsxfCIt3ULKn+dXXwALYTgeBNCqcDSxew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737710754; c=relaxed/simple;
	bh=zLZ02A7MPeoqkHRVuTXiokT4pHYKOj+seQIFWlXoH7Q=;
	h=To:Subject:From:Message-Id:Date; b=CvGf3LIrXpPW07nFdHUj8/G/5QD89bQ/mL3RqLr/qZC6zSr//tVJdTKF7V2qayD+iaHnRpXtwSrxS58fM7d3qKPKNg3IWrzIWb1SYLdHwVlUBULOvoFYWoVlRSrrRK4erlJLE6CqmlOyuO3E4apmf7pb6rSvWEviGtggn60lrgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVseDcQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVseDcQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0510C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737710753;
	bh=zLZ02A7MPeoqkHRVuTXiokT4pHYKOj+seQIFWlXoH7Q=;
	h=To:Subject:From:Date:From;
	b=oVseDcQYLTYz9LCdfeo/mTm0ffTjXHYuhwWI2+rsiHJkQ7OkU7bexNkSBldTgLRqd
	 4+sM/gU9/ycTaQ8+rv5CE8ibs3RoxEDaRXaivVF82nvPcCn5sUFaBlX39k6NGXQQG/
	 CI5a/HF/HivAm4W2U6V7E8AzW8yN7t2RyGmIaFfJ/98zkszEftoy/QcrX8XK4GY4qK
	 LoDMWtZ+XA1dSffRJ8fcbqQ7zd/o0UUrDCQtnGAiuc6V8IX4GMo2Gqu/xIIXer8dTP
	 sUPrS5v0NVMX0/eAsYmi7618pSRy1vEuOKwRwSODF3C/54R4SeC9D7JIZd8XZA60+u
	 0OtI2ONObmZYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F2FC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771075360.22410.17556163790431817155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169662bc839bc39393d62a8f40a4bdd6a363548f6dbf20c5a5432a8b12048105
Date: Fri, 24 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737710753
