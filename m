Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED0318871F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756254594; cv=none; b=A9hfn/9NGDPF9CZHRF+aT9Im6OQNeLlNbxb+TjimtMhjgotuW/7Fu2SxeB0W48PknpvFOc+Pb4K0oNXERPFlTJcvo2C1c9fAahdtKOyCw7fVg8EBQtFJQPFZm40hKtg2dW10a0WbUCjITe1mxgT3oG1iOK+Q1c7dUTJadjTeNhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756254594; c=relaxed/simple;
	bh=yAbJtRfInZqtSJZXtpg6o6j5RnVCRi/+MSvLK/Kzta4=;
	h=To:Subject:From:Message-Id:Date; b=nOY620H/B9QkpwZfYPT+XfTfOCwW7YpOzUtBOSoLjhrtUUOtEool2b+QX5FMIQ7psGu8oQyO+wLaBh/+6jywG0LV11E/TwPwVGq+cbKVipNyMdrzJ/9oWlRel3ofLZ3gYz/J6LIgJ/DuNkl2W5lWIGSwmXOurLRokv+jfRnit5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uThSnaun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uThSnaun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4652C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756254593;
	bh=yAbJtRfInZqtSJZXtpg6o6j5RnVCRi/+MSvLK/Kzta4=;
	h=To:Subject:From:Date:From;
	b=uThSnaunQNgKqUMWjj5n/flR/e7O9y7gj49kCWtdXMW6Cz3bZlGihImqkhE8wcFVu
	 MTbMMcJuXnq+jQRz/rwtIn/M5srdk9Iedl5ndOjrj3wPjvkKrNLQFe69k1Io0X2SOj
	 krky4Z+5OdNIdjrxc8isR4eHolVdA28CvClfgHZw/SZr59eVl7yLQVaRFYK/4CjeG7
	 kJ04k7natD2zdpPX8uzVRTsBhDkcODxg4/RlxZuXFD1mmZCCrMpNBET+ODUHBIcMmY
	 RKSbhLY5H2tSzGVofcuYx3kH3PHmHNIaXosHH9BR9dbPPCQKsNY75pIM77AJ/9jvOJ
	 IioP1jhNT5ntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90660CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625459358.16085.4018296229054102372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cf8927d7a7dfc7181c26f4a3b3c50f4282450011068c17ab59bbb58c95e2bb
Date: Wed, 27 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756254593
