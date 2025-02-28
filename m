Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1B51A4F22
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740719934; cv=none; b=nEBDVblk8Ftm7b3Utw6NObi5clDN51tS5VDiyBzg42UyzIaS1ScxIBekIRTs0goqfCXeFPa86aVQ+84rmbXvTq9WsuEVbRovZKRwhfPZtX1pZbUmF4cx2cL16he9/1bVZ/Qo5X1heVXjoeP5NirlItbltFaNvPzMbxdoQ69B238=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740719934; c=relaxed/simple;
	bh=aI6yq/FG0rWeN74GAO+3000WniytuEsGdAhRwl5bbHQ=;
	h=To:Subject:From:Message-Id:Date; b=uqapyjhLgLwpcLtJ5IoB2pMQdIT8uRewgGxPLJhXbcfezoBN/0TyWFPYMXhHYXY5BW0iCmHZ+ZzmjmvAj9jiAGtdvJObjfPKKhZ/Yf0e/M2RRbVDnleTIHkZlTcjwg6bUxK3KLjfCf79UBShyXZj0dDYUQO3vXA9jS+T30WqcVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipEnMcCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipEnMcCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740719933;
	bh=aI6yq/FG0rWeN74GAO+3000WniytuEsGdAhRwl5bbHQ=;
	h=To:Subject:From:Date:From;
	b=ipEnMcCCsYC7ZIPSbCbqtCzx00/lwztz1BYRxzQxfznqTLV4Py9B734ZtlTUNlw1k
	 sGHjQy1IjqJ7dpbnwcLECb5/T8tT14CzbNFMWuUW77kBxpBn9xjKSrB2Xr+gxyLU+W
	 CmKXxfhFMHuD80yVwj2v3VYgKdBtnE275XGCABlZtrRDJsDxiXDfNaUt8uVMgZVLEw
	 gBeTmIQc5q0eZp+cDDxB+w+PKKDPGGaPtRSgqPr4cD3+0ZUvkKHhKpD58dRGtI/DB8
	 HgnLncbhd0yhJCzczX/I8z9R8QvpOHvC71n7m8mF4cHbW+QBN9VJPji8TduhUDwb/8
	 5lxIo4HDjri7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91248C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 05:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071993358.15591.9404504197936539321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99a081759ee8bb0b92a74334a3734b644f055c059e1c196365916559174226a
Date: Fri, 28 Feb 2025 05:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740719933
