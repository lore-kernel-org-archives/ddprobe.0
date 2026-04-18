Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2113625A357
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776504454; cv=none; b=Y/9tGVImU9io9AHODH4qa+u44nNND0gW8kphCqas2BOPj7C+jVhvXdfMjoz+UQ02EbYwm7Xxd/v9iRXCspd/51Q89nkbC1iP5e0JUjGYCRRBaxCK3zHtOiRB8VyWwZ9UefMk+EfVbKGHmMGCJdYcv4LAY33UWsgzYjRhtHO3m3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776504454; c=relaxed/simple;
	bh=GExthG//MbpkZ124TFOQhQumlCtjS6RuJ/QvI4ZKJ6U=;
	h=To:Subject:From:Message-Id:Date; b=LTMmg1Sr89af6C0B7em6xGXv+CVck11l/Vw1Lj2T/0VdG8N6idDxIcGhtj/bHCmysm19obWgGLudty8iE17xSHRe3J+Wrjr5f5tsjm60VP+5Bg2LmffXjNd+KuWDYJYH1ogQsLbnKX1D8AQXuBSWoGSHTNRBG+BxAX6kSrwjEz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZsFFJUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZsFFJUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7527C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776504453;
	bh=GExthG//MbpkZ124TFOQhQumlCtjS6RuJ/QvI4ZKJ6U=;
	h=To:Subject:From:Date:From;
	b=TZsFFJUvKozFS+IqMF7awQUICWscSILz135ZMpnXZhGrgq4/CFMQ4IbbhuQ0cGp8k
	 aJ7Dz/Ep1ZFxQYGxOzfjTQswbI09qATlOVNA1zFYi5JF+7s1JZIK9vsrmVxcE/qzPm
	 scpOebnBgUUZAflWVgTwGWuiU63S3vx6a+e+asolIfv35u4ZwQ9nlLh9qBxVOxbTpJ
	 p6Ta9QpiBZU6l+VRsoYHr3wO0jKpyXJt55hmr6z033zBTA7SRo1jif+i7Qv/i3WElV
	 ui61zc2zrx5RaIX9mk1Lzl+1ZgttC1PwAXQEmpl4GnJrSL+i7gubmJhkdhQekJ5PkA
	 EixPcJ9OYqy2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D3F99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650445368.17458.15274661151487100615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08864613c933105887981f37c24db34fb70b4e4505e83c649e606fe5018d8b45
Date: Sat, 18 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776504453
