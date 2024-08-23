Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3ED91C6F74
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724447753; cv=none; b=SziiU0225cvAms/uvGsKi8YR7HoLsc+s3MGq+/WX26VxU7o6hXzFi42gE4aDQwsdAGAFCfXYCWhMqJi/V34szTM5cEb9/yof2oDILFITCgTN1HAEk+I2BR0oLRizko2T6N3wXePECwbrBEVZQkg1r3vZFbgPHkH5IwmHlyDQuOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724447753; c=relaxed/simple;
	bh=LLXLPkFiWG3Z8oz0EU0oxqE3hHTrrI2Rh0lK5I2qud4=;
	h=To:Subject:From:Message-Id:Date; b=p97U7ik0JPtlxc+C5RxedDh93aAH7aHsNszDidfNOV/eLbXsaRhwg+r/UTDJjnhQ9u6CAPm/2FOc/FqVik5L+ubHyUcopULGbPSDLWrVPLk/J2FRvHsLZhl85tilcSONWG9QQOCmeKBIx7aClWDiKrskgQB/cN3uOMt6MOPspcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k26Dqwe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k26Dqwe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C40C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724447753;
	bh=LLXLPkFiWG3Z8oz0EU0oxqE3hHTrrI2Rh0lK5I2qud4=;
	h=To:Subject:From:Date:From;
	b=k26Dqwe73ItiEKa/9btwA01TZWGaWul6586UQijhNJYdA5W1wwyz0md8/fXceV1iu
	 x7Lus5bGlDNn43P7girwxiVwbmNcEWYpeq33Aqa0+FSbXF3hVWSfRWyfbSTf9U//x0
	 VK5gyC1xnFq2YSXmxn6DtNJfotACYsbCBv2yeJ01mVMZjRKYblf8cJkNS5BderAAtn
	 ByDLVxcwXSaLMypu30tLVj3AkDN/8lTKrrt3KyuBUn811up6vfSHCa4s/vssaKwGsM
	 4ZrM5yKMLn3rvYm4PdwQ92fmQ6JUq+ZHMD0b3yZfUE3OIIrBbuRWaXUt2FHwypP4xc
	 o0CbcRDCRqLGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F6C5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444775359.20502.12014405521794036559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12810c2b3a177cdeeafd1bf95b77d3b253d7d7d974f3316d14f8805162f57d03
Date: Fri, 23 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724447753
