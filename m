Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39685621
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727828154; cv=none; b=liq+ObKoo5bC96d5bf3d9SNIrWfW0IrQL6jjul6EDmVrN1l1IvIsHq4rb0WrXIxZoH7rz4OnFIyc5A17EyvP/uBBOiS5nkyhnzdn4Vj/VkCMfB/Sp5dNGworkDNEBbZwEKYNkEIZzX0o7PAoh/Nl3GVadkw5T30S+01zbC/d4JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727828154; c=relaxed/simple;
	bh=3Jx/m19y6H/nC2fN+HqxLYLXFv74N+Kvf8LR9zU5xdI=;
	h=To:Subject:From:Message-Id:Date; b=oeJ9Dh5uYL+h58Yukbj0m/kY+oh0GPfp1UiZ4KK826DHGEh8uHCLrxrYkI50qAUJr1YksOEwo9cCbOsuFrKoctEnvDxDcP3f8ApEXYNOyHqNP3vJAAoTnJ2A8t1V0UfiTqs5299lxvfcpyGCC1H5wMhjZqUZWGsDDAryniCdpEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itEkaxT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itEkaxT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08ADC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727828153;
	bh=3Jx/m19y6H/nC2fN+HqxLYLXFv74N+Kvf8LR9zU5xdI=;
	h=To:Subject:From:Date:From;
	b=itEkaxT/HnEtcM1iqPFyKZ5GZitARYCvT/rl6M2ke5g2FUUQzT+0CgVSVC7cA1mFb
	 tz8d48jpb2s0hicPYguVQy6pN72hpy91o7mx6kqUL7QgEYwmSK02sMy72r/pBZ0lKl
	 fRt4oLx1oCOxCU9YMv/eLzSvIUh41QAx3xK7DdmDmyr4TFcFO1URkB0WwZROYTOei2
	 YL2DEIZUASJ9rI54qRR89P32t4eavoSz1nSkaKgqLdF+3N/ir1WHpkj6JuAR2EYUYI
	 AazWnV0HZ9WdNurHmtN2OIgxLsobg4yozeDeHmAi8182anJXeLFQYx5yzqe7doTu5g
	 v+FrVvaa7Fc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B5ECF318A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782815359.21009.11626685512835678963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1bcfd2b869b1b91e8a2290989c3c1b50dc9ffb7c5b2f79a5f8f7167d7284ac
Date: Wed, 02 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727828153
