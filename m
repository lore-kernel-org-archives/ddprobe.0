Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770FF3002CF
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791951634; cv=none; b=UiO2RLiMn1Uvy540MBcHQnZk28X9SDrQ8LPQn7ejHxKxzo6nhOYsbbpvHpWCdz/5J66bxqHDe8foJv84Y29/a35Rfo6GX5Jpxl1MNBO+B6WkSuF8i7gf/BJiF784/sjJe7ibnsdSYCXxZvNw1KVSFlAMo/gYeCc5wTlB9LBNsWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791951634; c=relaxed/simple;
	bh=MLF2tuYgyBLzCoHMi8vZzwBvHN2/JFkmcMns44+6ED4=;
	h=To:Subject:From:Message-Id:Date; b=AOHp72gJlll0kvad/mAgseily/fi3+Hy2EGV5rpMrILVYiZHe0cDPoXlrLniL4vp/7NPXfO0cMgtXkWRmjjElBJHVDJs19wv44eJQ69A9ftsc0spmXR/jvQm3H/0XLMrm0utrk96T8d6P0U7JnG9Vv+vsp2mJ7hX+W5vMDUvlIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deTxrwXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deTxrwXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9AFAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791951633;
	bh=MLF2tuYgyBLzCoHMi8vZzwBvHN2/JFkmcMns44+6ED4=;
	h=To:Subject:From:Date:From;
	b=deTxrwXmw/FmXD839dZgM32elp9VQHriRLf62yQykP+WWmkI4CsEXezICdnv/WvWN
	 vpnIuA+WbwLLPx6zWbjF2SwvHQhWQJom7K4YuhXAg55ac3qMo1l8BGIAwhqCaBQfEl
	 jCNjX26JNly1QbeRayBy8gIwPgHbwaACneWIufKnP7HXFNR8fqfwIZLKDXk80QYxgt
	 8Kk/nCcR+qpK6VI9una+SSBU+M07p/eNTn9Z00iykKEdVopG0TJsRfSeJkuDy57jKX
	 K18N8/E2WH3bLH90/QBf6WTzinpeKw0J7QiS3wEcRCx6dF72PNH0WJJcL3OE+pzIm7
	 OS4A2vte7vaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C02CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195163374.9591.16051338003071681457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf274b9c98612227c758ee64e51ec7c5d39eaf5a0918cc6fd383cb1f2850637
Date: Wed, 14 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791951633
