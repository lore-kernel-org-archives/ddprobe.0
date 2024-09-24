Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7801B85CA
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727141154; cv=none; b=lVgLC9T44qXR9s+gdL+jT8FodZDaJNbNeWypACAIsGhY/xMoDEfFVrCDngHnwQrogJxzjeUaRVJjjspAqF+MJM6ZJ8WfaCzckYPCc9Rfw+MWRR7WDSyM+/dPeeju9f/9QxwGVw6HYB8LADxPTbRPX+fzC9bvwPFwdhpJ014uuqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727141154; c=relaxed/simple;
	bh=qmvqW6iCIAn5IJxAUfsdK08ETSCVTJdJuzXXoXzZAJQ=;
	h=To:Subject:From:Message-Id:Date; b=eSA+I6SNR7i6J8jLksQgtBIvNGfyCvPh4Nt0w50nXE21BHVPDK7WNuOAGW8n4MyVyek/s3xBL1/85UFoYX0azUXGSRW30zF7+6osEaWUuBRAjB1YSiAHmhrnXd9/miZZWLPWblJ8oQ95wtGxR4akUNfJU/bbVEHP5sbLdwxIJxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEoHtoyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEoHtoyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EF4C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727141153;
	bh=qmvqW6iCIAn5IJxAUfsdK08ETSCVTJdJuzXXoXzZAJQ=;
	h=To:Subject:From:Date:From;
	b=BEoHtoyfOYr9uhKE1QnJb+4NIxm1+M6Sbz3s7IqA8luArrpNMZp/JF9xcdubkwSoj
	 SLV96aHeOBSU2Seb8/L/uTNRkvOOLE/tFRgcwJxDRBEQY3dX+PrV/4Vu8qhYI4/pS3
	 xsIqQ3tAAJyIG0hS8DnzcqNf+vHGf6UAcuPtY/H2mLrOL3XfAzlDr5qyFhP+2zHyGN
	 +0bQXSqNOr8JOYMKqrutISCYztwBtlQKZo7HV+3DVrfiV1h2ttQ1yHgWh76uMj56XR
	 UZ/u/ndCiLFEAwv5Tuw5D+Zlu3p0x70qYLUoW6h5JjHD8gVzGqoKviLBbz1MZKS18u
	 X3OrZ2kEPuyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C87FCF9C5B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172714115360.6600.8622714111619103115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fcbba4ffa63f7ea33c4ba863de9ff352f3dd3b4d0d3fbd21dde1c6433d46dd
Date: Tue, 24 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727141153
