Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537EC3537C4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776226054; cv=none; b=BleV3vDAtr5KWA0EUWL4awFTPer4dA6jiDHz78wjaWT7omSq7JAqmKU5zLtnno69araJpQ0hmmXbyczWcE0rZgP28SjeEIELoumgdiohrGpPX5KvRAPeGGEWWu0mEuQpz/Pz2H+p3d3A/medVkB51jm/7midny6vQTUl5VRvZxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776226054; c=relaxed/simple;
	bh=VDQoe4z6DtXj0lqnLimy7sHiyVNhfjMO0DTnIZ+J2CQ=;
	h=To:Subject:From:Message-Id:Date; b=hHWDrGcGOFElpW/8OfnIbp1h8QCuG1oZviWvcJZ78ppeScd8VbQEcIkccMXE3LFw5ILHuy0RjwaE7+ndrwrLPqrj5Ukw4NUrdR1BibEZd0rkyFXa2ParVv+/hQ38HikxqeC44qN+mSuYQDa6jFRh+4k5f1cCl+6tbhoaMI0ezCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQmchuDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQmchuDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD352C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776226053;
	bh=VDQoe4z6DtXj0lqnLimy7sHiyVNhfjMO0DTnIZ+J2CQ=;
	h=To:Subject:From:Date:From;
	b=EQmchuDJt2L9DxYs5iH4tRTy1kvSe/Xku1T5xLXp9m79yv0G0PdPPeVEdxS44KcsT
	 Nv43hWRVqg9p2meazv1p8aBSnUhyj38WIAi3vSJNb3G1G5fKVUKTBw/OQrI5mkrL9m
	 vAd1+u7IAv55+xEmsPAc1c7FjlGPWo2Y0IZua2Ci4WJyZcLSXD76lpqtCiG2HlEf1a
	 84dmwV6gipSTByZZi2uEOoifN1ZbQQs6V6y4qy0nk7T+21lwmtiH+LCGbZFw9NYgqy
	 PSVkF/oVVp3kACL4RwkdrdQ7hSIK87kHlyH5Oa97YUJN4Dx+qI/Ajj6GWWtL9OzlaD
	 Q9vdMRxPnoPiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACAFA0C26
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622605368.7074.3366714655150978839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04c9aae43ffbe5eeac2a88bc2b55e919b5b99218bd26ede851cc2ff5e38526f
Date: Wed, 15 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776226053
