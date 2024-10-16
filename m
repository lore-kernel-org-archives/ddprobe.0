Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BED1097B
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729040154; cv=none; b=R6+RcEd8pabmLhPafVJsi4xYa0+o+MJY5cWwcH8HXrHhMk/WXO/fxgmkQvUsJr+C/E88hbvJi6MSNg/NPqP+D6Abnt5qomaZrQ30U3lGa3Wu8StIcpv2gXlWsBBsiYaaOSDM6g1nSGZp1RSBUhK04zhWH77iLBdldSCzJSSCGnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729040154; c=relaxed/simple;
	bh=cEJGPa9F/G3LSxE3XXNvVrtyQ3M/NEKY10fMWibSJmg=;
	h=To:Subject:From:Message-Id:Date; b=HEcMBVBvzQeTkUN6dHOvDSWuWHNKmlP0dydonjFSpP/ZITd5LnmPJQXhOjVbu6KY/wKNOn8LKUs/RKV50Ip7D6CZpLJlHnFXyQ1NFkgKwHSOR6LDupDe5MmbXmQdqjzRe7aKmD7DU+L0Z6fxyd+QmgpnXPHh0NEjBkCbBQUMWkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J76GRe6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J76GRe6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A891FC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729040153;
	bh=cEJGPa9F/G3LSxE3XXNvVrtyQ3M/NEKY10fMWibSJmg=;
	h=To:Subject:From:Date:From;
	b=J76GRe6KnJ0/ur572g2sOcBexfLXdp51sr4nzvwICih10DjIJxvA0uBoDmwPVREjq
	 EBad7HH7j5tbpzwC19+9LGNWB15P+sDCiRFzqzQRpQDaQZrO2PUBygKVUldMp0zdLi
	 gozaBNGfTn+ZYGuxCJoRWYwVbJ8ewfDXG6qsiMqLerKRqgBL4l4Y1AJuiqCl4TnTq4
	 AjEuanQm2eQgvk1wBEhCR4g7VhI6AoIQl1fmomRPrh18iD0t2+qRLsGYl9SAmGAUBu
	 gG8N+/l7IgLxC9UPRRkM664oSGRoAZ8tespnK7SfD0k+6kdFuJA6bnKry6Ge5xfH1D
	 9r+uH9Ji+3W5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9730FD20688
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904015359.10034.15198384346534542630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec6b214936f11c99792b0bf9fd0e60c7c160db4622369e38bce50b145c87588
Date: Wed, 16 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729040153
