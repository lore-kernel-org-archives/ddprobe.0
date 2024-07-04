Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7512A137764
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720134323; cv=none; b=bSPCeNg80II5I4DbVAF+wcKDrrZRBfYGUIuq4AGGZI4JasCqK0cp/AwD2O5qlJyFsp6xf80IwPeSutMY5EL/RJiYOLhR71z/OBLTggMH+bk4lC2yxsskT06SXg1pyLoDk2K+D9GSfOppfekc1NojCvOdupvfTjxpo4osCM9NfXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720134323; c=relaxed/simple;
	bh=FS5AJq0X6LfAomyxxbz9AtUol7uyo3x40IfJjsgXQOE=;
	h=To:Subject:From:Message-Id:Date; b=UET76vJNl3PlxcpqLZZ85IsDQAsOORG/4bAGhqftrKpZ1P5x+e7qpjf8NWSrlvX2VxGVEVTSxZmejslrNIBuoIyD9Ao2i5QNvdi2f/AuhLXXDopbne3bica0iwOf2cqiL+Iq4rlktC9Qb8vidOzHXAWAjp+sN3ec8DTAo4JxALc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FW6C5wjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FW6C5wjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC952C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720134323;
	bh=FS5AJq0X6LfAomyxxbz9AtUol7uyo3x40IfJjsgXQOE=;
	h=To:Subject:From:Date:From;
	b=FW6C5wjky64vsGTu0PbH0J2JoDBNvdghiwQtzX9OTq7vapUkpsw689NieKWtpO2ed
	 c0CggLxhvW/zbw2TuD4ir3gSf3vwo2+2MXQ/0ZVWKSjY+xhLVJbz/IQhuduCK6VhR4
	 KGf2DlxiN4cjEsjW3H2npYQR7G7Eo/IKjc1sCSZti84lcCpHR2gadWxVOEHmj61GbT
	 2/2rjytJubUqUe6D6Cus0Q991JnRiD/idqS73+MjaSrgffTpjcZ0y/67kzUFQdVunW
	 11qeO1CJVHHajTy2wDJ+NVzAfBOt556zn5fxE+DLMpEXHurzrlvTr2dWyGUQZyEYoe
	 zj9b4PmxR/e/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6622C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013432285.5280.17194633414998166781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47d84812b4064848e34d3c82379878e0f0b906b8b178adda3dfefc6b254965f
Date: Thu, 04 Jul 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720134322
