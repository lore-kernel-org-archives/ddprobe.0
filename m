Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F73F4ED
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726846554; cv=none; b=kSga/nxWdls0EvABbYJYsXF3kVgWCIyvWpUWMVC9OroQDuYaywlxWvBtteSVp6/+GpwBqunFOXFT6PYLXD4lF/2VQeb2hQbnOifRpPqwhhVXypvzvG4PcIBuElkpbKfUqOjPO+3FmWX/w8ErfiXmdXMLLuXS9Qdp6i1+GIn1UO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726846554; c=relaxed/simple;
	bh=qJ2mlxAhSH+GeigaFScFczotETirWkOk2StFlKWDX7M=;
	h=To:Subject:From:Message-Id:Date; b=aAX5VRdvojsUd88mu1VRKV0N/95XPjk7xSEX/xT4iUoEvcy64byY1bTKqJJW9xjutXI7PkArm7kipPnabvlYEnI2CilC8Chx3VGCb5p6dBO+IaAGdHt7jwTB9ABLvcVAVi8kIKTCD49kqLEi77kyeIlksNBrEqszo1EndKlzMrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wz1qNO9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wz1qNO9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B52C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726846553;
	bh=qJ2mlxAhSH+GeigaFScFczotETirWkOk2StFlKWDX7M=;
	h=To:Subject:From:Date:From;
	b=Wz1qNO9BTHmdXbb099gLSsnkKB6BogVTXbERdxYi4ahXBlUQ6b3OCvkKOHAP+pX60
	 G4q/76oOKyHwDt3h5YkUfUVF/ha5dMUbWyu2/twbRAZxhODkZHgN4JmeQo1bZ+KSYo
	 9xxnolKeMNCLxMd2HipXdMZpsCVB+aD86++gHXwFYfM78YnHsovWV3mgEFukK2Q/LE
	 fOhqLVHPrmyhIbxXQi+2aH+9UqQ59/ed/Q+YzByH12543HSNb+Ewa+2OpS8QKHQ04p
	 1ymKSuSQ+d9ilsCK7EV5HuK5Kv++byy4PvL9hl0ZXq7FSP5STCKvTwhm6qeNFgwr2O
	 dYmMe91kgWjBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144DCF9C51
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684655358.26174.13990092014895478761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4284e8049c93d405a51b6b6369d29141f409805a1e167fecc616270659a368
Date: Fri, 20 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726846553
