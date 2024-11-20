Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE2315625A
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732084554; cv=none; b=PNQ/LZLg7YxNV6OAoKco/9mrhs04BYJUlrS8w1dgXWdIcnROYpsirgVmSAYqovjz8QwzOGtcpNy59WushBiU/bpqEy7qxK9cEKkMwQwxz2cFHV5SKc4vcKejG1lmol2mdUjyrlsFCbnUsK9TqLP+HgwB6AEXHcV33axx++PL/vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732084554; c=relaxed/simple;
	bh=9YP/DHC5Q9c0kcM9tADbqg02s/V7pewVSdJkOeEbHUg=;
	h=To:Subject:From:Message-Id:Date; b=tq6mFjfDTeBn17nYdplaz1tOUpQY9ljbHcBiNRT8Id584KVRCJCLHKkEYERNq5QuP2Z7ginm99Pn4X/uDhS6htAzrvgYxcQ+0/dQyYaQ3SrQ0u6AJ5ORJsZEM5qw7fsJHI7bE3kKeUrPUrzG93VmV/YG1JyjmKuPXYbUBTORAxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyhIuAMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyhIuAMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71F3C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732084553;
	bh=9YP/DHC5Q9c0kcM9tADbqg02s/V7pewVSdJkOeEbHUg=;
	h=To:Subject:From:Date:From;
	b=DyhIuAMqBrJ993H/FQQTsZZBBFuGY6QJwVsXDFs2bOpVVGknu1F0+SoB0SirtsqmJ
	 9EU+0L12rzrqzv4VMVmov9WWybzbr4tjZQ2hIHPJybzgr7gO8QVt6rWSS+5VC/T9mp
	 kMIoH5JJ4zu9BeE9TY/NHexLSOHKW90ww/rfSDB6za1JCNRM4DOgQrwysQfYiiFuD8
	 92aEQC6dXXzqXphLwiZ4FJc9TdlvH9+ygjRZi+4eexsRE/J3dGDPO+eEMqCQW2+bUo
	 QpAEGrSAHdWM12teDPMy1MQYYg39b/AJrd3f2E4qFDCqWb7hxuoqArYklGLtoFYFz5
	 MfebwRYXUEX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9552FD6E2CA
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208455360.15581.16168025310802825812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe47c9f2cb491059a92c614c2fadb43dd8b60cc4f3ab1b692a597ae3bda4a3d
Date: Wed, 20 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732084553
