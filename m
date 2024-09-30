Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD7423BE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727676954; cv=none; b=SLLqQiwN2NuN5GTGpJzp+ZIvr1VOEa3k01TEhL9FpWOgSkCHhpwyHhuKhxZy9RBK9FfAIkwzpH6SpffDftq4tTeFQFAPMo68RmD2cwdLn7PqUK4XqYUCQIQ9F9C0Qm3FY5Na4tIhcRrgkwJmFwhPHE86Zxx22XSA8pPGuCu+81E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727676954; c=relaxed/simple;
	bh=8gG/lhp71zzqilKBURrlX7tNq90jZlKZNA9lvl+EzmI=;
	h=To:Subject:From:Message-Id:Date; b=Kkbmi5cAA1q+Yv7QEQL9rnoYHrlrFe/f8atuzV9kpV1/OKnnApSryRCUv4lzS373EHhmJtHJh1t6T5oo4E1K2OPMWoIT9We33Zl4OawN8X7nQJELtCY25qznyEKU+o/tRaJTTSSdj9XkdYsfFUtNHA2cKWq6YGKI9wiXnKzrM4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI9b0ICr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI9b0ICr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA9AC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727676953;
	bh=8gG/lhp71zzqilKBURrlX7tNq90jZlKZNA9lvl+EzmI=;
	h=To:Subject:From:Date:From;
	b=oI9b0ICr2U8KsoeM+YjCT8ByPHWRpcuQG1wNKotJ0gaUHUt8VxkGcZy4WTYEDOMVU
	 ayPC4QsfydUwi2pHKAc+A4JNBtAerTxJfHwx3WKExcCzlESIvZb2SldJkSIG/0sPqG
	 Yv/FW+GUjDSFNcgeyG+PcBm5jieGAW6CIzamCQjv+tKFVuVDqUwAhzCQ4a351eY6nN
	 6qifAsCCRJ8fH+CDMLb1DrspRpuDsA49ZD5Ud3u95w1LgQ8EoD8KtlHoNom9Bw7Kjl
	 nJimRHqhdFRkQUJ7bknwp/oRyIz8JXRxsIDANbQTnMNUqEX/24M77BTxmOc07olk2w
	 FwW5mqJ50/SeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94359CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767695359.20783.10936930426433894129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f014edb36f76cb0a90888a603cc5f279e4cb8f2ebaa6458c5d350b4dcdad252d
Date: Mon, 30 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727676953
