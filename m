Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DA33644C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790778634; cv=none; b=R0BQ5/vx/C3Iwv8KM3K5491sLwOzzPwf283HTQriCdmpjGTvB/VWNACuhonvOcHWYpnLy7ebnn+Kj4JQNF3qeuM7UuF1/E3EOTsABbOgXVGLj6pI2nu++4NIOtaCIjxG0nGZfwG7Vw32RJfMvoiaMrZ3DlbjODkthWfKOkcCM30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790778634; c=relaxed/simple;
	bh=HXZUg39BXUk5tR+m6iPvoR+kQjHSgin+fagvT0ro/Z0=;
	h=To:Subject:From:Message-Id:Date; b=G8P7RhvSn+9OluV1pDxoPK4JDL5I79xA3JY5EGrsQwTA8mK1KDus+4+a4HvVryJARyFNjpq53cFZWfs/1LDoxxkXNh7AG55IQoL+y0jM83c0UBHi6GuAXc5Zd9Bqnw1aeiw7u3C22tgPAO8ZvHdDab3EoaPvZEP2TjqtvimpyO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNlydGXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNlydGXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F14C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790778633;
	bh=HXZUg39BXUk5tR+m6iPvoR+kQjHSgin+fagvT0ro/Z0=;
	h=To:Subject:From:Date:From;
	b=oNlydGXDZR3+689bmVMGPPciCxBllnL8a4vjD+bu1168Bxd92efsU8EBDaGmixXt0
	 logl7XG7P2te1ILwnPgD+UWpfcxwn/HC5QKEVahDnjLR99LBDzsnS5Jpbq3LmakHDA
	 1OttZBeP+fX7ZYXN+t0Hp+L+nlGk6iPDhuuD/+rSjvZ42FFSsEhCwAWHpLGfubUaqF
	 pXbqejoQIn1zEaLCYEBD28MWXHN7sBBjd/pm6vtzRU+l56BIZznPrnQQRxwtVdoTBm
	 lbDXtvdPoqOA40jhaw6/67biswWUFK7TFV/Kvdar5GAYeY8adTEXtW9wd8q/7uyF3V
	 BouqauYeiEz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC421CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077863369.30554.18032148810241823861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9772ed0efdb828cc03c6b12ab0e14e16ade83f9cd918c3143641c82923a806a2
Date: Wed, 30 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790778633
