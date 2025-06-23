Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF5E1EF394
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750663194; cv=none; b=CHkjoDB+DekvwKey1QI/Uj/Gznh0Vm4nOY9YMnhIGk86i9yeaXkcxasulcWcMOeweJt1TxCRwNxpH85hTarpgO8ATJjFD3bVo7Mh7WY+kItxFAzGrHGoB+sSmtj0aVLrcF+xdu59lCzbeHPIJOVjxHiTOUtzPFWb1l/I0xg/kq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750663194; c=relaxed/simple;
	bh=cUp/YtKwfKLY4s/vf7vcu+9MWCGPVlC7e/o+jI+0C20=;
	h=To:Subject:From:Message-Id:Date; b=VlGTH49ZveWqMc7xCA5oa8sH7rglbOepe+Nc3wgyEjkoxbllQOb5sxPLgf8I4z79FfzEsqAZhv1wuBcrt/DEunQ2e/oXRKirhDm0sSSwH1C67muli6UfkcZxjgqlQAHoYexRVwYyKbDfDLIREBaYSuXp57CkIQV4DxKqvW/VdlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRc1VrCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRc1VrCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE09C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750663193;
	bh=cUp/YtKwfKLY4s/vf7vcu+9MWCGPVlC7e/o+jI+0C20=;
	h=To:Subject:From:Date:From;
	b=IRc1VrCuyICUeH/CYqF9ZMPGkUkwe4MOzQuNJAqeEw4J+EbVqemQ825FnV9FUTpjJ
	 pAOKExZ+tcz4mhZkUNUOPvCM5r+garLB0+LISzVvtiYPGAws/jbN8Ek9bF1bdLcilj
	 uELDRwFFxmDlAoCrc6WM/8rv2dH3kn2DKv1df2fl64xeeTWQC6DCHCFesv8GbiXyQl
	 YaDZKiFsyzGSMmKqqtFzfoEWIHFw7/cTHGBY2A4sV3qEtArAXcSJ9pJQ1nb6uSAsFO
	 a/lXwPKkmusRJQiSv4fcHXnN5abxp7+smjp9iyKFLGqNZtrGKTN/I2CVDZuApliHND
	 lYDnTS6hs848Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4DC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066319357.12966.5499914152723716685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5454b00a0bfbd19a29390464f362442edc622d683027ef5319c3633ae3aa9807
Date: Mon, 23 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750663193
