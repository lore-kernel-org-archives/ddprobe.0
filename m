Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA261A8412
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746277194; cv=none; b=djO9YFFChPzi7zRzbNUYZ6yiSmbdUv5JoMEXJ7pVPGaaaq8bUhMVWFNWcmR+Omj6gGdHHQVvjE7RLWnDgp2qKZmmeuIViPd4eT/m+eKK6c20yFMEzP0BbOjaaN67FiYe9tXr8apcB9xVIfxSxNZ/7YHxOLdtfc/z90ZcpLAvLOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746277194; c=relaxed/simple;
	bh=G5HLLqot9eVv1I+pd0lofeLWlLd0GsxYlIzOJ+yallA=;
	h=To:Subject:From:Message-Id:Date; b=MhVia2sJz0I9Kj9DRrh1iVpQfP2VXj2TU+ExnTKg3LSAfvWPt3YiHvuGYdBQUWm/McHgn9sGxJgN7GpO97tpou7bw9NSFh0rIHn7TuFveJvuFFuVKSgiF7wq+YCSy8IhhrbGEur2T9C8RLr9KHuo+O523aWKchkRd/CMgwOXgGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFknffwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFknffwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F9CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746277193;
	bh=G5HLLqot9eVv1I+pd0lofeLWlLd0GsxYlIzOJ+yallA=;
	h=To:Subject:From:Date:From;
	b=ZFknffwr4PntDQf75Z/HHboH83HBhv3GnwPu1oDjcI8Ww23I7hcmWVE/3kNjUC6sH
	 p9NKNyr9/5w9EOVt0G/Q/xo6Dd7nYh2ljkFCQDxnKee4DJn9q0bdU18NqV/5ICjcX0
	 gOSl7WwZY37uVSG+2d5aCq4k1i3Qyb6CMV9WVSJCkqF5Ktx4Wo21buvHNmiGmnmH7o
	 XAhjf89VpVf9fxIdKdwdf6lCLFEBymOiq2mpPkGseBC0CiJvXouVeVMYF5lnS5Tw90
	 mk8qHWUeAneFdefGBjJ5x0kb3whx6C0rvYAV1NbCl91U2KulM+OKg3Wjo424CCedd4
	 vrqqvV9ocLTzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F80C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627719357.25407.13229163132849541595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ec95e094cc6e4c84a2419c3ef1c84c11193e15654b0dfe6ed3556b90febf7a
Date: Sat, 03 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746277193
