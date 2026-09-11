Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E06357C704
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789155636; cv=none; b=eF8nHmLQkvqR+VEgmiGEgu9a3df+NCcGvBOcXtpSrC9NYbuuKUI4L5YYCnc8HjqUTQLVYlNUqLKhtNh08BZeIJfq/AQtncKJAIfV2/n1FDNPXu2khLe/zr/ic10rfN7hXjrDcMcFZpIve3chvDMHezbR8haRU/g+cn8j6wwsKPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789155636; c=relaxed/simple;
	bh=QznnyQrahN8hpI8AwF5hso9j+2+YPRAj0pNscap0TLE=;
	h=To:Subject:From:Message-Id:Date; b=TZPyqr7aAe9PwiqbKyY6z+e74uFKZ8yRfNfbRYg6e2SMe/F5FtayYgy05yA1yA1a0mgCJd2c2HJBujjQW2UIpPlrs1NepbFSz2folKewvw2TaiEwmBgFfEHOO4k2nv+KnKnMZicf5H6tLohx/vlQa1MGxvjSJAMJtE8R3pK4OWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfIH0Ygv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfIH0Ygv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C27C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789155633;
	bh=QznnyQrahN8hpI8AwF5hso9j+2+YPRAj0pNscap0TLE=;
	h=To:Subject:From:Date:From;
	b=GfIH0YgvZ2VtyMn0nyzwn+vBfIrohv/VK4UOU2HTM2mabKvp5D+kTATX/9u3zdRup
	 ogBfD/AzHvl5HuJ2uv9hedvw4QxjvNIZG2/vNX9i1vk/ajGzHi7j7aOnISWjkAgWPS
	 KKgkgfX9JBeCZzbrUhOU5WDOUqUeAqMgThGM93i3nuT6abbpfW30PxYIhyk0fsPn66
	 nJVGNenaw6Od8+NhaUNlSCEGNnSPUwK9jZ4j5auGeOJpHqrtcil5ED8Ndt0U7JnJkV
	 PdvyX6jX29EaTlp7qBlspRoByb9DW6O1fe1xnC1vf6eK4pX+WRdDVoAm6xZWVRAup2
	 yXA4D1D0veGLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF1AC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915563370.13369.14193650214676751294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc5abe3bd5fd5b8ed5adb18b06b4241f6c074b0ae1450ec08c9269541da9d38
Date: Fri, 11 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789155633
