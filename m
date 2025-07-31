Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA9F221F24
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753976995; cv=none; b=NXNvnjAlqhx+9vhBtQ4tYmKq7Uh03gUMfvjWr7VgmKiaxqH3vP+eQa81E+uQden+Czg1sJQVrrKjLXLdOZ5OzpfuFHLXD9Ki9IJStDzgf9NSy1/5sDvvMSsxYUzSEg9pilfDy2lTlgDL2tM85Xir7EGYEnDy4w+TtSgOvzHflXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753976995; c=relaxed/simple;
	bh=BR2oKfiThHbZUyXieOnTtVMXUCQvmpQgemc6Cptpwfs=;
	h=To:Subject:From:Message-Id:Date; b=dzG5JmszXGZCHXxrkcRw9CL5nWTGp3gZ/h4UEi5h8BrXNM9hfDm1B82xDEQoP5HX9tKnzHFRDgVOMFVD/3L9OycWUdTtMtpUVxuzTRKJf1dVTyysR8R/3+pGM4MHF7m87TnpWY2XmikKlj0Bxh6iXycHlu8La/LpkXSa9Qb9x3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAWc2IIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAWc2IIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2597C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753976993;
	bh=BR2oKfiThHbZUyXieOnTtVMXUCQvmpQgemc6Cptpwfs=;
	h=To:Subject:From:Date:From;
	b=bAWc2IIzDs85/UCO3UmlysV3QXSfdqExVbHIqDoSO+EZd5DA/sE+GFx03EKu9AkRy
	 qtk5ltc2bGUsTkURQtoLLRGlRNcnMMOD9aPB6r6M7t4w8izx12MjSK39I01C3QmKoz
	 7gZPbtiQNhi3QBSlcUnJEj5nIIQ4d2A59yILs0oXu/gWGidofx3PVRNGF1l/nW89mQ
	 6SRAp3AlYtNuA+ppN2LVSolFgOt2dhxW5XF2ggakVyGgMb8t4kvHDQ6ZbA//8Vo7DR
	 mY0GKZSZLWQz66KYa/PSIkYM1GasKn8YL3jMJ99XLBerHppgVXuwFqMKWNnTlS7mc7
	 QXP+T47VYbXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB4C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397699358.31827.16363174512282466327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a247e721fa8b126615ce34aa6adb4b4ead7f23d1d6fafd42577649faff0f6e
Date: Thu, 31 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753976993
