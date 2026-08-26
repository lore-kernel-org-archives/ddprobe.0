Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D933B5318
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787787634; cv=none; b=DwsO4o6+1wzMFCbtl8P9xKmPukPPsXwuYZTK1RnWGTKouYOv/dLbYHU5auuRYyjlbYW18TrirzPg6mi3s4jP3Rd3LY/FojZ+nFi9i3sNcDn4tuDZ6/Uzj5eEsm6+Gd5qA+60Y52M5HTDYhuUuVxj2DDts6G06IiCo6TPiziqErE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787787634; c=relaxed/simple;
	bh=vKhQB/9ZSstnjjcdenLM+4VdAa8rYefqZgA7iA/XT+A=;
	h=To:Subject:From:Message-Id:Date; b=pmVf69PYVQnxH0qHGgKpvxuMRtG8mCF2HW/PeG3lpg0wOxlIz4Sh6rjb7KQ0SpaLb6f1YDl5c98rCk4kx2dsY5yJBMA22eULGu5vI1o0vIMbF/RSmw1W2dS2n92Se7eLfYfn7mjpwVRWmO7sIH6lvNe9B6VC5dIPGmoAZr7fcCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7JuNi2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7JuNi2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE78FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787787633;
	bh=vKhQB/9ZSstnjjcdenLM+4VdAa8rYefqZgA7iA/XT+A=;
	h=To:Subject:From:Date:From;
	b=W7JuNi2aw53BrrDSmosBpN5jijYanZnRpQ64rJT+6B9C9qkOixWK70O74kpe9F75L
	 2V96Iqjtr9d+ThttCLEo9Bgwk0gNgurzq+G7QiBMoS16pgfOOVnjfrs+ltHRBpCkWU
	 gr1UjeIWNjZIiHrzWFtdQifVSQfxKks9TbgIZKbe4KFU2VB1yuJboEuQeJMRt8LrUU
	 o2SvdL9ORYg6FrlOSGwIeSnEKgqejtnatw0KCtxZyGEN3dNOZKwMD0D2C1UwjUIJzX
	 W+/JPRrtkd5epa9WA0o3madhcDRBO1egj9WE6zUFJo/zUaw5DvDiq7IQ4HWMsO+Ul+
	 C1BcHNgfzU01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9652C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778763368.2779.9838706473201646799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9e9b673d8f3ee80e287f7ed43b62c75ec2ea912963625f2cd53460244ec6fd
Date: Wed, 26 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787787633
