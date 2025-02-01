Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D600D625
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738370753; cv=none; b=lj9F10uHavulD2i53g+npJwnYuuJ9f41yRO9cBOsbtabAteYNKIKEfNwxo+V3BR1uRNv54TAGzDqbaIJS6ivyIUCtwiE/9yd0NiO7onLDjq9db3b9icq/xvLtuttgX/qD/PBoU17S7JYVK+mE2uQ3A45/eO5J7nOXEZCX685gQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738370753; c=relaxed/simple;
	bh=sKjgmyS5N/bJA34a/G2ZyS9ymdY0/EBDdKWiYll+QfE=;
	h=To:Subject:From:Message-Id:Date; b=uSAtsQ9uNuUPUAZrKlbgk+1SzMJgoYyj3vKvGlDvmvtgCI/YGn1l8oaP9DTHK9vFha74nrcwzGQoANFopzk+30yMCfvedJrTfSupwcIy06q1NAThm2C/xbU8oxJ7kztYez3H7U41n58+m6BRYeYVmKDdJuBnXd2OkdeStnLRN1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBiIZYPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBiIZYPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B453FC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738370753;
	bh=sKjgmyS5N/bJA34a/G2ZyS9ymdY0/EBDdKWiYll+QfE=;
	h=To:Subject:From:Date:From;
	b=GBiIZYPOobRYOt5DCMqKPS6CPlaIVWm7wjyyGXZc6ReD3MMmKhDCC5NOKep3ciOzi
	 G/hlGZyjseOq07+2emo8EqH/XCKHujnrwK16O7IpFVtGqsDok4l/f+3IQpQgkhYY1E
	 KO8XISfOInJDVmB0/dmEzfJyMV/auQUnyJb0E3Rjk8YvXAYg0oq/vzh9BNxENI661u
	 w+TMTXeG/aFD6/ug8Y6nBD60vaR+z/qMeaQQzFoeoY/dGMm3m3nw62P6nMqn/PkbqN
	 AVRFSuxLB3AG4uL2AZkSfKiB5BT8Bp5j131P6O1xfRXGN+W85pTP2kHemOKHaMfgJr
	 gJFFexMrbeuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8E6C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837075363.451.8550669949399535677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2f7d28cdda47439a9c82fcd52672388506b8ea50769fdb9fc47db685505e45
Date: Sat, 01 Feb 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738370753
