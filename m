Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B2519ADA2
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734685554; cv=none; b=jK8XAbi+McE/0xOWdRmBdsdjNq76Ln58ewC9SqiEaxuSgxdv2HE/JqfmElVGHIKJe2LvEyueUSP14XwaynsYfXiU9I/t8IE+FFSOo9lfzpgSIVsejSXjO9JFIr8+JFWc/CTbLfxnZ3fdG1sHyjznT+fo1Tpa9xfiW1TL9IzhA1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734685554; c=relaxed/simple;
	bh=nP6+/bruHmPuH5NqcUYS8o3C9gof1TYOR527uII94Og=;
	h=To:Subject:From:Message-Id:Date; b=qSb1x0wNEg2w41t4LJf51pLIZOeSP0EcKE2EbA47yOup+/yEkNSSz1KqWx8EcrFxDLdqTdFYRl8exzqvbai1Trj+P5DX9YjNrPbTUIWlK0wPG9QgOFdrds1zXRnIEnNI0lxuMZpEMM5SmV21kq2Fe/WVHYdmQ4gubwU6xeTJRZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L933eIoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L933eIoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21ADC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734685553;
	bh=nP6+/bruHmPuH5NqcUYS8o3C9gof1TYOR527uII94Og=;
	h=To:Subject:From:Date:From;
	b=L933eIozy9/HWZrmS8A6fn+qyYvqPWtJswVMkjDMbJ8I9yNp19Tht7k8z3DIzCTZY
	 Hma2ODFgKoAnwqrQTfO4Z4/2IqtYM2SeymHpfJ7VEujTQTEZC6IXTRvLpS9KIhDiL5
	 bLsU12yZfrwlJB6xRRM2yVwaZu6RCcK4cFNQQEbqjNoSLfPlG7lByh67pH7ViCTMWy
	 1z9HiTFFxFrf+WBYmQxukXSCwSm2CpF6nbGzopkHdUetu1XPaJ4L3zFIoShWT7XJJ2
	 ljLQ/sbdVhEpzl7iuNdr0b3DSK/8Q0ClsJxKQqz4XTQeS9clSzw0OwGVwqn+0S2QBP
	 XxrHBPINhBxXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C776E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468555363.16498.18080999232629201557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33c10171cd4ddd51750da289e61fce9209fb035c8e02d41d24e2a0c390dff0d
Date: Fri, 20 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734685553
