Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E83D8248D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736267754; cv=none; b=NGMqGhBEcajhTqQwyoRFxrJgRdcoU76jRyF1mgoBVshwfsLStE7KTtdz5Whr8Jv8vxFkl9eRQRLOGnaKFDz8AGxBJoRgrdgymukbfL1cQRdvFh/5Q32h75wCNXo2FAdCXYjSDFRPbvIWvEA8dTP+dAkclLrhbuSe7YzN/JmTo+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736267754; c=relaxed/simple;
	bh=AoGJZrLdyiRKIijQQzQru3ypR2wsUtC/efLufB16IlE=;
	h=To:Subject:From:Message-Id:Date; b=IndKwvFj/F5hu1noHtxYzkEhkFdpIWNrVbYh7nlaq7nPY43QKp6/c7W4n3CYRwwWh9LEYo5IpyUxZhuN29pDmj8j1lbqqK0D0D/JBeYZO1yA3LtNZBtx7WtHNOwoPRbVQ7OYPyJH39byMs+VFEKiQx6nBcoNtH1bulbRKlra1Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFQ+k62R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFQ+k62R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA99AC4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736267753;
	bh=AoGJZrLdyiRKIijQQzQru3ypR2wsUtC/efLufB16IlE=;
	h=To:Subject:From:Date:From;
	b=kFQ+k62RGTQnW8rKHjefP9mtB4wJXZ7Ta/X+EyYz3KQ0BhhQwlPkfozrX+STUQHP+
	 +55aXblM50axLaUNL6MKbXZrkFuqXV1oJ9wuXm0Jj1cD01KhtaCNgMWf7jKbCDpwMU
	 DV8uOPykGnUBU8Zznm58Ga808U0MkGR5IBe8vFsOW2VZafOIQkMBbfj3JH8G2LwrNb
	 B3V4mqsjQCFU17qa83ca3sznUrpRsHx3UUDeudBipvBiVVhwj3v0xdpheB0P3Zdp2V
	 ZibJMOjFEH3CFiqUnrRc1MHwoMRSD5AlhO4P/jU7vumBC9E9/CFpHtOfRR5JZ4C6mB
	 MLydsABMLol8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A311CE77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626775365.14519.7899554992837708146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549f98f6c8354706e6831987442d2c7c0ab3c9eee636251c0c911d24a4a2b4b4
Date: Tue, 07 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736267753
