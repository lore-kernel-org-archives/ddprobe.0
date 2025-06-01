Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E8AC13D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748747395; cv=none; b=BoWMZb8fD7Gg1rsRaEPoKBgg7iGu2gCH42G+3Ev74fyAqJCnSNXt0reA9iVYu/k4uMFxRNIg/DCXRIZ10i/jRxzs4N9fdjA5GqnIeVzSB7XQKz5mw1zsdUfSXc2bweFwO93/ydmmGQKIsZZotZ4VS69Wrz5pQF9eGPCQg5UnyLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748747395; c=relaxed/simple;
	bh=/9pwliolwHWmrkylo2XbFP5MAMsmskdzM49bzzibprE=;
	h=To:Subject:From:Message-Id:Date; b=enbBP3my2HCjZuqqB4Kgmb1vks1xjmWrRdQ65E9n9O70DYiHIIZltCS2cZ3XQy4mpuKkhzFHktsve3qwtmRBpZCRNjXdsUuAjBhfbVXwtfbMFNfjpZl28btAZqiuKU8FBmRcIokyi6WKwbaDQNt2sCvX317Bh1yKR/dJd8Mb6nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2+H9Mar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2+H9Mar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D9C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748747393;
	bh=/9pwliolwHWmrkylo2XbFP5MAMsmskdzM49bzzibprE=;
	h=To:Subject:From:Date:From;
	b=G2+H9MarmVD2buuoWSerUvL3t+NmF+28n0SEGUnD7VOjQq9ZlgBWoKQGtwY/dD/Qi
	 mooCatc+oOxxljcKfCcgO/l0LORG3dmgHTSI05t+m+7GVK6UhGqx9JpIHHjWt+IWoq
	 AuSaODxSRofYp0kNvQ1AqaoOa3eLfEcRj5d0/LDOPHWPZj1HUqHbgOnOaDsykG9Auc
	 5RnXxdeTsPg3USxAkJz49zaiPOWScQmnEQs2YE0WWVwG1U2UaSatnFNhhX3MZ5EWjD
	 9jYRag6m3NBhFWkDMGNMSd1jW/z/NHV1DMEkKJNdt9G+Azor39Lldb9KcUWDSbLacR
	 R7J9RjpoFAvfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94625C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874739357.2030.6392767161447218622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c82a8de951161336876e9aca687e256e94640e90f06873631e99fc3f2a925d0
Date: Sun, 01 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748747393
