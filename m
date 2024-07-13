Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654C38BFF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720879223; cv=none; b=A9eC7N3ePTS3Eob8DvVa03vLT6pg17Shk2cJVHkTr4M/yyUIj8SMDy8qxVoRoPSB/bsRlyQD3RejPZTBzxG4CkV7rWPrijbmBMuyzRzan6qgmIrKL6ukFjbYdryG1ofo7/Q5Hu7mpfOCwkIoJQt9r0TKzPDOsPI/0bOafa86BpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720879223; c=relaxed/simple;
	bh=COejC3uvhTZxXjHppo/Bi4vXularPjBV4tSA2FPTdaI=;
	h=To:Subject:From:Message-Id:Date; b=VYsN9Pl8hDxbtcqVguazitVGtm1WBiJ/2/WB2dFYIlme0p9OHd30RcEiYwfeXagHeZDCGtTh1OFK+my9O+KBVBfrdM2iFK1NNx1nYBs4evr+4Am67YjnV7CSUfAKsuFOzlRHu2IS6hI7k7GI4kCDc6If+0k3n3Ysklufee91+yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLKypbgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLKypbgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14F6C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720879222;
	bh=COejC3uvhTZxXjHppo/Bi4vXularPjBV4tSA2FPTdaI=;
	h=To:Subject:From:Date:From;
	b=VLKypbgBzbRdKyyl3HhCgJaxGLutx9r80umM5+DuHbUv9HBXANUzwlr20Ecq73g56
	 ZkbmHVF1wIUtZ1/jhbuzxqx3BWRR31dGvOlSw3UF8ou6rrN5zFLmzsVWBDlUMSqyFk
	 56LxUlqB2gE+bezOVm0PNF22txS6S8HOrB+nHntsJVTFNziHTFLHVUqRtAkqsm2IsX
	 JBWcCvKxgEp7g2wVhMyrxS+EI/EXljMlC4IVlTb79goi0E5oDHE3JKM3exC1jfivJh
	 nOLW5bH23LUnNnGrOsCYmap/HZxUW36oho8CwD//+nn1sZRJfvm8uUtTW0i182VfNh
	 rks7qVd94RX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0B3C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087922277.5337.3892233779043672528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c78ae8fc9046c46fd56c65ba2a784f5a5c9b1a36d25624df4ab7e337eb1e86
Date: Sat, 13 Jul 2024 14:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720879222
