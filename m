Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356AC41F5C5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786819234; cv=none; b=T3CwnmrovnL1enLBlLZYldzHxP9Ax2dsECvOlKz6XIBpB6VNH+daM/9m4iVdVuksmtxBEzF3OegYzuM7q0bQEexVIpc6/oCZ4LuUSam0e7LyxvyxhncjarTuQ+M9TtQcehDJHJVqWkJFXMXchT4rZ/9mIEPHEoK6KcXGu2BLjgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786819234; c=relaxed/simple;
	bh=+2yeCtEfYAuP/whwOBe0zzbAUmZO9rerxZp7VShkJR8=;
	h=To:Subject:From:Message-Id:Date; b=pMy/7kBBex76ZcAhexdtjyP3LmS11HHCSdiqksFsauwbK/wygH7aGqzozmXb1nHRAAifwnQX9UN2H5gbkA2Iy+xuXKk9Xio1TTRXT1IZZHsD3+TM3aVUF4Ihxm3kNYO9kIowRJWGpAPROgQYkFc78Lio+2uqID+t1tbkwV31Qrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTQsk5yQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTQsk5yQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7766C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786819233;
	bh=+2yeCtEfYAuP/whwOBe0zzbAUmZO9rerxZp7VShkJR8=;
	h=To:Subject:From:Date:From;
	b=FTQsk5yQYSGi2QpOuBOTjvURuy6c1UNoCRZSZcYzLKYVFYwIhQ80tzzTIoIR19gNP
	 MenLwT5b4kOF6s0bA51zgdX1V0HWInBX8zmSt2/F7kZGr7OYug0o8AXKyLrUVMhFgc
	 njNwrCvl1Y69nfIibIS7WUmlr5V2RKaQFOAHZUDBI34GfRNBFhSCq39G5C8SZa5sDD
	 qkcq8RvQPkep9eOnlTKSIvTv+kLHD4BrPKXpRcul8of0xoT3EhHX05lDb0lPXPkKyS
	 e+ReqMZsHQcXucF3zjPTKoCVaWCGznKMhpIvgxLCUw1P1KZfy1C7Tg9EANgjSoi9Sr
	 l4dl6NPBMaRUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9CAC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681923369.4273.3320823099390958244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5830918f5f5dd35db01bf55147bcaa5e7cdfda5852a77b3a17c0574b97839d80
Date: Sat, 15 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786819233
