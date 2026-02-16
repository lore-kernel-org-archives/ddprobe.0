Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC7271443
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771244094; cv=none; b=cxjeIP4NLchv1yE41CE5lBmR2NU1Pi0ICTdH0pJbdVH490hJf2whohDk4uRywSO4jilfTecVOtEI5Py93yxjQKP3+67EJODl0/kbl5FoP6Qd6O1nG2+RRpYDD/rPRaBMl3aJt24vJIkqXFcZ6mN+X8za797aD/nKLLzO6wLGciQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771244094; c=relaxed/simple;
	bh=0qleGnugFHMh9cmMzoYaRd39znPATRo1i6GVlU/Ma60=;
	h=To:Subject:From:Message-Id:Date; b=o3cnnvw8QZdkEnyMwndNTexCXH0pwnx3gape5TqJJn7i5EALaqwiQqzml/GQIHa7uSBYXdX1Hv2w74aWXX6BmGnp9/GMjClD+7ewPpX6R6NXBzS9GT6GZFMcxb/5t19++CxkOlt4lcoNfbmAOA2I3MwVYuT4aZ1e0YTko8JqVT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0V4ctfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0V4ctfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7022C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771244093;
	bh=0qleGnugFHMh9cmMzoYaRd39znPATRo1i6GVlU/Ma60=;
	h=To:Subject:From:Date:From;
	b=U0V4ctfh86ZWOUXYsx3a8KhBObQCJdypXMJZf9yGV0roOQGl9U+Xrv/NLHTPDUJ5O
	 PAtIoyoEUE0/TyjMae4sV45tx2jhlfe7wVQ4K1RjOcBlnkqm0kHIpG6q4uk536KKLY
	 oeM9fUIWcpR//rXfZMZuUfpv+i/b3zeK48WjASVqVNgybhai9vgv/sw+dCLjxVwyXn
	 1kd6JvjxJ6qhqQEek0aPCODUp2UEnsGDxoWPGrfEeHhK9hYQIY6mNfU0k0DaAF23eY
	 +ou7mRwoMDwmEhafF4j3Xv4e3VVzqYmmAjVnRmqCDSYZiFfEwzcc4UZnkrONsx8xRN
	 sABZJcQX9/L4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4138E7BDAB
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124409361.22572.8970347367425321000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3454b797aba36511c6420ee547f8eb5d84d5dd4e0e2599cc7a609f2cf8175879
Date: Mon, 16 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771244093
