Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C176FC3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720660043; cv=none; b=Rrja62L5lDyCYTgv8mlCL0auCTQXPCJ+vywCNIugJqm+xPp1G+whWhuzWD4+3PvqoE33iG7hI/CzZCqoFh3PTBJEaL247v8IKf9aOPK5AQGS3l2Z76owFH1RuYbjna4mArqJXm8c1dA8KAWzVxF76nO7mx/ANrSma5/cdp1+t3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720660043; c=relaxed/simple;
	bh=mMoVEdG+QvksSZugcnCB2nhljMci8sRHCAfkM5Y6FC8=;
	h=To:Subject:From:Message-Id:Date; b=J67Pu5P9I6Y4cI4bXqJ78rzLRS/gRlvv3MgDiBp4iU/y3D2Plqn/+3J4owwPQczvK/A+5TkUZ59kOTHYptNfA0VzZd7bGEe32/F3CxriPLK9/hqyYjfxYCvzH8Iu2osf5qryD51syYabmM5SxHNLAVEMkzRkfAYgPTc2a3t0pf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgQfYZDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgQfYZDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8FFC32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720660043;
	bh=mMoVEdG+QvksSZugcnCB2nhljMci8sRHCAfkM5Y6FC8=;
	h=To:Subject:From:Date:From;
	b=VgQfYZDKH3B1kYTSkk5YYQVjJmsKAcOkTaidEVFqo4SCj23dNkA0zOi7AsiXDtPQT
	 a9m8dF1Z6bSg5uDKWgWLrcH0/QOGW4ehtYPxviPTa/OMlE58XXrjaQCcM1CkLWbWJd
	 fdnukxH26TApkMq1ZBcy6yMNpkFbfN7S7nF/znG80WJWOTjf+RPjkN2HgA3Qz1ZP5+
	 TzT7uZO4ptV3dlEMOkpIdDXNQKrCG+YxZjDVAH6mcT8XQr2XyNxooGmAs4WMxMLD27
	 luCVTKLa/XSb6JlkAwjd7OWJ1OEa/Be7rB1LwBCYD7a4MrpQeMGvm4zLls30iKdF76
	 iTrPOUZVHNyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC21C3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066004278.3611.14154466723460734530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab7ef070d45b9db0337ba7536a3a384bdc12cea1e4e5d320918e762cf220a62
Date: Thu, 11 Jul 2024 01:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720660042
