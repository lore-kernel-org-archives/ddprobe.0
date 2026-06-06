Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432D24A07C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780785874; cv=none; b=rW2SzSkFtrRri4kCv33/1UxwfDP4EM1WVBzJ+URFngRU0jjH6pm0hvMGqO76o5J1YigJumFeFOZfLKdh2ekHsVdI+DIAznc6GyZX7jgfMQB3xGRbaYhqJBmt+46F1cbnAyt8NOI+397qYwJ4UwxgPT9F47HCvqQ2yVlbVtGO4sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780785874; c=relaxed/simple;
	bh=pSNWH8wHw4OookWBRg+oNzc84y7pe8IJrCLJxXWc/VM=;
	h=To:Subject:From:Message-Id:Date; b=HMg3fG+AHoPqMaGiBfkL5vavMnY5nQ6ovOQiHGzb0Gpq5IaRvX1T/w8SFFG0m28/tBctZYrM/ipKUfkZHwwuZgjIFI4dJqUIBjna2LnJL88iiUcK2uOWZuau70ucudU+xYHPleHAGqVy0gcqQhKyC34GP1Zkc6VzzvYPM6yYL00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEwA3g0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEwA3g0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C06C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780785873;
	bh=pSNWH8wHw4OookWBRg+oNzc84y7pe8IJrCLJxXWc/VM=;
	h=To:Subject:From:Date:From;
	b=GEwA3g0KwcBmf/1rterZ7EMJGr8P3CqjJ1e44x8FyNd+BxAeqSbfW8bhNSPEPa7c0
	 k/WP9FjCKFerbOCiCUdZyaRCamZjm4mIYGklWodBBebukXcc+v2v9a3mzcIf7PuYi0
	 2ZM/JNHUc8N9WL5pTVANnz7SqF6Dxe/rbofwmy+hGH69JVOiBUiiFGbohcuViylAaa
	 wIhSf0MX9Q52GIlwvsMYKuK4wDnd97LR6wuNAnLJHmRGGsmJxqTMVCQVWm6uwci7ic
	 yTavrr5EPQm86exi1u48uWKAggR7UoZpMfeBHwFJ9bjq5ME5qFOcxAxcClV/kGlwpY
	 W69YxnCNn1q4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1FECD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078587368.22552.7387364478696876232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59c6f19c967f0b1583a9aaf93da3f8b362fc3ae0eda98647f13047f45d753bc
Date: Sat, 06 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780785873
