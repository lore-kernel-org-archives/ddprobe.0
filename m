Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480F02C21F0
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785795034; cv=none; b=ZJzy7jyHr2YMLVXUq6BHcWKfKwLICohDtaevcjagM94WNuFdWSydsNy/6mp/s4IGdKqV2FBFramTQ0D+4dHvIGYd7zNfyHm0EFZKrtot86BejQhATyvLNHjjfeeZKt5QMne5+rVcR6oAhQ0aMIDqPOsha702egbjHmi8OjwaB0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785795034; c=relaxed/simple;
	bh=Q0tAd2UcIvVzvIpcXBxbELVLGtL9HSPmFEuh5rikwV4=;
	h=To:Subject:From:Message-Id:Date; b=h6Oa1opsznN/kCBjQRQLcgtU6XwbiqLdRNRl9h4LRfxBGOr5W3jkrRcr7CKfK7jigH7xjq0gMqM0m+77Vc3yyA6zBJocGn/1T1btK0DRJdNkwK8W1pdB5W3ydJNUzOov84tw3mgauHStBCAFhcMmejarZm6u4MWJyoPt0gke1Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTQyAn34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTQyAn34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE05AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785795033;
	bh=Q0tAd2UcIvVzvIpcXBxbELVLGtL9HSPmFEuh5rikwV4=;
	h=To:Subject:From:Date:From;
	b=FTQyAn34/8R40XS5pxvxYSigPNBAWzM2HNsy8Fb7er7Z8mDNEnEuEMDFVJAIJ9d5n
	 OUYNyUJtumQUKDy1y4/i+TqBXEp66jU1d356IVwREQfyuheCrPAsPo1Qs+30UHt8LX
	 JIpNrNJZURq2Zw0A+0Zsb2mrRSlha+ynV0O3kTfrN8qhldSI9gm8Rb3eMr9k9FlbEG
	 kkpmaqyU4uM5Q8Epxu7hl+ZmA3v+zBhbyK+Gv127kSH07s0nVc2LY4siqk2ZxNQcdP
	 AutHGri6ovLxpds3JRV32IMTXRHnDwdbMviM928z/otspRkURxFNOliCSpF45Kvzag
	 sw/QjX5cZiuXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95C1C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579503368.5620.9492643711405142591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a1574ac4d9f3b3094843f5c7fcec597e8adc3ff1fed3e43abd9c32a3ec5d49
Date: Mon, 03 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785795033
