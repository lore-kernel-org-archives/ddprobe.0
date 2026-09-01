Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB56036194B
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788271234; cv=none; b=QwMM485482CHi+4Z7SSgOXgBBqIQDo9ukYDnXCYX5BRtfo5o0OgaM5sQlHnaFeSnfN6D3oKc+kugRwMXHaoNxHfU4/rmQ5WA/RvnV2WHgHHip7e3xxZ2r/Eohy1KvWWBWCj9Eleu9HGUguvw+t4pzgD+ta0b0guYz+wTDICIBtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788271234; c=relaxed/simple;
	bh=LS0KFY02My7cyNqs7bPeOlGRj7Xe5jyYo+x5T4TQ7dA=;
	h=To:Subject:From:Message-Id:Date; b=BY2sHcpSJid5RNVuNEoor790FN250cJvKiLHsxO8CnWbPNYS8gD8gHTMYBqe0ToN5J+/3h02BkqyUqXGMpUNt6n9LypouFHqY93PttM6oArFuiJ7YP4bPQ952sGMDoj87h3BuV7NLkY5GZImhCnPZLFM5mgLctFlmzozzZKn36c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAB9HMZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAB9HMZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2605C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788271233;
	bh=LS0KFY02My7cyNqs7bPeOlGRj7Xe5jyYo+x5T4TQ7dA=;
	h=To:Subject:From:Date:From;
	b=lAB9HMZ9u+HUHYiKzFb4xjQrV8r3uGpEpg2iSbnqcN6ItE+l9yMV+KrlIeo727Vsh
	 ph4s1N6L2GWfzlLXz6e32O+PHPIKT841C3LnVjTWxu0CVSeFcc7YiJGemRai0TrvTU
	 7hS76uIa2GlJly2FxsxauVCf2qbS7kRuBlOlQEZMZD4EJk4o8NxUt85bQkXOa+kfE6
	 jl0lwuT0tbfel6KCCekDUWg11Jx6OUadeJrAO6w98fonJGwYLDwrNtQoEqTp8Z4syJ
	 AjFx3BBaC230Rz/lmbYRTK/RA9hOssYugiQZW4F9o+kdCGI06095UH175LYQNeYIeZ
	 ibI8QD2sSP8Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4EC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827123368.18885.9252922142933486780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88872550cc3177acbb76234a2d0ab5926e33e7e952eada78f1f7154d50366e9
Date: Tue, 01 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788271233
