Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3455086252
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713876623; cv=none; b=hHoqXD+ojSjZGVaNSkLQT2zMOB7kMHrj6GyqmDU/KZqdG7tIPQg9KKP9wOF8vyupJPvwoTR1RZUYznU21Hy4JIxzbM1iVi8Eo96ugP0ZYnxi5AH9XBa4MlNH+1xrDLxAU2KVUgg8cNxftu+Ye8YJK+2LufCvNJmgYii33I02Fek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713876623; c=relaxed/simple;
	bh=HNHMnP5k4C+bc/fonoQY8riVTKJjy5uMtRRAHfGTaXQ=;
	h=To:Subject:From:Message-Id:Date; b=Ly4ODdBWkt+xIcSZO5qs+tjWpWCVR4b3EB8/EYFR1ZxNFXGWfJ1moYPX9X7QnRQt9n5m4WKTSLqhUVCyZBt2TNW7MEHRplNjCxDhNiW4iJuRx4WZOAfhXvJ00eEAev+D+p2LcXZQxhInMnXj7n3bOlGghKVxUCGnvn9haRXQ+Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyzSEM9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyzSEM9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC677C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713876622;
	bh=HNHMnP5k4C+bc/fonoQY8riVTKJjy5uMtRRAHfGTaXQ=;
	h=To:Subject:From:Date:From;
	b=TyzSEM9DpzKnpUDvyX+S+e6gRyG/RM6bpMNBAnSXYDNpYsib0X3UnYWSiuiUYdtDq
	 7q5Ep2SKNDX3CtgXteWovnV0ddqScO52T3Mjbm/C1GYak92fE/dqPIiWgcG+rFsBeG
	 OTsLItCF2EVuHTipL2FZgt9dC6S54uiVrsH18ItD24qAmd9b9ICPga2eafzgMkL+1C
	 XLUXEhlgGDep2H/9kO6qOq0SGR8Dqcm/fQV6KsmV24XCJCMT4zchK1exl9qtls2bvN
	 P9+rRldxtnWMN0KWEE1jRfCOzJXMIVj+WXoeaMqVzFXNN2WUFJt3wdrzgwQ58zjRgY
	 +GdQbmDB+JF1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2B4C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387662276.26971.5152358958633514752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301cdebc5d584e5c960c909819f85a60d0ea6fb0702d324ad0facbca79f9a88d
Date: Tue, 23 Apr 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713876622
