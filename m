Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1551CEE93
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725629754; cv=none; b=G13MZqRpLmF3neO+3Nm0tBIp15w3dldOzBh8mhNyCLwcq+srftgoCHYTeuXS8hrGr2cY6wJbjEqWVjSq0QnoFYzKqcMaEMsAP195LHVy9u6bchFsPEGZRCqNO7B4d/WGUxxs7h5K4JkiLtvxSSgygshNBz+fTKuzHPYH+J8J0wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725629754; c=relaxed/simple;
	bh=3/vut22CqaHQBKoBEYfDtdKQVj7moH+RGycxhJOXe9c=;
	h=To:Subject:From:Message-Id:Date; b=ZxpzZiTzT+dAwPsYagbjPjXfz2VvPLox6V4Yncjc/s0ZeU7KttbviVnY9+nqLKQPXYeG4TcOKv727I2wGdFkOSHQxWbKl8AWC5WhW/ATo9p5virUDUrpPP2+5tG0LDWQ9m70SI/YDDyZnV4mQRf1eOh1nha8j7HdK/zGay3p6r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb3R62Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb3R62Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1727C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725629753;
	bh=3/vut22CqaHQBKoBEYfDtdKQVj7moH+RGycxhJOXe9c=;
	h=To:Subject:From:Date:From;
	b=Yb3R62Q//5RUOwpiLvHVnMCwI122odakBWeiJoj8AVkhgneCyG71rhKESaCBRJPrR
	 h+1zKzGD2xdNIxYtI0RZUHFICt0XmE1MklP/6NUkPcryMAsgB+3WGPtLI54iX24wmE
	 dtdq5C+olb21doqcwRB/xC6zxcVxljRiTBuO86+/K1O/isJRXpEx32/F374CYjJwV7
	 hJ2KSv8L+fy2oAmWr/cZDDVtjEEhj8YO6Fjf9lNt0zWLTkJeBRs8NsLYDFCvZUUKWQ
	 9a9OJzW+refIO1Uomop2EjAD9OoS0OHoPkY6tkBr2FK2raZqx/CNbBhkgfWlres6g3
	 H+rq5mehvVX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A138ECE7AE3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172562975362.20664.14677872568589679497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffd52e43bac8eba5020c0347d4f1bb7ecbf3ed227768e0f231eb57edbf0e035
Date: Fri, 06 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725629753
