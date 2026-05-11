Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535A918C2C
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778467234; cv=none; b=GU70KgtiT+tMCmvEKMaAivdadQ56WkRhvNTTbToQd5rFHchdLPVX1pSlHXS/dBI5ZYagxachoeXhnp2a4XTOoD9SzrksnYal0UZrcd4Yglx4oqr6pnTSsHHaCog+fkYt7feUym2+uiEP+d348RKfcVbf4gjJsortSX1mDf7TRgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778467234; c=relaxed/simple;
	bh=ECjEMPXG+MW/Vc8QR8pa55N8CsAh45sDcC79AiCF7NQ=;
	h=To:Subject:From:Message-Id:Date; b=LuJOS5LsYRJs4EMM94itylYG62cEwvIccCKD9u4kltVXd3QuYL6IgsSyCEHk+VtSdutfRJPkAPbdmjZBW5NCHsCgaSafX4BjAKNp4JTT2dR079aLQFGXM8o/yAHm4o/iwAtV/Sw5I81Y1rgml0OlNl8x6GtgV3g8rCWL5sY9IuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXsAclz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXsAclz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44FEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778467233;
	bh=ECjEMPXG+MW/Vc8QR8pa55N8CsAh45sDcC79AiCF7NQ=;
	h=To:Subject:From:Date:From;
	b=SXsAclz1Zfm3M2hzknLx2f0t+sgRXGpgQ/na/FgFINNgCcZ4zn1JieHLx+6sihVfq
	 ZmHPtSTLtR/ZamKO8u78i4H859j+0ZpGg/sNNzGKzZVL7FbpEL8JhMq8YYbAn4tSjL
	 VL8f4gP+u+t87+UgO8GuUMNJH6LE0sovIWcnyOVqp0I8jQiFIiWc+/U0CXVyO4yivo
	 iHXDwXUsgn9bDt8G9eggQCK6bjnP2rhb+A7J36NUCqjZcU+7hD05ncFFU6UA1o42cj
	 iKu3nUu20PNqMpfmkfEpaKRLUkwm9hvJ2mFgvcvbrJ0Hd8aJGkZ0WIIS1bk/D6GqOM
	 uJEv6kzy8W1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A02CD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846723374.13324.16013460290917346308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b8b62ec84f7490a47c588acbb57639b9b675b2b0f88d13e83a243723b4cfed
Date: Mon, 11 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778467233
