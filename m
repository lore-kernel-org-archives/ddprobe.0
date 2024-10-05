Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D143B1552E0
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728150953; cv=none; b=Q0RXhHqM6WpE+GG9W0YtXAMrmZGjODxUWOE61crz+XSQ4yo9w70Mgh/kkldBbE9Xmt+AeFcjEcZ7FmJdl5mF5gqGtq38IcRWfxHKN9uRefW6nmKLKH+LpBJcrtynlZMlwDO932BahZBSEx+qVI4TNvyA8Wv9CpQU3GMjCECFJF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728150953; c=relaxed/simple;
	bh=lk5ua9sgmIUAqvbKl7F5YmVI6Au3aGe3brKm/y5dTrE=;
	h=To:Subject:From:Message-Id:Date; b=ARhIiPOdQOQNxNZRHexgUCyAqSqviBlpZMuTYaPl4pzWc1xR/KYr5/zbqQ18DXL8/Cd9VYCvTnTUzdRFTAuA0juzQ2NQw7mviYyzprcAzG2Cz+9bBetQb9B3SE4bghWxla/pDoQodeWWfvkjcRiZY+DdZb91+uaddanMIzu2HtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp0o+lJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp0o+lJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2290C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728150953;
	bh=lk5ua9sgmIUAqvbKl7F5YmVI6Au3aGe3brKm/y5dTrE=;
	h=To:Subject:From:Date:From;
	b=hp0o+lJyatI5sqPJ6/liyAzJh/ECAsNP286KDyFp40z5kkdXN6je+PB6J+IAVYIVM
	 gqzcU/+SGzj3IXuR8jTncreDmcOOe0THkvULf1ALEP9M4uGlBD8YKk1yBBrbyq0aOq
	 5+9a2YVBiX3xmbLSjFbzNIJiknxuXiGAsuO5LangY5ySaYCcjTLYArw7qk1nDVYfpU
	 2IoFfi3fFuMen8+Fl2mklHtCexBFwtd2YBdC1+qsAminXOQECeO6Oy/hHzsq6BdzQT
	 YQQc1Ntgo7Wt37/jJWmwpgFipygLqAvXD4DN3otdaAIJHYl0+M8RmBM5V6Lq+Of/Hy
	 STddwbOoy4NCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE01CFB42B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815095360.12846.9279575467616895033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b76020999918b4b934eedab26bec953f34cc5465621bc0f948639679bd828ae
Date: Sat, 05 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728150953
