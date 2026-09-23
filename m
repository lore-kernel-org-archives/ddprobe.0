Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF78412BFA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790185235; cv=none; b=t7yju1gaFTRn7pS4vC1L9D8q/xsiYxVAk2avlOD7C4tp37nXpQzWDaMjs0ZMAaLe9ORf1eCMnoqKiwGa3ZFGXmnGNWeV4xmZT2YOYoVM07UEyHyGGi0zxP3GN+P8/R9bD1HBWl5eRJW51Taihbq0Y5Kw13aZ/3PdYzwIS8FiMOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790185235; c=relaxed/simple;
	bh=Z3yUslwFLf5POY+3krRghRXkmOPUBSxPaEBH08aoKgM=;
	h=To:Subject:From:Message-Id:Date; b=D5XVb/z2g00qu2MepzHo9wSPOFyF+VDfSxKER054k6yaVS2RF+KWTEUNOYAgPeuto67oj5cD1EzbRysZ2t5TLAY0hws58NfEPWuMv8LL1UOvTcy/Yi4Zv5Ew5lRtVK2eHA337SfjzN+tyY+GzAUdUmEMest7rhhEduOEfLFInwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzxHxHQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzxHxHQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54C6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790185233;
	bh=Z3yUslwFLf5POY+3krRghRXkmOPUBSxPaEBH08aoKgM=;
	h=To:Subject:From:Date:From;
	b=JzxHxHQ5ajQOYJaS4nlPKBrL33X9kKGULWGyFy8+vae+EixPWSAmCn6uwkF1hGrEY
	 2gM8SoVuZYp5rAwBMY4rbiX+yf7xuhVtYrm7n/y++CFRjeP5ol7dGb3K32PkD/iLbb
	 B+SLzuQ+hFi5nwkv8opsxFBw5X4JCgXq0FHMP1HlK+j8Ulg+/qmDGmLNCZhZDd6uUe
	 8rbaVeFWKjosbiy5rgGmsG79bZ3I1FYNOh76VgpmV3mwEu4mXRGDuZHeEZK89rS09g
	 ZqjATOusx8SxlL19ylAPXpM/AIp2Xhq27HIYPmkvKFvzv3yGMiXamda+UGTA7PDKJB
	 mbXwjqFlFTV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2560C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018523372.5995.4850160604306248933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd3d564ce12b25bc357af23cbed68db16ccdde2f30e532779dedb92274ebf42
Date: Wed, 23 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790185233
