Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4344E47ECDF
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789219834; cv=none; b=UDl/H9v5Pa8VBsovik/Dx7MTM1Eky0WSnPO8gCKMJErmxUc9FVUol56uWg+0HJI5YD4BlwsA0t54idXEqmPbfDac4B/Sl0ti+qdmUV9O0zzIVknHSJUxw3xGxZ/+OYQgVnXdl4XLvad1oXSdgLsClOEE0zHxAPcM+Dxr8S5Q3f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789219834; c=relaxed/simple;
	bh=MgUHa4irbjZHOETZJLF7wIMjIQgntFT7KbI85VeQZSQ=;
	h=To:Subject:From:Message-Id:Date; b=SXp4KtSS6zjJZAnyDa32iY4TgMf4cumIOc3nexna5HNG0oFrMu801mdd2Yly9n7j/eXJvWjQrfioWsHTifpM5wuMQzvpSXv0Y+dONYL91AMe8pF5Z0djYcoWC04a3bi4qJQHkmqLRnh+qqnMTa8OcMyL1LfQ11rRP7JfMgwvbEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj+UyBMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj+UyBMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC44C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789219833;
	bh=MgUHa4irbjZHOETZJLF7wIMjIQgntFT7KbI85VeQZSQ=;
	h=To:Subject:From:Date:From;
	b=Zj+UyBMGRqm2XGEhs1SDpUCT7l7CVLq4SIKBNBsw6dYkfWO4c52HDTBnDqfq4dfg+
	 eEeR2MY747UusGws2x9T5T9cmg45Fv4VzN+kHBGCFPfl3PWIUSgt1UYMzKD3cA/rs6
	 yx2DWrqQOTEJkBPDHwHc606wONbtHJfv/aLkpb/y6WsyrRjc6VOAz9A6NGTu8CoA2J
	 pNGpxUOZHq7M1i2QBghvnekY5QMtGENGyKIckwvpBQPS72Blm8uGcrpATsNUsSxjcX
	 w4KjKNo1whY6d6Rf9YIlhzXYXVowTPe+R/ktphXQpNqV2XWXTaz8XC5LuW2dOCOMMd
	 8gbSANq8qVgQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A69C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921983368.19745.14529193128193158253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92faa1017122e20bddd8a319b57dea33537d39322bbd31f10d142569d554af11
Date: Sat, 12 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789219833
