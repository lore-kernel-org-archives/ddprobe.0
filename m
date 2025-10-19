Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2801C1A3166
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760848794; cv=none; b=eWmOSu4VqFTCcBP4JuqiKGTIz31N8Hu6+uR5hPhMopCj0FQIZhGp48R3ILvYlSHHsN06Rtor9to1CvnYSGzGrCGPbA14bG+SpXqvMuKN/RZP7n272dV8H0cA0AdCVsVZGtP5mYu3Iq29mA2ppLx0+a+dvD1mYjAcXTZUURTaSv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760848794; c=relaxed/simple;
	bh=OQbBkqhBrAH9WX69YuKLKpG52WicHn+wnixTx+qoaHY=;
	h=To:Subject:From:Message-Id:Date; b=j8AQMZtZyuMIV9OeKrYn3eDNHMpV1w10b77Dg6EYXaB7LgIf/9P+DJ6nZQVHvm+QeHiTZ5+5tsaqdnKXbC+jKaf8KIez4xsDofk6qBQO63rdwMnO6qSNluG2q6ugOfWBN5xLDn6a3Iz7vbU0utZVK52VmC/ecFMwTbAOCxx4XBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Emt6i6is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Emt6i6is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE2CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760848793;
	bh=OQbBkqhBrAH9WX69YuKLKpG52WicHn+wnixTx+qoaHY=;
	h=To:Subject:From:Date:From;
	b=Emt6i6isFxstulto+tOCsKrfpZMPgpJH5gMPT3Q2kYTiPiAn+yms9aDs7voBYyir2
	 3LKo+pzpCXG1LbB56sr50WjjIika8eFZDaOZlfbtNTAJnc0tnL9Si4ySBQMhJcX2xg
	 aVZ6ZHCSeNX9ob6mZMND8Z3W9kIAQzys5gw6vVmUb4Yy7o6DQcIZXu7yTBOs8ZGdGL
	 OoyRNkKZxFD7c7S8k1OrZojcP3NMN0+aPqthJsHpLFir2w2Y4ezCzWAIT0nGJfVcp/
	 pxZ/vP+NyPz99DnZpBIqPE3SSZWFLW1VYkVSkEpLlpYAYjPbfM6FLMdVudWGEUlV2D
	 vdrjloHelYzdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B64CCD1AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084879360.14612.5619968830107293096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5c7f85925b58a45dfa4d84cadc58e6c1e55f1c4a442174adf28300dda21492
Date: Sun, 19 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760848793
