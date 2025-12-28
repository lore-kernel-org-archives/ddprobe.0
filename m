Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359DD3A1E86
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766924034; cv=none; b=ka8jtDYvMIONcG0H/2i71IhbwiSISOqvhO5JxisP6WgRslV0p8d+p4j1QRwxeIUPTNU+A6ju4NOmhSgFE7Y43RhRvj55zTAxPMrKIQ+Onv16yNArOgY3DmjdKZwL4Rg8RLZ2Jh3z7I3mARjoFGfVI3xoHZzmNnd4AKpKRbGSvSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766924034; c=relaxed/simple;
	bh=nEogAWatzm4udMlpxj8OxChWZb2q4PMSQGBAyyctoE0=;
	h=To:Subject:From:Message-Id:Date; b=fFgvCvjwPJrs/D5ZtFO5bfJUpca2I5EDZG/19sH4B6hYn74NS+IyAmKE4Jyc56prWzMIYle4Cb+fxf9/oHlVfnOHnY7Dh6rV543i+dJEIaDaom4raLhIN5U/dFQ38NB8qpPS6r9Vhn2kOknxrETAj9mV7fdWIP5Onqa8IH3+ydk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/BFwnd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/BFwnd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766924033;
	bh=nEogAWatzm4udMlpxj8OxChWZb2q4PMSQGBAyyctoE0=;
	h=To:Subject:From:Date:From;
	b=U/BFwnd5kfTLYXzwuMIrE1c/meM9TI3LxqpG6rSElJNTBjkeJxyK1j3MJT/Gj/VQQ
	 TCF7Y1q4xswibH14U8Fpr9pKfgirtRg7HYbozVNMZgqgJbj/OafYMxUIxX4SLTIp4G
	 +8Y7BJcvRWwq3+xrbaZN1yeq7Rl83X31OQ3LNHtSCPeIpTYM0DQ0eSCC9x+ZVtYMqY
	 FPbaP9t214Ky+oBXwyJI9I0XjnF87uLR8fmRjmmu/bovXMTStbYyHCTkQyc3DpZqXC
	 yUxgtoBPkAguOPOwQ7GDLNEAhovHTCVDr+kJ+mOn6U7HBMhE5ckX94FvLNPoMY9LIz
	 Y2oxq4G9FAEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92646D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692403358.1337.18371610582092051248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ded10bf9d622cf8395ba13ec85b14fea19a4af4de558c1c79b455cae43dcbb
Date: Sun, 28 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766924033
