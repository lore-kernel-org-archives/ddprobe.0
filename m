Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3947537A83C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783765714; cv=none; b=ipHvYYdOvL343YpJi1z9RRdqunA+0jT3xBrGL0kGDARF7DGFr+7bibTPnlPZR5z8sOpEGExW2H+NAlY/y27HtrgPkBINGcHsh+nsKmfKXtz8Myxib4BePAe/w/Sv5fsDMa63uA1jPULaI9H+9FTw5Qm/D9GriaoA5PWLXgdcT24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783765714; c=relaxed/simple;
	bh=sNJpG9MwfGmmyZaCPXw+rhrudoFTABPhBZL/gvqxs1Q=;
	h=To:Subject:From:Message-Id:Date; b=Ew5Ug6iyZm5mb0zTFh9SQlXGeSTIlBVWG/OisQTtSFhhOpRuAhC7AyUER6MOPh1AJ5dTeuEqmKR2lQkRXH1xReG4nTXxHhnP4nLsmyX8IFL/tx/cwkdY1kyLOw3WRZd0eIjusia2PjdqKQkEpjCOdPPmKyGtFcTSEf/Lpe9uVW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckSuhWlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckSuhWlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4108C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783765713;
	bh=sNJpG9MwfGmmyZaCPXw+rhrudoFTABPhBZL/gvqxs1Q=;
	h=To:Subject:From:Date:From;
	b=ckSuhWlZE13q7aZbIHypgm0JDc+y/pDg9lkH83hzirMgTdQD9zfOMfUvdv3H/OpSk
	 i7DrNAPY184tw1DUJ6iCloTaoW+Cfv3Gn9ckwAzXOKvWSyBZWYHPPiIm1QXLYeHZ7U
	 qYVROiMfnH15W4XZPC0LxYIqvo5gVBBfcyhCNhx3wxOkVF6Ef48sBGEM0hxiSCS5pC
	 G3vhXOMk1+MQZSfaKzeGxaP3dd997aOnbenjtdgOFDsTgsa+ajx9MSEHStL9wgGKPz
	 jZ403u6Vit5VEPl7+Sn0EFOlUDR8UVq9GativSbwRGuHFCcFdjWfber2DsYQVKOmRR
	 J/fQqMRFiXnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC7C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376571368.32754.17600546321496138359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5c755d1e2734adb16b3e52b6f6d6aa15674070ea5796833ccca5411fcc2f95
Date: Sat, 11 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783765713
