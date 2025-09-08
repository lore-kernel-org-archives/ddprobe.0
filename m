Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C04030CD80
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757343594; cv=none; b=Cf92kh4kZwLJTsbkMiF+Wk1vaNQRjRFcGHzVJ+fleU9LQeG9P0iC/dyjzLvfH2o1ECdXq5DL/r4n0OWmT/0L0vOFBWXo/4a18FPrQZkhMouncpfd2fOr8/oO3NT1Yjt6vtypZeHjbtOK3KtZIGcUL940UtsvdGDbTL5ITVI2rMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757343594; c=relaxed/simple;
	bh=gZ2EsnPZtiYz0GeEV/mJR4U7I5DT62JhbmjNDeqDH7A=;
	h=To:Subject:From:Message-Id:Date; b=EePCn2OCpr8ybKj+FmNbga8I/6IkMgG7+yfJ0dmKfNo4/p/fQzbZbYJPL9Z2/hzuF0iHvFx1hugYoUElqqPi8uA88tSG1D9v/VSbA1bANCq+V3A1P5iEOezGOOiqBBzmCYyuC6bPw/XFhlz1DxKtGgMgIJ96mOOMIUzAdNHHQjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJIdo57y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJIdo57y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A845EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757343593;
	bh=gZ2EsnPZtiYz0GeEV/mJR4U7I5DT62JhbmjNDeqDH7A=;
	h=To:Subject:From:Date:From;
	b=aJIdo57y4dOTrBXbkhhy1puXY5+4hxSwruo7o8iAGkR+Obp27keehmmXh+Np4rD6I
	 b3+nBjz/+B/BvPwUvo5oNgA1HwDqj5NGB6+bh5D0NsXri7nXnF01YPqRak2D7W5nMO
	 qfwuWgCWXlja90zrmTIw8uw0X4OfG/WJBvia5daPgFE74wEbAyhwfUZyk5CLAvWIj7
	 TXPJAgaSWsFCD6fpbIBj1TcE6V8QpXbU8LJ8swKuv4u1mbbtLHj9PXD+1ccRyhqqAB
	 oMhKSlxGheniF1GqAWaNVTlMI3dje1W7UmBZQPgGKlDTnGN7hxJyuVf15cCy5IYkyw
	 Etfuv1259842g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983A2CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734359361.30289.14672230116108747261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c236b8abec690a7c65f80202b4c4960984b282a90a6c54e7dd4f73c4e05cec6
Date: Mon, 08 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757343593
