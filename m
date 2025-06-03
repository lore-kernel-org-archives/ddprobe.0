Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C9418DB24
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748989794; cv=none; b=LORJXD7ACx81EZPkbqlRz+5q90fDyCFg/2mvJ/eWyUyLmbArBq/yJi+jqahdj75a3G2/AD6CGqEWEynsSk/WFjt0y3//FlEuQ+eLfqi7+YKzHvWI9rHMAjM2wYnXq9OYnuZ5dRbyxzRLdvJFFLa/KAtf9xSwndDvm7hbm758Dd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748989794; c=relaxed/simple;
	bh=rIdOIVAoRs8FBOxHVc7TdtrefHRzJkmqXUgP7IQ7myk=;
	h=To:Subject:From:Message-Id:Date; b=iUehtBdh8W0wLax4nL7zAJwpnz2djowPPzrQN/jWK62XsIAVGLLybD5xMookOrloP9fmtxk1vN1D7ycVZZrI9wIiJy7rG+t6eM6WEwjXBhJNnFT83glxO463VQFfg6xnZZZJpYkXPhoVdBfbsUdYERfeWCnm+/7pJg6EBpklgBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO9EjDvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO9EjDvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF31BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748989793;
	bh=rIdOIVAoRs8FBOxHVc7TdtrefHRzJkmqXUgP7IQ7myk=;
	h=To:Subject:From:Date:From;
	b=WO9EjDvUw1EeAHMpaAtpdomf4HfBd+nocNGBDK4TQRcRIQicUoAUdiXPekjomF5Os
	 neA+X9TLMciWD46c0OHyGoztb/brs2UXoSLnWFcqhKU+fwzVi0I3+wKD713KP9tKAb
	 UNpTPBtzU78+0K7JvWs7ZhWU7hJUwvk9Fp5YJW4UnT8CN2yM/qqf6cDYcKwtoN3Bwg
	 78oas6+fNU9TGlMdudkpj1ROOZdCGU6QZo1VRXt5Px4ST8gmrE4IAnBsnO2bJ56p29
	 2XrXisDCKAuCoFc9k1MI+4WE5YZ4XFBNItm80tC1cXCJmBW+HUgVDngiubcdb6Tcae
	 ppuOWpv5mgHYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FD7C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898979360.6849.4851119626534417095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eff7c8f23c358731f099962f0fefd8ad37f2a4c8bf142c2f3148cebb5e89953
Date: Tue, 03 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748989793
