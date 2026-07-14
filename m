Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E16B1F5EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784002714; cv=none; b=tF9Su4o0reljW4qqdbW723gC4tmx9syaVPa49lkT2xhScL2mO32cga9ThuuLcJBwRiKnZCaFWGULkfwVs50U3HXQFCJEtlf4DERlz/UAsFz7Vk1GtDs2IIBsNR49KF8U5ywrhprFH7acspQf4pu3Q+M6RlzZZ2dZzwizr6924l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784002714; c=relaxed/simple;
	bh=dO36EFyUtSHkqB09EjRdSirjFbtAswAVAg893W2BL34=;
	h=To:Subject:From:Message-Id:Date; b=abYjaZQ2XP75Z4ITbyMx00aE8tcvPAUlESiFy24i2z6cme/J9OySQib/lq28+4yGnKulJYP8jasNN1PFSLVEWUHtlHH6SKfGlcO6RJE4l63N2UVaelcluWtaM3yqzggvA5cMnC42ry6tlCD4mcNjLsSNAxjuvb5cpJG9aSZCqMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co9wTo8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co9wTo8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28B8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784002713;
	bh=dO36EFyUtSHkqB09EjRdSirjFbtAswAVAg893W2BL34=;
	h=To:Subject:From:Date:From;
	b=Co9wTo8OEB6pz2NqEQYfTmJZ+9bDE1Fc2vjprsBWRIs6muhXjhXXr2CIZ1BfHHc5M
	 48FCVnYm8Kig/66M4FMdC/Iy9qtRzlzCb7jm82+ll3bPFSXXdh3yDrdkIpGzzpzH/I
	 Unt0EgXG8Ahm6Xu2H7RJQdtZQCpAKQ3+6HYzFtU8k4ykmL+xJmt6bd0rQvG/SwDrV7
	 fengcpcNcvW3p6E20f4DTK0nUDsU9ngmKF7MHUsBt9vqySay9nIrVbX5w3dKP9eca6
	 WkB+cD02ZqaqDR3k2Ue5vOL19L9eyaw0lSvuGJ/R+FS63aUH0oPv+FJLUKXvk1RpNl
	 kV6Q6A4gPIoDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA23C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400271374.11624.5508831420457682962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de97c27b1f048c0eca931bb0ef2a9d911dd8c7d997765bdbf4d2689caf1d7e30
Date: Tue, 14 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784002713
