Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C305377579
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777142254; cv=none; b=J+S1SrRXMT3bJ1PwX3QMphDjgjbWx/CwQmIeVPN1KQGCW4N9aJgB0CjOAYmehEgr0ZY5ziWkoHrjKng+BBOBjo/wTXNd81cCEB7WYY7cCh+oCOpZGukLynjmXAWYsRYLb5kwa6QTYsKBDpydeE+/mYuRHZiJwYzaKZWxSSBvtXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777142254; c=relaxed/simple;
	bh=TEz2qeib9wZdU/mdaC1uiiuRgGKv4D4mV6bGp1NM4rA=;
	h=To:Subject:From:Message-Id:Date; b=HWwWD31Pg4DL/twUASsqyZ5yuYtnePKjP5/iGKtGfuh7auR5zKrTCGgeR0/8ymh+9MnG9vmuu1xVTF2fX6//ZlzQs25MYx/7Nqx0rATrumx8kC4Zdwxl/rekzzr7kOMkK8agg6HlwtT7qNldT/LW6O1q1+Zhqu35nzX4wnQyiJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjR1SfLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjR1SfLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB5BC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777142253;
	bh=TEz2qeib9wZdU/mdaC1uiiuRgGKv4D4mV6bGp1NM4rA=;
	h=To:Subject:From:Date:From;
	b=NjR1SfLw0O+H1jsIxr0MjipuVI2cVauZo4hBL/yM3MEMPcvR+0LdHhb0J+Vud6bfM
	 RUOjqnpbyuO2f6c4Fh3dLn7K0MqwZxPxmyrBPn6tSQ/23HEzas89eRUr5wh57lhz+3
	 bhaEP6kUhbftM2fbFhUFFuNO/t2g2OpMzuRgyFcT8qZS4UDulUmTYGjUtW/YGNKwNK
	 Fk9T5Z8Tuz9HegUbfldepFiuHrnbSWjqjt5XmGGTCn8E9o9X22Du0yYVZlsDmp5kSS
	 uwGUQGAUEjczrgGp7VMObnSjkOA9gKk6dYFN7BYVa2wEvDaToEfrZV932PNqwZaJfL
	 wzhEyL5Yy5lfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E3FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714225368.30239.15263549444044918012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744c314f306c7cde6ce18e5531d3ebd50fa2d6786b8bf4ac1996e0b90b9b4278
Date: Sat, 25 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777142253
