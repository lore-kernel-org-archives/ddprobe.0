Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5872E1CAA78
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786666834; cv=none; b=JTjL5YgzdozXRwPeeMcULaVhoTkQgqlmf03HPjd/+HsUwyQ+TZFqrYeQ4QvLh2a/msyx9/jJ7jq1BW3FB/KqeJGGNs2ci0s4vMIXVI4xY2IwQNrp8hG6nBU8pK1kxSVfkxxT1OFmjjg09IXxRwU+fTsBwk7p7iMFrtwO9PfRUjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786666834; c=relaxed/simple;
	bh=+HlClhAztBH01efuD8Y6Jo+wjkkYWYix0aMzdDG1An0=;
	h=To:Subject:From:Message-Id:Date; b=R1x7nW1hu8f9SP+0w/4ARVbCu0JPA/iijVf5nVaJ0r2us9evgL/h2DUJ6hyOkF428JGI/XZ3Mo6jN+zz0+5CWMwtwuyq456UghVSuyd/zqz2cSBKtGLIRA4RqiYIV54eEtVNPvQuIK2xvTH5A0yJ9IgU34ZzW1tkse5WpTYoBMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlkYksoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlkYksoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8D6C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786666833;
	bh=+HlClhAztBH01efuD8Y6Jo+wjkkYWYix0aMzdDG1An0=;
	h=To:Subject:From:Date:From;
	b=BlkYksoMpD9RJnHgVTJKtb+mIAuRQPGgzi0GWajMmg7UWS9a5vz1u0W/tOcEHhseg
	 lOlK5z1eVnxElH6eDmOQfY4kBVmRUaSr4GUvv4+AqkZ4IaB7Jiv6RUd/XaR5ysSf+O
	 kH9vXsQ8bcZtaBnAuONgMHhq+wILacLTH2V3uNpF6fzDoqU1yP6DqoiLf+JXYSQzJu
	 xdrKvZbgbzd2oG7b6YfDkwDiPqREY9WMtsou/58UFICzzTcXsVsgqHP49LyUFHVpkR
	 nA3q9j9ievPUxEEx6ciZh3F593jYybgNMqrVAJMy6hLVIQ+aTaqdJueLNHziB6kW5Z
	 qg+ac0kyvgkSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D36C5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666683368.1272.5100738057500826612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eeef8344697d3384defb4e09cb3ad0dfba2c9523a6412766df0f4419cf9947
Date: Fri, 14 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786666833
