Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31305EEAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727505954; cv=none; b=VxGQFoTXknGa82z/dEgAQJRrl+lmBMnunNKLg0/qYOzB2XQPHjI9FmFNk42Zp8lwyhClqqyH8GCMwFrYojBpRVBJNNcyGHiipP5dsHb7EdyMQnGHnqz5MgGwWq1GO2lR6u2W9kqEvdED2lp2sqbeHpj1nlmp93jKryuwxSjooFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727505954; c=relaxed/simple;
	bh=8liV42CnEFvR1kS7tZA63yA20WUOr/7JA/5raT1Sr6E=;
	h=To:Subject:From:Message-Id:Date; b=Sc3waMpYo8kLppLSqLKj80JPansa46NlOj9xMnD2lab6jm6fBFg/jWy9qpqKUibAo+yUNlf38l1fOXh/P8j4vTBMfs+zNn/7eRWtnpe2TWrnwH9yfcMNzIt1wDeeLKyFhZZ6F9oU+mxBuWDmXt9rT3aLG+uH54jylBux3eNpC2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgij48fG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgij48fG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0609C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727505953;
	bh=8liV42CnEFvR1kS7tZA63yA20WUOr/7JA/5raT1Sr6E=;
	h=To:Subject:From:Date:From;
	b=cgij48fG3eP+Oh2OA/y+iNo6rttiQkpwTL5KcpFH1DojlFAZiMyIYKSpliMHISkM5
	 C66TJha7n0QGlZWGPlwK0sduLvRbqvNUJ5VG6i+ysupOLx/BWI9QFTCVlvQ/sdwj07
	 JGVnulsUf4MHRwm9csVbfsxIH6eAsmwD2Ef/3LZOWeoFCpHd7YVms5VaeuUvTDTv+W
	 E9WJ1qb6SeL4YqP8Vo96YJR2SAONH0yzkD6THfZk15NmXg4chtbu2HDKILIQ5A+Zvz
	 EOCac3n0C7kbPFqGkcQpMK+SJkcbRp1izEVKKI/tGDiVU1tZabf5joX8SQTJtgypvk
	 STKcga7TXmquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96117CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750595358.26215.3556874191054585532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12624b63b7474977ae7218cff9564754cc7b1022d3672d791d0be42e2f228004
Date: Sat, 28 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727505953
