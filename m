Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E85E4CB5B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771271094; cv=none; b=V5H42QhstLnk/XFGT0RC6lI4wQ9Il4WBFM2HjuhLtvmE/GaA8Osdq8PETFXcW1wd1TJM6Wdt6sCDkdpDnOUp96lSBMfXu22M3hPiLM+dlbtvkysFRe5YBWvCsESVjNUVHjRtz386fKZaSQvOvp6YE/Ni9mSkHZ7qwCJCdkzkcQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771271094; c=relaxed/simple;
	bh=3Pb/ULp653AlL3qIfMC73Qj9GjBm1IM5bA+/kxoipLQ=;
	h=To:Subject:From:Message-Id:Date; b=XTh5l6pFl9UGBX3PwfHx0JPaY1dpRK5IeRQ4IVia1+kBHAGtsE0qHU/leOF1qO5la9GL8secEoVhUGJbU0OpnbIC+sOZIWvmFLhFUeeNxTBE1pEjiFolomi8tbwGDIDXlnRADO0aP7Fak8ozc7Xjj+27AAdVcfuwAV4k6nZvCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa+M0ogs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa+M0ogs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68EBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771271093;
	bh=3Pb/ULp653AlL3qIfMC73Qj9GjBm1IM5bA+/kxoipLQ=;
	h=To:Subject:From:Date:From;
	b=Wa+M0ogsvso5zHSIq0qpLwAmzYbiWvYITloDijuUkbiL66u607GTpd+R3KPfu2Naa
	 upPH7EkcE6PfauTe1Pw5snBRaMpd6fJgP9t1kAedBgfGBTZY+zNtOv02H7i/Y+wHqi
	 roIoAhLkewCXKbiEMGQ9GT/Om31Ie4MGO9nMaX7VUvg+1mtX9NOAspWwtbyebiQS9Q
	 oBwD2ppA1+koOLRXeC3QvDExnmXORozHW71HgpNx0/U/OPmyExC2yFVVEqa54qNKao
	 IgLd4PJ3HE5EsCWQffbnUCx95bYDiuPc/DuLPY4cyRX6Vnjd9qVPYu+OapjdDQDPc0
	 NtQecZiCuZrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A37E83827
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127109359.6945.6401894823676355160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b73ddaf0a0e0bcc152d4dae0426dcb528f81bf81e0cf23f9761810cce77562
Date: Mon, 16 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771271093
