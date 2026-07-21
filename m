Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A772433055
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784619514; cv=none; b=WlcJYOjl/Up9R8uXOhBvyMnIBKxx53CJpnna+Sjr8D57eNNtCVZBBISv0i9xAjdlgJdZ/JAR8OHMfwWFCBoRP6k/icwRchFpfwwIAT0QyhFGw0YXapaT4IrauEHlPTwdpdXpCc/g3V/VMGyN1zmr+I6T9h4GAfC9rXrQbBcI2Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784619514; c=relaxed/simple;
	bh=Pdm/Vof2jAArgsbD49Tk03kN+KE+lJx1A5ixcCfrc94=;
	h=To:Subject:From:Message-Id:Date; b=fQSZOVr/Cel5hSNhWAGE5KaOGA8XO/bUJpn9jfWzUqAD5/hAbKCW2eyyDrZgDWbuMieKxrTt86LotHseaRBmAcMXQ9wXJEdn5iuVxx6G4ogi2aEqiBlCkGoaTZip9hoodWslg1MRqxfq5b1kATwy8TgkomNCY+yKh/a+F93LGzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMfunBj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMfunBj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FFFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784619513;
	bh=Pdm/Vof2jAArgsbD49Tk03kN+KE+lJx1A5ixcCfrc94=;
	h=To:Subject:From:Date:From;
	b=iMfunBj3COUwW4TZS4tT1e2Qn9NEvw5k/ce/tdPpaOXIpbz9c5cEDkiUzI9ucTc5P
	 Z5vDoVJPyNXvj/qsxHo3eEfbEdYlp1mbwLxzw6J/PHSqks2+7I8Ok8mXDOPVS3vHW9
	 Z9lpdLir4ucImBadl60269bPW5kFbycaofMH4GS5kBoIuTQek+LtTZpwwD4CjusP0w
	 zpgkjXHinvBhpCrHqxSSuJdqe6/W/oyLns/uLTBMQQGLzzMSostff8ynnc7Wr/mq4B
	 LWNKvWEYOgmamaJnUCopLku7Yz8zkWudP8K5E5tTmC/mDEh1DxvDUwzNfU4n+4NmMV
	 fUaSuJWXVfxtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F8C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461951370.19007.15568315371632085526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb446ce260d282cc5670c2bbf9b02baf69310d858fefe8b017c60e54841e3e6
Date: Tue, 21 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784619513
