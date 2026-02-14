Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20029136351
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771049094; cv=none; b=WGF7CVextLqHA8NR334LpdhDmz2LbRz0KYFAnQXtcn4jimrJML7/+XPRaN78dNJUkg7Vg29USVRM9tf+mrh0CcVqPx63GzPLsty8cX7+p75w6oWokVfYuiG04MejfhAeQaHicvM5nMN8YPMGDuOiCIEtlX9jRL2cJcl4Xb5GbGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771049094; c=relaxed/simple;
	bh=kf+fRp0qd3OfWoNIHNg+ILwKScGR+3vCyPUO4GVKiwc=;
	h=To:Subject:From:Message-Id:Date; b=IBWhQeb2ArHxP28Fi0jGggwyC5tPGJkji+CH0N85d+vN5jqcO26uo1Kqy6CJxlvtO42uXX/IxyIwu3TIhrhqxfNKuj4BVFpRtBqM9A4YsPDtiYhjf/Op+8VBVym5Q1MRs4IpfAyKqYXD9IZhQGAUF6+cpCQmfC0MYGopJ+sI1Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfX3QBgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfX3QBgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9410C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771049093;
	bh=kf+fRp0qd3OfWoNIHNg+ILwKScGR+3vCyPUO4GVKiwc=;
	h=To:Subject:From:Date:From;
	b=QfX3QBgt+7ONlTt+Xp8ytHomGtUKrYD+k1K0RrGbqLpjgu3Xhusl/ZPz6QtDCXp1D
	 Ovd8bMDygXqwrzDQj9iUEr/Lz6mziz7E7dHmEOKNudN6y6Wr1LgWs0GC5zwVCfw6QU
	 redTEchiwal+qYSZTc9WOm0KpYgWpRiWtQDmfcp6agbG14VCsA7tJ6X5+GdPMz+tRa
	 zPKBDSWZOMzUNkUlGoDukUTEk705Us6afMSi/TrDeGxGSnDsFTgX+VR+ufSXkuKhwc
	 0K+7zfBLjhHfjUpn26iS3nGwdh8W8z7yAERCEVdwWD4NgL+rXhbdi2gL0fJVbJu2jd
	 kqPFJC8OYiUbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2CEDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104909358.4115.13630405114142289573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61934b147da144d49f7bc990d1e21bdc497f3afc5350b2fae2d7e9eb02c79d8e
Date: Sat, 14 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771049093
