Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40119ECC
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726146954; cv=none; b=PFZ80/268FmKznYNQ8e+TkveW5WBQYZ4pEbY15sxvbZOmfFPeyux1X0Kd2l8bcbNNQsm1axJ91Jmmth3e8G0H9kK1oFtrwdS43CtBqiPGZlZYTNLwX9MQHked9f/x2Bc3D43ejGdN+2IvTgCgpjGF537rssj4dim6nlD3sVYxtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726146954; c=relaxed/simple;
	bh=pTKgV0afqVeMlFxDuK/M6lURRCb55GWYZkUn/HsxxFo=;
	h=To:Subject:From:Message-Id:Date; b=njeb6fIqkx1U8nG2p5AN5Msvsy09E1Zb4JBQ9naE0fbgYCqjmHVm4x+turSGEa1LjMrAbxym9cOieEcIh3oYA5gOgiY7At4/RZ3fSLaH1PPJbbt1PBtxpBrlZeEsBtiiIvd0hLVcA0Hfsb7llj7lvO8e9UIJ/zleVMDZoCHQkbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuyFePVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuyFePVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C43C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726146953;
	bh=pTKgV0afqVeMlFxDuK/M6lURRCb55GWYZkUn/HsxxFo=;
	h=To:Subject:From:Date:From;
	b=YuyFePVRVPQsCMVZe2Jomce6a+Lq+tApLWgSct+DhMSu5ryNwRKX5NA3wfTda96yM
	 pR2ypaw5IG5HoalllODdKmcJ0quZms8aCESjdaQBmAcRXGw0A+1/sfP2FOF/blSU3a
	 IhD6MNfsDjGtjxvNXpnH35aIPQcbalGA5C0Iv/TOODCc3Y84Yy3n65fNG3Aw7Jx5y5
	 zYIMZyjAGd3QZ2bkmU3qUzryWhCYp3jz5tEEsh+rraftsrVFzqJ0fTgfFeOhpVhT/Y
	 B4eeeqkTOYLGX5zEO6qnI3/tc58P7gEOUGC94JBgCYRWKcvtiyCIMezbqUVkYnJOQ4
	 vu08ptgURRSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E1EE57F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614695360.19845.2087932236261380581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a16a744b9ac8176598885358caaf86f00357cd3ace581f98da99e9ecdf30407
Date: Thu, 12 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726146953
