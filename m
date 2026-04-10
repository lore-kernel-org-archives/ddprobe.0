Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299E43B27DA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775856454; cv=none; b=ObTNXeAox4V6jhLAMSGIRv/UxgIqELIzPzAXmRYJ4uw+c70EXHpJkqEVC9PIV79cLrmEiWmBIr3lYZmvr3DXawNzY0eTwKrAHqyPzOSleYhg4BrM/feYzasnHaiZ2Sm8K2x6xzYZZVqwhBSb95z37ksK1UbGczcPMwfCPVq+Nys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775856454; c=relaxed/simple;
	bh=EwCyJf0pdLJefnhHP9Ju9N4x0hRw5WxBRgQAm6QFSo4=;
	h=To:Subject:From:Message-Id:Date; b=o9SFDNs8ETDhv2euRE2AWNOaH7AloAJYVDCJm6rp/7EOh2VyoeuJ0KmnBx1Pgd9cHUMIpqxLBLR//CAlJBh5CpruEOQuu8+hFrGatYDHFi9Jc+ceudgMx44P5l+7xLLn6dQOB4EjweShrIFs3Ol2/B2G+y0/J4B2uIo0spr71jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5hvBVv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5hvBVv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EE4C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775856453;
	bh=EwCyJf0pdLJefnhHP9Ju9N4x0hRw5WxBRgQAm6QFSo4=;
	h=To:Subject:From:Date:From;
	b=D5hvBVv9Ea0Jh3fLBc0F77k7MTnw4nuwK03wiHpfA4HnRxncJ7FOTbCEEcGuGaqNx
	 ACPovcrKvU/zh9yrnbTlFstMPzYiZ8315Uc+JJvzt3LzUsyKDvxgHHEtJfqPf8yuWB
	 YlwPh44GEVlpROhh+Ba+RFwEf0yP8uCYnQfWr9kj37PEPpKQkx4St7V7Ts/qtP4WxI
	 KyZe9tYTuvQ0ewz7P9C27oVNWIOTuoDe4q89SQvWCQ15nCtyp8cN6AVrTDOGd9u5v5
	 BAnJrYpTd4w+JAoN8y1G8wtpPj1GUuFeivrRvEpHK15YT72VtkhwjwFIWh2U0IeuZ6
	 UlrIf6V8VkKrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5FEF459E5
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585645369.22334.6960582783202926986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb072b2610721f2a5d2b0864c8af6478a10ec0e4e26ce85724f74842b0baac1e
Date: Fri, 10 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775856453
