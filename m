Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384E725C709
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739383134; cv=none; b=k6Xn3HKee8kn95GDrhYyZ2s8zsVatl5fH3zD4dr9GduWOEBHi0M6Y9WSkItHSNba/3DRkA1VrFI8WDoW2fjjhW2e2hO3TCYWBFVPB7ZxjwBU1kUzZOOu1LTW0CxYEELFFHP+auUiuR5sBSOBkKesYDp99NNbeJI6Z4SSvGRMRQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739383134; c=relaxed/simple;
	bh=Yi1rCWtWDL4k92j0WbgkSc53aPPr0pl8Fqd05mjp2Hw=;
	h=To:Subject:From:Message-Id:Date; b=jjA85eOsaPq6B7KGEtpygw1xUpsD0mM/y0NlkCLJXJgokp1U2Irvss53EaUjBOWyxfMmhNPQnFlUPSJDikaQsQ6xeNmhV07EYJO+BbTKOfGaQkirLpjSwyITtzh6piHqgoqc5DRnXXZsRhpQZpoqi2k8SjJB+4gYGLYtrSEpNZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9apN9yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9apN9yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1434C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739383133;
	bh=Yi1rCWtWDL4k92j0WbgkSc53aPPr0pl8Fqd05mjp2Hw=;
	h=To:Subject:From:Date:From;
	b=F9apN9yq9XAfLNfn3us7Zv7YJm5c2RaZg2rsaTFc7/L9TYqmnvBRfzSrHJ1qqpFP2
	 ccPrhc2FFy0n8K68cZWpdzmpCG1Vm6AkflRwQBweIOiwRWyFMiidlWXHaHeJYyKmaZ
	 pNEg2LcHodBfuo68GHxhHdxtAjCbDVZCMfvjShf1YQjPO1DebnGULMwi2jIFJFaLP/
	 hCY5oeHk+KsbkOfm8qBeTmWEckuDfP/TrZMH3oSUhaIh3XjuvCfND/HfmAfZu1pCLe
	 Ru/46Hf3ixb4KkToIbUwZ/XU35gQIZw6bN99x4E2YSbxp4QRzjR6Ohh3Gt7JSe/PPR
	 JMh6DomF+uG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2F3C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938313362.17685.9154453539015376039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131d40615eade747631a662cfb377ed8f6894fcf8377e5db06ca4c09c1eff17e
Date: Wed, 12 Feb 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739383133
