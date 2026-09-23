Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7832B37F338
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790121634; cv=none; b=hHsdfOLENqxGp4m4lHsSQzs4x6nEYeqh6A3zzct8ONATO7gEVF+gIvBLdTbh+opoOGf2Vrbfk9gdrqocrOxM+MkQG+kOxZ8cxLdsQRcZvrSvoPNWsy0oEcgfsTVe0gmIDxFOWIgm9ww4dZu7nqSQj8/53rznNC+McT1Sun6u3Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790121634; c=relaxed/simple;
	bh=bmmykUbeL/gXypttpYpmdTKGYRMExw3R5N/YOEN+T1A=;
	h=To:Subject:From:Message-Id:Date; b=Pm8qZxXiB+UT1ZwHJkK1m+AVVxQrQXvFHeq9gzOU9mHLDDU0D14rWCNfIfP7VQ+nlF11M24EelIa7zD+N1GUitv1qlVpG0zQPsAqn/oDfbQj9so0OgJRkBDJ36Sm8xm4uok/WH5cy3XwpGRNip3wRekwuFBpEU2Q3YMkQeCJ8Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw2IF7RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw2IF7RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D535FC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790121633;
	bh=bmmykUbeL/gXypttpYpmdTKGYRMExw3R5N/YOEN+T1A=;
	h=To:Subject:From:Date:From;
	b=Rw2IF7RMr6xhUeOmdDfZxjqr4PtD/9KzcVQTC5Inh5TYUUSIbQQko0a4kXR0IEZtG
	 gGt7LvyN7CVowEXxvIonZRD6FAzoMKKwZZCuwRVIClsdmmtEY/gnaIs6Yl6KdLjwEX
	 DWe8YNXJdjumvqI/t892rcVzWh3m8rO3fL1iVh6lP8Ec1V0SL7hYB9EkvrXB5TtgFV
	 /0es5Szhhyu7zHECllIVEhu6B/kdgTBWaeMJqpicy3Ky6yzAAck+lv1hh/L0tDoVq2
	 +DNfu9fLSRRzV6zB4eIbDlUMygwQo85cpcneXoyyfKXFdZkZmCCbRBEe75IW9oUclv
	 4Op1UQGDXvoXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AFBC982FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012163371.380.18185237761458899754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12212f88cf94bb0d4fec20de95a709eca3bfc8b77dc2e5755e5bd98058acd05
Date: Wed, 23 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790121633
