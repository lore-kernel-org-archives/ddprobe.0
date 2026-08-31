Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DD3306B3D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788214234; cv=none; b=lsuc8i6EZhQQMpm2nFWEJJx0eeY5fAj7IqDyaWysSMlkiCzg9EBjwsrMflNPdqoVRFhAIQKWj1EismCxTprwdXodWO1vh6K3N9sLxFWsBpjxN5vxtfK+eh6TyRVaYdRdbd/w5lRBC0O8yLCyF1uh3k5+12vjvkG5WPc063ExDsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788214234; c=relaxed/simple;
	bh=V0dj9rp8b8cQYc/+CL9gw/y5dcZrV7UhXbjU1iUjEUk=;
	h=To:Subject:From:Message-Id:Date; b=XwLlbN/MKpu0fBmS3DHwp6O2yIUed4yW8zF+kiSfx5EIenaUF/oGsoevHmirXwM4SGtNBxqOG+CHL856VZFO7oKzT8xs7baySRq/WvJwAayYZMAum2myxeqrivf5PRn+EKFhoSYHQYPNGfjteJBdkRo2O9TXqLeNzssw5X8dr5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgJ8b+ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgJ8b+ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33C8C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788214233;
	bh=V0dj9rp8b8cQYc/+CL9gw/y5dcZrV7UhXbjU1iUjEUk=;
	h=To:Subject:From:Date:From;
	b=hgJ8b+ZY5vmDkPx04aKB1yZr+eSopx8USqkJ9jbAmhxqRM1+wQdXbBjgwAkRhat6f
	 1ws8hYSS1u7gSxOKH/v/SnNA7nvpXG0A3aqgs53BCsHNxVhlD+z1tzECrIPR4tlxZ4
	 lG6Jbkc7SrXovZrtrMT1YEHxdrV2o95dPwnBiqwyZBJZ6sBPH9nfolEvirhochsV5q
	 5odMJ7eHBENzNOfjpcO4Jol0of6DLCY7B2XhfrVlezqGr1bEOxwuVaBiDbvM1tOpJo
	 TT+5V8zinkNBWoZ+EIWN+a3WO7ZeM/DeJOp3c1ARk7UyrkV1e/f+k26kCAdOW/sVL4
	 PWMf0BnaL6xGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7B1C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821423369.10894.9955585194533291433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc6d441ff74c04ee754d69b2f97f382f6887adf599e1110883834c444594b94
Date: Mon, 31 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788214233
