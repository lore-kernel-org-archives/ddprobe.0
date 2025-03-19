Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E3E25178B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742379594; cv=none; b=k8coymaUp1szChcehO3+DEETJXN50ZluOrz7Q31fOKznhVIDG1VQl0UsEWyI6qJT7rHq/wrw6DSVTou67a+I2Rfmo8MWQtCeX03ZbF8eY+L2gGcvQ7YoTc8AQ2VeFcXmMhpMIOIQZlfigMEm5UFNZa2jCYA8+mOLNXfz+sOt+Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742379594; c=relaxed/simple;
	bh=Hk0ccNNXIQ0D33tyjEdm8Xoy6PlcvJgHq8QRR5TIdXc=;
	h=To:Subject:From:Message-Id:Date; b=SjHQFQDH+hhZDWicx1Kmrk3Ta56R2xW6vsJd0q162YbpgcNJAYRb5XFZBXdqX3Y555iiNt5DL27Wio4jYu8Bt6nbidCy7Y075sis6yPkyvFUGrUmZ9MiZuG74Vp8DygY8affFRa5Al7XBUsOY+11lOpaVhtSfy3mT1XywpminpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6UU3Z2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6UU3Z2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBA9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742379594;
	bh=Hk0ccNNXIQ0D33tyjEdm8Xoy6PlcvJgHq8QRR5TIdXc=;
	h=To:Subject:From:Date:From;
	b=A6UU3Z2fnsMrr9iooBhgiKIhpFW94HvpakcSaSxP409OsCkEi1JC7nocb70MkSNLg
	 zifFZPVJwh/u/DuqDCrI5IcyaPDSYLbkWrJrepEDJu/gVlcHIEqqDwdumqhSvMtMEY
	 jShvcrTvrtDzk+IMzWy5ze27WqIJfaI3BWcYrVicdzLafTyj5cmauh3UnOgsmbj99Z
	 JmMxCU5dvPk2J3RnPQMkB6Wf0lGmhCq2G/h9wewRD7np1jdd0JAmiVYvGd7rVh8TKu
	 KnKWSKtf88ki4HuQczc6nffGdUcrAhBhdA3e3Ub3G4dEe+JnAnNFiyeDvzAzIvk6cR
	 Yp1fMoC/tLMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F4C35FFF
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237959377.20623.12197998438750731172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47b2c42304d305a9ed578cef522ca52581e3a752ec941cea2c98b95f26c2175
Date: Wed, 19 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742379593
