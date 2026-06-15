Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281D43BED70
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781508994; cv=none; b=eszWSCFZIFcNFPL5RR3/20P8GyvgxQctKXcepf2WPSb++goRWBHDGdaVG0d8ZAr7SQvw6rWLikBPXtEvMCWLw5C5uyUp5yFSpNvzd9XzcEL2oL2PuBy69UB5Vw+YXll2vITpz62xNa91lrXOc3XPbocpwKUrqcRsMFEeBFxIIwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781508994; c=relaxed/simple;
	bh=J69r+Z8Hnva2GG9riUdwjxlFndt1ftBmtzsQvA5VpqU=;
	h=To:Subject:From:Message-Id:Date; b=JfIWSRAsQKKlsTb1jq5ydE+Grsu4OrcCiF04QaTDl5y2VvqiEMPDzYo18ckXrvTx6wHCMI5EtKw4Oykt8Uq2zwqkmsjiStuO2nT5LAUJsuCRVkRBtsbf4c9z/xTq+l7RwbZRd4Foz4FjKlAH/oJKLGgBzh+m/0U2JyEG1Qrclbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSIqpM8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSIqpM8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24D6C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781508993;
	bh=J69r+Z8Hnva2GG9riUdwjxlFndt1ftBmtzsQvA5VpqU=;
	h=To:Subject:From:Date:From;
	b=GSIqpM8a/oH7L1NurVoongT9vqWCVnZSZAbgCfaVXM2wS2BL3DBn7c5i/mRUih2lW
	 os7GnH1g63YvcttTa3dWFClXtYA6mdbkctKciS1PuV93UrUCJlK0gGTIrowCatPzCp
	 FmVAS68vvd6RXNsGaGlxI7te72meBOnuQhhhxUA/D3eHWHaxnFVTi+Vk0gav3HMbNE
	 5TFJ5F5PicYZ4KmO1VYRDHSvQhA17Dd6E639KZGxrwxxokAgb4DhQh8ZcrkpVgjcTr
	 2KZqN+ARxfC5TkU3q0U8iaPu9AkUHmB2gPuTL68poGr7ncPrm2nYZXJo6Q4jg6il58
	 N+iTrFhez2WVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BFACD98D6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150899373.2378.11955180914370688886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d988a01f729874938566343f680d3cdbf7552d11a1ebaa25b6fdd1e7e1f23b6
Date: Mon, 15 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781508993
