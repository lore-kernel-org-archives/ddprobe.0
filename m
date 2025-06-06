Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD31DEFE0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749176394; cv=none; b=vFRJA6KtWMLJ6njrmlcCAwU6vSaAGqg2/L6yEoubSryvHQUuiwga5XH7AQdNa5EzheI2qz7qOAeL41QcxkqY3nTPaCXnK1zGvaIkOyje/3rBI+MXKyGWyDYfBFre3GSos8kVLZunZIRrMBfkcePr5oZTD1BbZfkB/+u5ly8vqJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749176394; c=relaxed/simple;
	bh=HzsD4NtgqTKUsQ1HF6zXV296QxpkGG6oeBqlo1eD1pk=;
	h=To:Subject:From:Message-Id:Date; b=nyzLahe9HhBSxCNaMXDsO6lMIYGAG4iAGO98MKfvRN3Mx0bS1wkVw3u31SkcjIcCpbqmM/qYz77jUF7w0BwqN+CF7ngsK0ufyP7E+Ua0NTieVRJ/vIl8DiokKnO042ZeN+kpQ4HvDYLn0psYHTfsJ9B55ycjgtGBFXzemzHcIW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYxPy8b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYxPy8b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A28C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749176393;
	bh=HzsD4NtgqTKUsQ1HF6zXV296QxpkGG6oeBqlo1eD1pk=;
	h=To:Subject:From:Date:From;
	b=eYxPy8b+tv2PmBbR+TqCpTqsNnAlD7yL+xRvin1IUtk803k1WglaxFvV4xJIsLafY
	 77mYV641716zgo8V25H1oXNZYz1/4rUf2/GNt+e5CmEWF7nlUpAvOPYcW9Ssom4sgZ
	 loVi+gtSSX6yWa7DKrMTrGVOsjrr7ST6zqeE6AkbZtbVDcerHi7kLHAWVVospn/kwF
	 j2CWxnhx5YR42VYyS4UpT9sRdunP7+q5oUd4gNnZZUdgmwCvax32X//Y3UrwnSCaku
	 t5aUjYE+TZ9boLpUp8eoziCDmAryckadBuEfuepEwMxLOUwz30M7J6GQR7ICPs3f0A
	 vT5M4msRaa4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F19C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917639359.1736.12590964637842741889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a36f94691d4ecc1219db4a7b57b1fa7ae9a157a9c435478415c9aaf1680331
Date: Fri, 06 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749176393
