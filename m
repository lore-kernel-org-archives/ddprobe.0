Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299A120DC4
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725919554; cv=none; b=kkQbeLxeNWmK64teXaK2LpW9Kkf0a1Y7tHoHjl02vknpV7pKRiRNOCmF84LY7bk8nFMoX/ArMDT/GUYgLOjLam9lTDzrGcrzZvvkXF5figGM5UFsqkCs7S50p4trzbcO+cM0Llju0GO2N5M+GfPap8hTgJ41Exu1NgoRVNVJcs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725919554; c=relaxed/simple;
	bh=TTRGp1MVN+Bkd9nrqPK6KmDr/oPEglZdJuD9NNxBqQc=;
	h=To:Subject:From:Message-Id:Date; b=Qr9v+7JpqwV1CKeKzqtyFj9C1Yyi1LbyKK6D4eM0IHBKld+e0vRTTlFvXl0hpbcAOCYytJkUrlvgJMHYcz/YHqNhXr1k2fJ0nyG7FhA00ULsFucqlC/mixOhB3Tygwru75z3auD/WNly3k4BvXsqyVccwAM3W72aFAfU19qoiuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQGzX9Gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQGzX9Gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD5C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725919553;
	bh=TTRGp1MVN+Bkd9nrqPK6KmDr/oPEglZdJuD9NNxBqQc=;
	h=To:Subject:From:Date:From;
	b=EQGzX9GcJi72QzmyCbdHPUrSWyXXOpr/lrV2XfNMOOgodepL/133XDN1UDjzY6rVA
	 suZZXFCFm0SDL5HZ/OlB5HwYZYLI4c9ar9O9YS5ZlWyxEiy0WdNcMHNEGV5BuMyzDx
	 f1CwFORHgcZeD+W5vhBkWD/kD+XDZ5pjKx3cEgK3wTCy9403uP7k0qp5/3Ch1VwekS
	 OxvpBa1S6nFMRStMi+ZWjDFUip20B3W3RjhRN+1avTTwHs4bKEOka/uSr3S+qo2Qs2
	 IvN+M1dBReFwwOCe7YXPRvLbZvYmh8TEUGB+NRQoczfjo4ae3iGyHW97nk9UFGFYZS
	 NQYk9BrAIzhdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ABECE57E
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172591955358.27875.18354238390199492307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82f5e7290518f5211786022beda29b1544b213ca55ce5394ffd1abdc59d77bd
Date: Mon, 09 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725919553
