Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115C935CB7F
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763477514; cv=none; b=U1ZJW3L9EsiNn14qoNoUdL36F1T+Xo2ljQOHekQPdEqh5wnSEOQHwxvBHhbjsPL8NBDfNlIPStTzTpVE1yuJhfy4JAsvaF78B/Zqc/uKU0obdDfWrpay4r/pp1dOZvym3f6aX7GfS+b3u2TZuxvqKycdoKCI5CTulvh+V2X3Wmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763477514; c=relaxed/simple;
	bh=Zsa24gN0LPeF+ZL4droAU7Q1OjF+xe9cKolpTxMKoP0=;
	h=To:Subject:From:Message-Id:Date; b=nE/nek5nUIna5ou1IyzAwJcn9pq9lGwgzMG5lOhO6NExAzzrdi6rrhbcKfQ8fUgcXSsmzbjA+8qCcPirJXzBW0h9nPecBamefI5erbcika0ePBsENe3kx+RDqi23AlkvFkxDmFtM2vM8xB2aAJNhstGyC4Dn5gj6WGjjJt4SaSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZhprRUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZhprRUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E3C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763477513;
	bh=Zsa24gN0LPeF+ZL4droAU7Q1OjF+xe9cKolpTxMKoP0=;
	h=To:Subject:From:Date:From;
	b=UZhprRUp90JFWpKCgQjCEeu8aSMlqllUq8x1Aj4iaqtcR03679iW5ljCv6kfRkWPA
	 BXyoVYQ19keSEIVdp3KIDfara57iVS+ySMfJ2WAo/s+pWUQR89BW7eM7e7z0bsXLdJ
	 sJDsp2hpvEjnRL3I6VXywRKItQitLzE3ozya5yqSOMffSd2vfjvyl1vX4KWJSRS4+a
	 cM02uVCFSje/cJ534jD5wPCV9De7ECLPM87ZrXhDTHatd3w4nwq/lomVgAwaGn1Twh
	 /IzWPn1c/dt0FSjuV0nFaseSAHsP22L3dDp1etNR3539ulRvnIxK8T6lmHKTdawToi
	 ovJXMVf/91diQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A0ECEDDA4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347751361.18000.12666712423774234641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec7c00e89cdecfe49c5e666d01ac952dccaccf598944847489393728aa975ea
Date: Tue, 18 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763477513
