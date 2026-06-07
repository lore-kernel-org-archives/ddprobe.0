Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300932D3A69
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780828474; cv=none; b=LFu6IybbZrHvK8OveTDi0fKI7jT4cI5hCS4NY3FpttpMpfMhqq8GXuUosJYdpYJjXN6Ln0qBhNMJjBssgYx5wCVjCbkac9DqgkYGEqRo+vb7Gcv0ZTgEVWCLpS6b6jP1cX4Hvk8kcKWn9uVe9dk6Wkzixq0V2DX68YIkGVrU37E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780828474; c=relaxed/simple;
	bh=RNPTxqx3YbOPpwtESwKNwWoNh3vjrjUp92fjp6Z0xbI=;
	h=To:Subject:From:Message-Id:Date; b=AW/YUaXOMRnabILjSf85RVgvWR53UTrv+zA6tvjPwAWTlcoor8vHryNbzHAj9WRb/ampvfQrNSyVw1Th+n4oXC+TqNifqY9lwyc1Zn8UuAE5hZ0gGxpCHLUaC/UsSKv/7MBXLGA1wH+Be9hRIk+WbOcGhykn4aYsEOmEbPyAVuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d99n9vUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d99n9vUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB85C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780828473;
	bh=RNPTxqx3YbOPpwtESwKNwWoNh3vjrjUp92fjp6Z0xbI=;
	h=To:Subject:From:Date:From;
	b=d99n9vUxBmAZfbzd4jBwpU3DspySpjgWeZulXTB7mjx2HqPlOUuGrdBZ2QyQ4UgUN
	 oXBa+EA8XcVW1H+n2WV260xSjC2qI/9Kjg6k0Wv/CUHoW1BGyYL0JQsTYXSUSQ7De0
	 eZAU9FyeZU2U0ExizWT0+liZxUOP4P4FzHSzc5C/C46eEHGUCYX7eZCy4VGflJJ/zN
	 FoEZV/SOXWmlK9UWjvwZ5VOByHA2tVtBj0Ag9yaSPsl6f57odpVQ4QdqCgOvafaGfY
	 SfpNY/Mji7jJHHjBNmTY7WCFWehee9pBUQ51+Lf8j3gHpU6pe6eFIrA0pOlBDJ27Lk
	 DUpTA1YSGQk0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB38CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082847368.868.14751587673101543665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a46c787270181ce40f19df9a2a97f8cb59af8c0f78023b25c85a1c0cb31ea97
Date: Sun, 07 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780828473
