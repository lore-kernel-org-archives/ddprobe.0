Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E651F790B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743636594; cv=none; b=PTt+xAyqNJsfctalZ60Sm/sr6pBTqnpkKdCSwL1DPV6SP2FwvgLVqthlPtiVXHumS76dZ9UaaOLOt37gJJCyf6DNx5Cc2xOpQwC4rHx7O8ErxxzT/TftYAuvuynDc3dzAvFnpV36re3EJPXNF66CM91CxqA1wCngARBG6LvYWF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743636594; c=relaxed/simple;
	bh=OgxYv5yAyi/NLwxHsUKPwrnJW4mwKxSiBqTH4/r2yUs=;
	h=To:Subject:From:Message-Id:Date; b=RbfvXP3abwynBJFVB8A+pP0FrSA+H7YDsNm3P3SFnlYIE6IIbjWvkBmiRYf3K/aIgVydccEWXSkEaVjmN6r9Wdt0q4J4yYjS2NhnQhl9Uq585HaXioYrHTT4X9bMrlKFrm8zhESIASlA5F8cIPwsMt7U8QfTgIFyO8ZcgJfPabE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kusiGXMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kusiGXMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E4C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743636593;
	bh=OgxYv5yAyi/NLwxHsUKPwrnJW4mwKxSiBqTH4/r2yUs=;
	h=To:Subject:From:Date:From;
	b=kusiGXMdpc61XS/VeI3/Ex1Jukhba1ZmBQnavU6ZpATEyDn9sj1I1wN2Lw7AGzhuY
	 +PRxB32SjFg7Duf50/XB80a2nA729qi15rM01WdtQUWctW/HOZtFkZvoGMnjtfZLhy
	 yPnh5YecY3rR45Zp2SVJC/y33yCqJZNzPg32A2TT+HnX3siqPN8FhFsYlWRMAwE7fM
	 BgIqtmm2Huz/ZaHnQpCXBvk8ooV6Y8yPwJmugUf5fKM8ymhp59L8DDIMbCJferae9i
	 fmfvI2Zh9M3ILBO11y7QgKdkE+6AUOjhywCBmkYsxmWG3cs92OIRfI+RArAUFKliOf
	 QORKrEdXkO9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E73C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363659359.29171.10612932151443524375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc34ca22598b2e3a8a475549e6a316cb8c392fde1309c6218195615dd32ae969
Date: Wed, 02 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743636593
