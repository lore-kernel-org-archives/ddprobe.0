Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30517219302
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746013794; cv=none; b=L/i0YTBrkqFXzTHmJU6QvoEcnBs0F9140RXltocQvWqXF1PfpqjyU2awvyNTnnCGzRcU8eczl26c/SrEZ8xy8t0M2HDW1l6rqwXUqkoGderZyETswJiUOGPlaijbdC7XwZ9FNkAyp+s6Y4klBjZsevbSiZF7q+a1pMgUkyrbMnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746013794; c=relaxed/simple;
	bh=+R14f1XJZBRJrCg6T1M0BMNK2ASJcGGPNY+lSVFNPvE=;
	h=To:Subject:From:Message-Id:Date; b=DzO99oE/OFLvrbEOWTV9qbuRQEJBOu3NjacNsBpIJe7musmEtLW+jsFA7282g3QKEbidsodCXd1R09gSLktQtcPR7SzzZFpWw/QolPxUtiyYROEd/NZjrav7kAACRSMTtoXCFiRJPM45u539yiIgY+T/HDhHr0vdKqmSL+ROHGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgnm8tlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgnm8tlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E79C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746013793;
	bh=+R14f1XJZBRJrCg6T1M0BMNK2ASJcGGPNY+lSVFNPvE=;
	h=To:Subject:From:Date:From;
	b=rgnm8tlQ9C23A0uVJslapyisdr+E5XaImIkS5VlMbGZ+CqorWIDJpRwvzdLB/kzeM
	 VwPtLmg33y2pqFPfMkwLUFvtOWBdSVT+arQXfbs5/fP1URWF+RyU7WOZ85IDc3p+qE
	 WfC2J2x4jdMskawB/DmVuHVdXjUXSm74PY8T0CPjmoh1Wvnk2oEITNf6IqvY1CGvCi
	 fiZLBOCO7kWIttLr5CE8Yp8Zsi0t/LsTjySSsATivwxpDW6RpT4Dbxhw9d/8pMsXXr
	 6pAY2qXMcIyGRdZUM6euReCXsjD415S5R1Ptk0+oQpfrtI6YIGIPCh5RdbPSLzy5An
	 Aa0dXtHLfNq8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3DC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601379357.30796.15875249804435504703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0defca6385b7d7d9215c26f9e5bce2f60babc1ae7223565c11ab359bcb850209
Date: Wed, 30 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746013793
